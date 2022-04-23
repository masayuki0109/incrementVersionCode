export default {
  expo: {
    jsEngine: "hermes",
    scheme: "my-app",
    name: "my-app",
    slug: "my-app",
    version: "0.0.1",
    orientation: "portrait",
    icon: "./icon.png",
    userInterfaceStyle: "automatic",
    splash: {
      image: "./assets/images/splash.png",
      resizeMode: "contain",
    },
    updates: {
      fallbackToCacheTimeout: 0,
    },
    assetBundlePatterns: ["**/*"],
    ios: {
      bundleIdentifier: "my-app",
      buildNumber: "0.0.1",
    },
    android: {
      package: "my-app",
      versionCode: 1,
    },
  },
};
