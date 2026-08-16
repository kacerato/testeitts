package dk;

import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathValidator;
import java.security.cert.CertStore;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import javax.crypto.Cipher;
import javax.crypto.ExemptionMechanism;
import javax.crypto.KeyAgreement;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;

public interface InterfaceC12950f {
    Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    KeyFactory b(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    Cipher e(String str) throws NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException;

    KeyStore f(String str) throws KeyStoreException, NoSuchProviderException;

    KeyAgreement g(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    CertStore i(String str, CertStoreParameters certStoreParameters) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, NoSuchProviderException;

    KeyPairGenerator j(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    MessageDigest k(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    AlgorithmParameters l(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    MessageDigest m(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    ExemptionMechanism n(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    AlgorithmParameterGenerator o(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    CertPathValidator p(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    CertificateFactory r(String str) throws NoSuchProviderException, CertificateException;

    SecretKeyFactory s(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    CertPathBuilder t(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    SecureRandom u(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    KeyGenerator v(String str) throws NoSuchAlgorithmException, NoSuchProviderException;

    Mac w(String str) throws NoSuchAlgorithmException, NoSuchProviderException;
}
