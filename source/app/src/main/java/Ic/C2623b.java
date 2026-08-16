package Ic;

import android.security.keystore.KeyProperties;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public final class C2623b {

    public static final int f9099a = 256;

    public static final int f9100b = 65536;

    public static final int f9101c = 16;

    public static final int f9102d = 12;

    public static final int f9103e = 128;

    public static String a(String encryptedBase64, SecretKey key) throws Exception {
        ByteBuffer wrap = ByteBuffer.wrap(Base64.getDecoder().decode(encryptedBase64));
        byte[] bArr = new byte[12];
        wrap.get(bArr);
        byte[] bArr2 = new byte[wrap.remaining()];
        wrap.get(bArr2);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, key, new GCMParameterSpec(128, bArr));
        return new String(cipher.doFinal(bArr2), StandardCharsets.UTF_8);
    }

    public static String b(String encryptedBase64, SecretKey key, byte[] iv) throws Exception {
        byte[] decode = Base64.getDecoder().decode(encryptedBase64);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, key, new GCMParameterSpec(128, iv));
        return new String(cipher.doFinal(decode), StandardCharsets.UTF_8);
    }

    public static SecretKey c(String password, byte[] salt) throws Exception {
        return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(new PBEKeySpec(password.toCharArray(), salt, 65536, 256)).getEncoded(), KeyProperties.KEY_ALGORITHM_AES);
    }

    public static String d(String plainText, SecretKey key) throws Exception {
        byte[] bArr = new byte[12];
        new SecureRandom().nextBytes(bArr);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, key, new GCMParameterSpec(128, bArr));
        byte[] doFinal = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));
        ByteBuffer allocate = ByteBuffer.allocate(doFinal.length + 12);
        allocate.put(bArr);
        allocate.put(doFinal);
        return Base64.getEncoder().encodeToString(allocate.array());
    }

    public static String e(String plainText, SecretKey key, byte[] iv) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, key, new GCMParameterSpec(128, iv));
        return Base64.getEncoder().encodeToString(cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8)));
    }

    public static SecretKey f(String password) throws Exception {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return c(password, bArr);
    }

    public static byte[] g() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }
}
