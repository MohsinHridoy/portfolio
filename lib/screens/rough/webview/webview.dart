// import 'dart:math';
// import 'dart:html';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
//
// class WebViewPage extends StatefulWidget {
//   final String url;
//   final String title;
//
//   WebViewPage(this.url, this.title);
//
//   @override
//   WebViewPageState createState() =>
//       WebViewPageState(this.url, this.title);
// }
//
// class WebViewPageState extends State<WebViewPage> {
//   final String url;
//   final String title;
//
//   WebViewPageState(this.url, this.title);
//
//   @override
//   void initState() {
//     super.initState();
//     // Enable hybrid composition.
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(this.title),
//         ),
//         body: Column(children: [
//           Expanded(
//               child: WebView(
//                   initialUrl: this.url,
//                   javascriptMode: JavascriptMode.unrestricted
//               )
//           )
//         ])
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:untitled1/screens/rough/webview/Menu.dart';
import 'package:untitled1/screens/rough/webview/NavigationControls.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// #docregion platform_imports
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
//
// class WebView1 extends StatefulWidget {
//   const WebView1({super.key});
//
//   @override
//   State<WebView1> createState() => _WebViewState();
// }
//
// class _WebViewState extends State<WebView1> {
//   late final WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // #docregion platform_features
//     late final PlatformWebViewControllerCreationParams params;
//     if (WebViewPlatform.instance is WebKitWebViewPlatform) {
//       params = WebKitWebViewControllerCreationParams(
//         allowsInlineMediaPlayback: true,
//         mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
//       );
//     } else {
//       params = const PlatformWebViewControllerCreationParams();
//     }
//
//     final WebViewController controller =
//         WebViewController.fromPlatformCreationParams(params);
//     // #enddocregion platform_features
//
//     controller
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             debugPrint('WebView is loading (progress : $progress%)');
//           },
//           onPageStarted: (String url) {
//             debugPrint('Page started loading: $url');
//           },
//           onPageFinished: (String url) {
//             debugPrint('Page finished loading: $url');
//           },
//           onWebResourceError: (WebResourceError error) {
//             debugPrint('''
// Page resource error:
//   code: ${error.errorCode}
//   description: ${error.description}
//   errorType: ${error.errorType}
//   isForMainFrame: ${error.isForMainFrame}
//           ''');
//           },
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               debugPrint('blocking navigation to ${request.url}');
//               return NavigationDecision.prevent;
//             }
//             debugPrint('allowing navigation to ${request.url}');
//             return NavigationDecision.navigate;
//           },
//           onUrlChange: (UrlChange change) {
//             debugPrint('url change to ${change.url}');
//           },
//         ),
//       )
//       ..addJavaScriptChannel(
//         'Toaster',
//         onMessageReceived: (JavaScriptMessage message) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(message.message)),
//           );
//         },
//       )
//       ..loadRequest(Uri.parse('https://flutter.dev'));
//
//     // #docregion platform_features
//     if (controller.platform is AndroidWebViewController) {
//       AndroidWebViewController.enableDebugging(true);
//       (controller.platform as AndroidWebViewController)
//           .setMediaPlaybackRequiresUserGesture(false);
//     }
//     // #enddocregion platform_features
//
//     _controller = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WebViewWidget(
//         controller: _controller,
//         // initialUrl: 'https://www.google.com'
//       ),
//     );
//     ();
//   }
// }

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  // Add from here...
    WebViewController? controller1;
  final TextEditingController _textController = TextEditingController();
  Uri? initialUri;
  Uri? uri;

  @override
  void initState() {
    super.initState();
    controller1 = WebViewController()
      ..loadRequest(
        initialUri=Uri.parse('https://www.google.com/'),
      );
  }
  // ...to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        // Add from here...
        actions: [
          NavigationControls(controller: controller1!),
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Enter Url',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (String value) {
                // Handle the submitted text
                uri = Uri.parse('https://www.google.com/search?q=$value');
                setState(() {
                  controller1 = WebViewController()
                    ..loadRequest(
                      Uri.parse('https://www.google.com/search?q=$value')!,
                    );
                });

              },
            ),
          ),
          Menu(controller: controller1!),               // ADD

        ],
        // ...to here.
      ),
      body: WebViewStack(controller: controller1!),       // MODIFY
    );
  }
}










class WebViewStack extends StatefulWidget {
  const WebViewStack({required this.controller, super.key}); // MODIFY

  final WebViewController controller;                        // ADD

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    widget.controller
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          onNavigationRequest: (navigation) {
            final host = Uri.parse(navigation.url).host;
            if (host.contains('youtube.com')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Blocking navigation to $host',
                  ),
                ),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'SnackBar',
        onMessageReceived: (message) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message.message)));
        },
      );
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: widget.controller,                     // MODIFY
        ),
        if (loadingPercentage < 100)
          // LinearProgressIndicator(
          //   value: loadingPercentage / 100.0,
          // ),
          Positioned(
            top:200,
            left: 160,
            child: MyCircularProgressBar(
              loadingPercentage: loadingPercentage / 100.0,
            ),
          ),
      ],
    );
  }
}



class MyCircularProgressBar extends StatefulWidget {
  final double loadingPercentage;

  const MyCircularProgressBar({required this.loadingPercentage});

  @override
  _MyCircularProgressBarState createState() => _MyCircularProgressBarState();
}

class _MyCircularProgressBarState extends State<MyCircularProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          value: widget.loadingPercentage,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          backgroundColor: Colors.grey,
          strokeWidth: 15.0,
        ),
        SizedBox(height: 20.0),
        Text(
          '${(widget.loadingPercentage * 100).toInt()}%',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}





