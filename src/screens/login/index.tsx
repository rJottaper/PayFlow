import { View, Text, Image, StyleSheet } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';

import Colors from '../../constants/Colors';

import OrangeCodebar from '../../assets/OrangeCodebar.svg';
import GoogleButton from '../../components/GoogleButton';

const Login = () => {
  return (
    <View style={styles.container}>
      <LinearGradient style={styles.linearView} colors={[Colors.primaryOrange, Colors.lightOrange]} start={[0.5, 0.8]} /> 
      <View style={styles.imagesView}>
        <Image style={styles.loginImage} source={require('../../assets/LoginImage.png')} />
        <OrangeCodebar width={90} height={70} style={styles.orangeCodebar} />
      </View>
      <Text style={styles.title}>Organize seus boletos em um só lugar</Text>
      <View style={styles.viewButton}>
        <GoogleButton />
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
    width: 280,
    height: 400,
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