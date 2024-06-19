import 'package:diginova/routes/app_route_constant.dart';
import 'package:diginova/screens/AttachedFiles.dart';
import 'package:diginova/screens/DesignTeam.dart';
import 'package:diginova/screens/DocumentListScreen.dart';
import 'package:diginova/screens/DocumentScreen.dart';
import 'package:diginova/screens/InventoryScreen.dart';
import 'package:diginova/screens/MyHomeScreen.dart';
import 'package:diginova/screens/NotificationScreen.dart';
import 'package:diginova/screens/auth/ForgetPassword.dart';
import 'package:diginova/screens/auth/LoginScreen.dart';
import 'package:diginova/screens/auth/OTPScreen.dart';
import 'package:diginova/screens/chat/ChatScreen.dart';
import 'package:diginova/screens/chat/RecentChatScreen.dart';
import 'package:diginova/screens/digician/OnboardingScreen.dart';
import 'package:diginova/screens/ServiceTeam.dart';
import 'package:diginova/screens/auth/SignUpScreen.dart';
import 'package:diginova/screens/SplashScreen.dart';
import 'package:diginova/screens/home/Calender.dart';
import 'package:diginova/screens/home/Home.dart';
import 'package:diginova/screens/home/ProfilePage.dart';
import 'package:diginova/screens/home/SearchScreen.dart';
import 'package:diginova/screens/profile/EditProfile.dart';
import 'package:diginova/screens/profile/HelpScreen.dart';
import 'package:diginova/screens/profile/PrivacyPolicy.dart';
import 'package:diginova/screens/profile/Security.dart';
import 'package:diginova/screens/task/PriorityTask.dart';
import 'package:diginova/screens/task/TaskScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/', // Set initial route
    routes: [
      GoRoute(
        name: MyRouteConstants.splashScreenRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        name: 'onboarding',
        path: '/onboarding',
        pageBuilder: (context, state) {
          return MaterialPage(child: OnboardingScreen());
        },
      ),
      GoRoute(
        name: 'help',
        path: '/help',
        pageBuilder: (context, state) {
          return MaterialPage(child: HelpScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.signUpPageRouteName,
        path: '/signup',
        pageBuilder: (context, state) {
          return MaterialPage(child: SignUp());
        },
      ),
      GoRoute(
        name: MyRouteConstants.loginPageRouteName,
        path: '/login',
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.forgetPassowordPageRouteName,
        path: '/forget-p',
        pageBuilder: (context, state) {
          return MaterialPage(child: ForgetPassword());
        },
      ),
      GoRoute(
        name: MyRouteConstants.otpPageRouteName,
        path: '/otp',
        pageBuilder: (context, state) {
          return MaterialPage(child: OTPScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.myHomePageRouteName,
        path: '/myhome',
        pageBuilder: (context, state) {
          return MaterialPage(child: MyHomePage());
        },
      ),
      GoRoute(
        name: MyRouteConstants.notificationScreenRouteName,
        path: '/notification',
        pageBuilder: (context, state) {
          return MaterialPage(child: NotificationScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.homePageRouteName,
        path: '/home',
        pageBuilder: (context, state) {
          return MaterialPage(child: HomeP());
        },
      ),
      GoRoute(
        name: MyRouteConstants.calenderPageRouteName,
        path: '/calender',
        pageBuilder: (context, state) {
          return MaterialPage(child: Calender());
        },
      ),
      GoRoute(
        name: MyRouteConstants.messageScreenRouteName,
        path: '/message',
        pageBuilder: (context, state) {
          return MaterialPage(child: NotificationScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.profileScreenRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: ProfilePage());
        },
      ),
      GoRoute(
        name: MyRouteConstants.serviceTeamScreenRouteName,
        path: '/service',
        pageBuilder: (context, state) {
          return MaterialPage(child: ServiceTeamScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.designTeamScreenRouteName,
        path: '/design',
        pageBuilder: (context, state) {
          return MaterialPage(child: DesignTeamScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.recentChatScreenRouteName,
        path: '/recent-chat',
        pageBuilder: (context, state) {
          return MaterialPage(child: RecentChatScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.chatScreenRouteName,
        path: '/chat',
        pageBuilder: (context, state) {
          return MaterialPage(child: ChatScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.documentListPageRouteName,
        path: '/document-list',
        pageBuilder: (context, state) {
          return MaterialPage(child: DocumentListScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.documentScreenRouteName,
        path: '/document',
        pageBuilder: (context, state) {
          return MaterialPage(child: DocumentScreen());
        },
      ),

      GoRoute(
        name: MyRouteConstants.securityScreenRouteName,
        path: '/security',
        pageBuilder: (context, state) {
          return MaterialPage(child: Security());
        },
      ),
      GoRoute(
        name: MyRouteConstants.privacyPolicyScreenRouteName,
        path: '/privacy',
        pageBuilder: (context, state) {
          return MaterialPage(child: PrivacyPolicy());
        },
      ),
      GoRoute(
        name: MyRouteConstants.searchScreenRouteName,
        path: '/search',
        pageBuilder: (context, state) {
          return MaterialPage(child: SearchScreen());
        },
      ),
      // ),
      // GoRoute(
      //   name: 'calender',
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: Calender());
      //   },
      // ),
      // GoRoute(
      //   name: 'search',
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: SearchScreen());
      //   },
      // ),
      GoRoute(
        name: MyRouteConstants.taskScreenRouteName,
        path: '/task',
        pageBuilder: (context, state) {
          return MaterialPage(child: TaskScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.editProfileScreenRouteName,
        path: '/edit-profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: EditProfile());
        },
      ),
      GoRoute(
        name: MyRouteConstants.inventoryScreenRouteName,
        path: '/inventory',
        pageBuilder: (context, state) {
          return MaterialPage(child: InventoryScreen());
        },
      ),
      GoRoute(
        name: MyRouteConstants.attachedFileScreenRouteName,
        path: '/files',
        pageBuilder: (context, state) {
          return MaterialPage(child: AttachedFiles());
        },
      ),
      // GoRoute(
      //   name: 'files',
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: DesignTeamScreen());
      //   },
      // ),
      // GoRoute(
      //   name: 'service',
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: ServiceTeamScreen());
      //   },
      // ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: LoginScreen());
    },
  );
}
