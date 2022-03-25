// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../presentation/pages/chat_page.dart' as _i2;
import '../../presentation/pages/home_page.dart' as _i1;
import '../../presentation/pages/space_page.dart' as _i4;
import '../../presentation/pages/spaces_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ChatRoute.name: (routeData) {
      final args =
          routeData.argsAs<ChatRouteArgs>(orElse: () => const ChatRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ChatPage(key: args.key));
    },
    SpacesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SpacesPage());
    },
    SpaceRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SpacePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'spaces',
              fullMatch: true),
          _i5.RouteConfig(SpacesRoute.name,
              path: 'spaces', parent: HomeRoute.name),
          _i5.RouteConfig(SpaceRoute.name,
              path: 'space', parent: HomeRoute.name)
        ]),
        _i5.RouteConfig(ChatRoute.name, path: '/chat')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i5.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({_i6.Key? key})
      : super(ChatRoute.name, path: '/chat', args: ChatRouteArgs(key: key));

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SpacesPage]
class SpacesRoute extends _i5.PageRouteInfo<void> {
  const SpacesRoute() : super(SpacesRoute.name, path: 'spaces');

  static const String name = 'SpacesRoute';
}

/// generated route for
/// [_i4.SpacePage]
class SpaceRoute extends _i5.PageRouteInfo<void> {
  const SpaceRoute() : super(SpaceRoute.name, path: 'space');

  static const String name = 'SpaceRoute';
}
