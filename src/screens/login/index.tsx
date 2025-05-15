import { View, Text, Image, StyleSheet } from 'react-native';
import { useNavigation } from '@react-navigation/native';
import { LinearGradient } from 'expo-linear-gradient';

// Types
import { NativeStackNavigationProp } from '@react-navigation/native-stack';
import { RootStackParamList } from '../../types/RootStackParamList';

// Global
import Colors from '../../constants/Colors';

// Images
import OrangeCodebar from '../../assets/OrangeCodebar.svg';
import GoogleButton from '../../components/GoogleButton';

type NavigationProp = NativeStackNavigationProp<RootStackParamList, 'Login'>;

const Login = () => {
  const navigation = useNavigation<NavigationProp>();

  return (
    <View style={styles.container}>
      <LinearGradient style={styles.linearView} colors={[Colors.primaryOrange, Colors.lightOrange]} start={[0.5, 0.8]} /> 
      <View style={styles.imagesView}>
        <Image style={styles.loginImage} source={require('../../assets/LoginImage.png')} />
        <OrangeCodebar width={72} height={44} style={styles.orangeCodebar} />
      </View>
      <Text style={styles.title}>Organize seus boletos em um só lugar</Text>
      <View style={styles.viewButton}>
        <GoogleButton onPress={() => navigation.navigate('Home')} />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1
  },
  linearView: {
    justifyContent: 'center',
    alignItems: 'center',
    height: 340
  },
  imagesView: {
    justifyContent:  'center',
    alignItems: 'center'
  },
  loginImage: {
    width: 257,
    height: 373,
    marginTop: -260,
  },
  orangeCodebar: {
    marginTop: 24
  },
  title: {
    textAlign: 'center',
    fontSize: 32,
    fontFamily: 'Lexend-SemiBold',
    color: Colors.lightBlack,
    marginTop: 30,
    marginHorizontal: 40
  },
  viewButton: {
    flex: 1,
    justifyContent: 'flex-end',
    marginBottom: 60,
  }
});

export default Login;