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
import java.security.Provider;
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

public class k implements InterfaceC12950f {

    public final Provider f84748a;

    public k(Provider provider) {
        this.f84748a = provider;
    }

    @Override
    public Signature a(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str, this.f84748a);
    }

    @Override
    public KeyFactory b(String str) throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(str, this.f84748a);
    }

    @Override
    public Cipher e(String str) throws NoSuchAlgorithmException, NoSuchPaddingException {
        return Cipher.getInstance(str, this.f84748a);
    }

    @Override
    public KeyStore f(String str) throws KeyStoreException {
        return KeyStore.getInstance(str, this.f84748a);
    }

    @Override
    public KeyAgreement g(String str) throws NoSuchAlgorithmException {
        return KeyAgreement.getInstance(str, this.f84748a);
    }

    @Override
    public CertStore i(String str, CertStoreParameters certStoreParameters) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        return CertStore.getInstance(str, certStoreParameters, this.f84748a);
    }

    @Override
    public KeyPairGenerator j(String str) throws NoSuchAlgorithmException {
        return KeyPairGenerator.getInstance(str, this.f84748a);
    }

    @Override
    public MessageDigest k(String str) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(str, this.f84748a);
    }

    @Override
    public AlgorithmParameters l(String str) throws NoSuchAlgorithmException {
        return AlgorithmParameters.getInstance(str, this.f84748a);
    }

    @Override
    public MessageDigest m(String str) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(str, this.f84748a);
    }

    @Override
    public ExemptionMechanism n(String str) throws NoSuchAlgorithmException {
        return ExemptionMechanism.getInstance(str, this.f84748a);
    }

    @Override
    public AlgorithmParameterGenerator o(String str) throws NoSuchAlgorithmException {
        return AlgorithmParameterGenerator.getInstance(str, this.f84748a);
    }

    @Override
    public CertPathValidator p(String str) throws NoSuchAlgorithmException {
        return CertPathValidator.getInstance(str, this.f84748a);
    }

    @Override
    public CertificateFactory r(String str) throws CertificateException {
        return CertificateFactory.getInstance(str, this.f84748a);
    }

    @Override
    public SecretKeyFactory s(String str) throws NoSuchAlgorithmException {
        return SecretKeyFactory.getInstance(str, this.f84748a);
    }

    @Override
    public CertPathBuilder t(String str) throws NoSuchAlgorithmException {
        return CertPathBuilder.getInstance(str, this.f84748a);
    }

    @Override
    public SecureRandom u(String str) throws NoSuchAlgorithmException {
        return SecureRandom.getInstance(str, this.f84748a);
    }

    @Override
    public KeyGenerator v(String str) throws NoSuchAlgorithmException {
        return KeyGenerator.getInstance(str, this.f84748a);
    }

    @Override
    public Mac w(String str) throws NoSuchAlgorithmException {
        return Mac.getInstance(str, this.f84748a);
    }
}
