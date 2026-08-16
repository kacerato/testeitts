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

public class C12948d implements InterfaceC12950f {
    @Override
    public Signature a(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str);
    }

    @Override
    public KeyFactory b(String str) throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(str);
    }

    @Override
    public Cipher e(String str) throws NoSuchAlgorithmException, NoSuchPaddingException {
        return Cipher.getInstance(str);
    }

    @Override
    public KeyStore f(String str) throws KeyStoreException {
        return KeyStore.getInstance(str);
    }

    @Override
    public KeyAgreement g(String str) throws NoSuchAlgorithmException {
        return KeyAgreement.getInstance(str);
    }

    @Override
    public CertStore i(String str, CertStoreParameters certStoreParameters) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        return CertStore.getInstance(str, certStoreParameters);
    }

    @Override
    public KeyPairGenerator j(String str) throws NoSuchAlgorithmException {
        return KeyPairGenerator.getInstance(str);
    }

    @Override
    public MessageDigest k(String str) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(str);
    }

    @Override
    public AlgorithmParameters l(String str) throws NoSuchAlgorithmException {
        return AlgorithmParameters.getInstance(str);
    }

    @Override
    public MessageDigest m(String str) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(str);
    }

    @Override
    public ExemptionMechanism n(String str) throws NoSuchAlgorithmException {
        return ExemptionMechanism.getInstance(str);
    }

    @Override
    public AlgorithmParameterGenerator o(String str) throws NoSuchAlgorithmException {
        return AlgorithmParameterGenerator.getInstance(str);
    }

    @Override
    public CertPathValidator p(String str) throws NoSuchAlgorithmException {
        return CertPathValidator.getInstance(str);
    }

    @Override
    public CertificateFactory r(String str) throws CertificateException {
        return CertificateFactory.getInstance(str);
    }

    @Override
    public SecretKeyFactory s(String str) throws NoSuchAlgorithmException {
        return SecretKeyFactory.getInstance(str);
    }

    @Override
    public CertPathBuilder t(String str) throws NoSuchAlgorithmException {
        return CertPathBuilder.getInstance(str);
    }

    @Override
    public SecureRandom u(String str) throws NoSuchAlgorithmException {
        return SecureRandom.getInstance(str);
    }

    @Override
    public KeyGenerator v(String str) throws NoSuchAlgorithmException {
        return KeyGenerator.getInstance(str);
    }

    @Override
    public Mac w(String str) throws NoSuchAlgorithmException {
        return Mac.getInstance(str);
    }
}
