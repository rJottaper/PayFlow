import { View, TouchableOpacity, Text, StyleSheet } from "react-native";

import Colors from "../constants/Colors";

import GoogleIcon from '../assets/GoogleIcon.svg';

interface GoogleButtonProps {
  onPress?: () => void;
};

const GoogleButton = ({ onPress }: GoogleButtonProps) => {
  return (
    <TouchableOpacity style={styles.button} onPress={onPress}>
      <View style={styles.viewGoogleIcon} >
        <GoogleIcon width={24} height={25} />
      </View>
      <Text style={styles.buttonTitle}>Entrar com Google</Text>
    </TouchableOpacity>
  );
};

const styles = StyleSheet.create({
  button: {
    flexDirection: 'row',
    alignItems: 'center',
    alignSelf: 'center',
    backgroundColor: Colors.lightWhite,
    borderWidth: 1,
    borderColor: Colors.lightGrey,
    borderRadius: 8,
    width: 350,
    height: 56
  },
  viewGoogleIcon: {
    justifyContent: 'center',
    alignItems: 'center',
    width: 60,
    height: 56,
    borderRightWidth: 1,
    borderColor: Colors.lightGrey
  },
  buttonTitle: {
    flex: 1,
    textAlign: 'center',
    fontSize: 17,
    fontFamily: 'Lexend-Regular',
    color: Colors.mediumGrey,
    marginRight: 10
  }
});

export default GoogleButton;