import { NavigationContainer, DefaultTheme } from '@react-navigation/native';

import StackRoutes from './stack.routes';
import Colors from '../constants/Colors';

const Routes = () => {
  const defaultTheme = {
    ...DefaultTheme,
    colors: {
      ...DefaultTheme,
      backgroundColor: Colors.primaryWhite
    }
  };

  return (
    <NavigationContainer theme={defaultTheme}>
      <StackRoutes />
    </NavigationContainer>
  );
};

export default Routes;