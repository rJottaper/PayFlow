import { createNativeStackNavigator } from '@react-navigation/native-stack';

import { RootStackParamList } from '../types/RootStackParamList';

// Screens
import Login from '../screens/login';
import Home from '../screens/home';

const { Navigator, Screen } = createNativeStackNavigator<RootStackParamList>();

const StackRoutes = () => {
  return (
    <Navigator screenOptions={{ headerShown: false }}>
      <Screen name='Login' component={Login} />
      <Screen name='Home' component={Home} />
    </Navigator>
  );
};

export default StackRoutes;