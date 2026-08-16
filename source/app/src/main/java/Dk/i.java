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

public class i implements InterfaceC12950f {

    public final String f84747a;

    public i(String str) {
        this.f84747a = str;
    }

    @Override
    public Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return Signature.getInstance(str, this.f84747a);
    }

    @Override
    public KeyFactory b(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return KeyFactory.getInstance(str, this.f84747a);
    }

    @Override
    public Cipher e(String str) throws NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException {
        return Cipher.getInstance(str, this.f84747a);
    }

    @Override
    public KeyStore f(String str) throws KeyStoreException, NoSuchProviderException {
        return KeyStore.getInstance(str, this.f84747a);
    }

    @Override
    public KeyAgreement g(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return KeyAgreement.getInstance(str, this.f84747a);
    }

    @Override
    public CertStore i(String str, CertStoreParameters certStoreParameters) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, NoSuchProviderException {
        return CertStore.getInstance(str, certStoreParameters, this.f84747a);
    }

    @Override
    public KeyPairGenerator j(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return KeyPairGenerator.getInstance(str, this.f84747a);
    }

    @Override
    public MessageDigest k(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return MessageDigest.getInstance(str, this.f84747a);
    }

    @Override
    public AlgorithmParameters l(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return AlgorithmParameters.getInstance(str, this.f84747a);
    }

    @Override
    public MessageDigest m(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return MessageDigest.getInstance(str, this.f84747a);
    }

    @Override
    public ExemptionMechanism n(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return ExemptionMechanism.getInstance(str, this.f84747a);
    }

    @Override
    public AlgorithmParameterGenerator o(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return AlgorithmParameterGenerator.getInstance(str, this.f84747a);
    }

    @Override
    public CertPathValidator p(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return CertPathValidator.getInstance(str, this.f84747a);
    }

    @Override
    public CertificateFactory r(String str) throws CertificateException, NoSuchProviderException {
        return CertificateFactory.getInstance(str, this.f84747a);
    }

    @Override
    public SecretKeyFactory s(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return SecretKeyFactory.getInstance(str, this.f84747a);
    }

    @Override
    public CertPathBuilder t(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return CertPathBuilder.getInstance(str, this.f84747a);
    }

    @Override
    public SecureRandom u(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return SecureRandom.getInstance(str, this.f84747a);
    }

    @Override
    public KeyGenerator v(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return KeyGenerator.getInstance(str, this.f84747a);
    }

    @Override
    public Mac w(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return Mac.getInstance(str, this.f84747a);
    }
}
