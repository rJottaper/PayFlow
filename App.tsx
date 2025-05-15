import { View, StyleSheet } from 'react-native';
import { useFonts } from 'expo-font';

import Routes from './src/routes';

const App = () => {
  const [fontsLoaded] = useFonts({
    'Lexend-Regular': require('./assets/fonts/Lexend-Regular.ttf'),
    'Lexend-Medium': require('./assets/fonts/Lexend-Medium.ttf'),
    'Lexend-SemiBold': require('./assets/fonts/Lexend-SemiBold.ttf'),
    'Lexend-Bold': require('./assets/fonts/Lexend-Bold.ttf'),
  });

  if (!fontsLoaded) {
    return null;
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