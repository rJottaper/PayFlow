import { useEffect, useState } from 'react';
import { View, StyleSheet } from 'react-native';
import * as SplashScreen from 'expo-splash-screen';
import { useFonts } from 'expo-font';

import Routes from './src/routes';

SplashScreen.setOptions({
  duration: 1000,
  fade: true,
});

const App = () => {  
  const [appIsReady, setAppIsReady] = useState(false);
  const [fontsLoaded] = useFonts({
    'Lexend-Regular': require('./assets/fonts/Lexend-Regular.ttf'),
    'Lexend-Medium': require('./assets/fonts/Lexend-Medium.ttf'),
    'Lexend-SemiBold': require('./assets/fonts/Lexend-SemiBold.ttf'),
    'Lexend-Bold': require('./assets/fonts/Lexend-Bold.ttf'),
  });

  useEffect(() => {
    setTimeout(() => {
      SplashScreen.preventAutoHideAsync();
      SplashScreen.hide();
      setAppIsReady(true);
    }, 2000);
  }, []);

  if (!fontsLoaded) {
    return null;
  };

  if (!appIsReady) {
    return null
  };

  return (
    <View style={styles.container}>
      <Routes />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1
  }
});

export default App;