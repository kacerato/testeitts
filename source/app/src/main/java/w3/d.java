package w3;

import Qk.InterfaceC3013f;
import android.security.KeyChain;
import android.security.keystore.KeyProperties;
import androidx.annotation.RequiresApi;
import com.android.apksig.apk.ApkUtils;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import fd.C13208a;
import fi.C13228d;
import id.C13696a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cms.G;
import org.bouncycastle.cms.P;
import org.bouncycastle.cms.jcajce.C14646g;
import org.bouncycastle.jce.provider.C14720a;
import w3.d;
import yd.C16181m;

public class d {

    public static final int f126409b = 72;

    public static final String f126410c = "res/drawable/app_icon_drawable.png";

    public static final String f126411d = "KEY0";

    public static final byte[] f126408a = C13208a.f86201f.getBytes(StandardCharsets.US_ASCII);

    public static final C14720a f126412e = new C14720a();

    public static final class b {

        public final String f126413a;

        public final String f126414b;

        public static String a(b bVar) {
            return bVar.f126413a;
        }

        public b(String name, String digestBase64) {
            this.f126413a = name;
            this.f126414b = digestBase64;
        }
    }

    public static final class c {

        public final byte[] f126415a;

        public final byte[] f126416b;

        public final Map<String, byte[]> f126417c;

        public c(byte[] manifestBytes, byte[] mainSectionBytes, Map<String, byte[]> sectionBytesByName) {
            this.f126415a = manifestBytes;
            this.f126416b = mainSectionBytes;
            this.f126417c = sectionBytesByName;
        }
    }

    public static final class C2086d {

        public final PrivateKey f126418a;

        public final X509Certificate f126419b;

        public C2086d(PrivateKey privateKey, X509Certificate certificate) {
            this.f126418a = privateKey;
            this.f126419b = certificate;
        }
    }

    public static void A(ByteArrayOutputStream out, String key, String value) throws IOException {
        B(out, key + ": " + value);
    }

    public static void B(ByteArrayOutputStream out, String line) throws IOException {
        byte[] bytes = line.getBytes(StandardCharsets.UTF_8);
        if (bytes.length == 0) {
            out.write(f126408a);
            return;
        }
        boolean z10 = true;
        int i10 = 0;
        while (i10 < bytes.length) {
            if (!z10) {
                out.write(32);
            }
            int min = Math.min(z10 ? 72 : 71, bytes.length - i10);
            out.write(bytes, i10, min);
            out.write(f126408a);
            i10 += min;
            z10 = false;
        }
    }

    @RequiresApi(api = 26)
    public static void C(File sourceDir, File zipFile) throws IOException {
        if (zipFile.exists()) {
            zipFile.delete();
        }
        zipFile.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(zipFile);
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
            try {
                D(sourceDir, sourceDir, zipOutputStream);
                zipOutputStream.close();
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @RequiresApi(api = 26)
    public static void D(File rootDir, File file, ZipOutputStream zos) throws IOException {
        AabZipHelper.writeDirToZip(rootDir, file, zos);
    }

    public static c b(List<b> entries) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        A(byteArrayOutputStream2, "Manifest-Version", "1.0");
        A(byteArrayOutputStream2, "Created-By", "ITsMagic AAB Asset Injector");
        byteArrayOutputStream2.write(f126408a);
        byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
        TreeMap treeMap = new TreeMap();
        for (b bVar : entries) {
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            A(byteArrayOutputStream3, "Name", bVar.f126413a);
            A(byteArrayOutputStream3, "SHA-256-Digest", bVar.f126414b);
            byteArrayOutputStream3.write(f126408a);
            byte[] byteArray = byteArrayOutputStream3.toByteArray();
            byteArrayOutputStream.write(byteArray);
            treeMap.put(bVar.f126413a, byteArray);
        }
        return new c(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray(), treeMap);
    }

    public static byte[] c(File signatureFile, PrivateKey privateKey, X509Certificate certificate) throws Exception {
        org.bouncycastle.operator.jcajce.b bVar = new org.bouncycastle.operator.jcajce.b(k(certificate));
        InterfaceC3013f b10 = bVar.b(privateKey);
        P p10 = new P();
        p10.i(new C14646g(new org.bouncycastle.operator.jcajce.d().b()).a(b10, certificate));
        p10.f(new org.bouncycastle.cert.jcajce.e(Collections.singletonList(certificate)));
        return p10.o(new G(Files.readAllBytes(signatureFile.toPath())), false).getEncoded();
    }

    public static byte[] d(List<b> entries, c manifestData) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        A(byteArrayOutputStream, "Signature-Version", "1.0");
        A(byteArrayOutputStream, "Created-By", "ITsMagic AAB Asset Injector");
        A(byteArrayOutputStream, "SHA-256-Digest-Manifest", h(manifestData.f126415a));
        A(byteArrayOutputStream, "SHA-256-Digest-Manifest-Main-Attributes", h(manifestData.f126416b));
        byteArrayOutputStream.write(f126408a);
        for (b bVar : entries) {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            A(byteArrayOutputStream2, "Name", bVar.f126413a);
            A(byteArrayOutputStream2, "SHA-256-Digest", h((byte[]) manifestData.f126417c.get(bVar.f126413a)));
            byteArrayOutputStream2.write(f126408a);
            byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static List<b> e(File root) throws Exception {
        ArrayList arrayList = new ArrayList();
        f(root, root, arrayList);
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                String a10;
                a10 = d.b.a((d.b) obj);
                return a10;
            }
        }));
        return arrayList;
    }

    public static void f(File root, File file, List<b> entries) throws Exception {
        if (!file.isDirectory()) {
            String replace = root.toPath().relativize(file.toPath()).toString().replace(C16181m.f130232i, "/");
            if (x(replace)) {
                return;
            }
            entries.add(new b(replace, g(file)));
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        Arrays.sort(listFiles, Comparator.comparing(new C15908b()));
        for (File file2 : listFiles) {
            f(root, file2, entries);
        }
    }

    public static String g(File file) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    return Base64.getEncoder().encodeToString(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static String h(byte[] bytes) throws Exception {
        return Base64.getEncoder().encodeToString(MessageDigest.getInstance("SHA-256").digest(bytes));
    }

    public static void i(File keyStoreFile, String keyStorePassword, String keyAlias, String keyPassword) throws Exception {
        if (keyStoreFile.exists()) {
            o(keyStoreFile, keyStorePassword, keyAlias, keyPassword);
            return;
        }
        File parentFile = keyStoreFile.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Unable to create AAB signing directory");
        }
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(KeyProperties.KEY_ALGORITHM_RSA);
        keyPairGenerator.initialize(2048, new SecureRandom());
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        Date date = new Date(System.currentTimeMillis() - 86400000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(1, 50);
        Date time = calendar.getTime();
        C13228d c13228d = new C13228d("CN=ITsMagic Offline AAB");
        BigInteger bit = new BigInteger(160, new SecureRandom()).setBit(0);
        org.bouncycastle.operator.jcajce.b bVar = new org.bouncycastle.operator.jcajce.b("SHA256withRSA");
        X509Certificate a10 = new JcaX509CertificateConverter().a(new org.bouncycastle.cert.jcajce.n(c13228d, bit, date, time, c13228d, generateKeyPair.getPublic()).e(bVar.b(generateKeyPair.getPrivate())));
        a10.checkValidity(new Date());
        a10.verify(generateKeyPair.getPublic());
        char[] u10 = u(keyStorePassword, "Keystore password");
        char[] q10 = q(keyPassword, u10);
        String t10 = t(keyAlias);
        KeyStore keyStore = KeyStore.getInstance(KeyChain.EXTRA_PKCS12);
        keyStore.load(null, u10);
        keyStore.setKeyEntry(t10, generateKeyPair.getPrivate(), q10, new X509Certificate[]{a10});
        File file = new File(keyStoreFile.getAbsolutePath() + ".tmp");
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                keyStore.store(fileOutputStream, u10);
                fileOutputStream.close();
                try {
                    Files.move(file.toPath(), keyStoreFile.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                } catch (IOException unused) {
                    Files.move(file.toPath(), keyStoreFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                }
            } finally {
            }
        } finally {
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static File j(File root, String... relativePaths) {
        for (String str : relativePaths) {
            File file = new File(root, str);
            if (file.exists()) {
                return file;
            }
        }
        return null;
    }

    public static String k(X509Certificate certificate) {
        String upperCase = certificate.getPublicKey().getAlgorithm().toUpperCase(Locale.ROOT);
        return upperCase.contains(KeyProperties.KEY_ALGORITHM_EC) ? "SHA256withECDSA" : upperCase.contains("DSA") ? "SHA256withDSA" : "SHA256withRSA";
    }

    public static String l(X509Certificate certificate) {
        String upperCase = certificate.getPublicKey().getAlgorithm().toUpperCase(Locale.ROOT);
        return upperCase.contains(KeyProperties.KEY_ALGORITHM_EC) ? KeyProperties.KEY_ALGORITHM_EC : upperCase.contains("DSA") ? "DSA" : KeyProperties.KEY_ALGORITHM_RSA;
    }

    @RequiresApi(api = 26)
    public static void m(File zipFile, File inputAab, File outputAab, File keyStoreFile, String keystorePassword, String keyAlias, String keyPassword, String assetsPrefix, String appTitle, String packageId, File appIconFile) throws Exception {
        File file = new File(W7.b.f27306f.f2458a.b(N7.c.t()) + "/Builder/tempfiles/");
        try {
            p(zipFile, inputAab, assetsPrefix, appTitle, packageId, appIconFile);
            y(outputAab, keyStoreFile, keystorePassword, keyAlias, keyPassword);
            if (file.exists()) {
                C13696a.g(file);
            }
        } catch (Throwable th2) {
            if (file.exists()) {
                C13696a.g(file);
            }
            if (outputAab.exists()) {
                outputAab.delete();
            }
            throw th2;
        }
    }

    public static C2086d o(File keyStoreFile, String keyStorePassword, String keyAlias, String keyPassword) throws Exception {
        if (keyStoreFile == null || !keyStoreFile.exists() || !keyStoreFile.isFile()) {
            throw new FileNotFoundException("AAB signing keystore not found");
        }
        char[] u10 = u(keyStorePassword, "Keystore password");
        char[] q10 = q(keyPassword, u10);
        String t10 = t(keyAlias);
        String[] strArr = {KeyChain.EXTRA_PKCS12, "JKS", "BKS"};
        Exception e10 = null;
        for (int i10 = 0; i10 < 3; i10++) {
            try {
                KeyStore keyStore = KeyStore.getInstance(strArr[i10]);
                FileInputStream fileInputStream = new FileInputStream(keyStoreFile);
                try {
                    keyStore.load(fileInputStream, u10);
                    fileInputStream.close();
                    if (keyStore.isKeyEntry(t10)) {
                        PrivateKey privateKey = (PrivateKey) keyStore.getKey(t10, q10);
                        if (keyStore.getCertificate(t10) instanceof X509Certificate) {
                            return new C2086d(privateKey, (X509Certificate) keyStore.getCertificate(t10));
                        }
                        throw new IOException("AAB signing certificate is not X.509");
                    }
                    throw new IOException("Key alias not found in AAB signing keystore: " + t10);
                } finally {
                }
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        throw new IOException("Unable to load AAB signing keystore", e10);
    }

    @RequiresApi(api = 26)
    public static void p(File zipFile, File inputAab, String assetsPrefix, String appTitle, String packageId, File appIconFile) throws IOException {
        File file = new File(W7.b.f27306f.f2458a.b(N7.c.t()) + "/Builder/tempfiles/");
        if (file.exists()) {
            C13696a.g(file);
        }
        if (!file.mkdirs() && !file.exists()) {
            throw new IOException("Failed to create temporary directory: " + file.getAbsolutePath());
        }
        z(inputAab, file);
        File v10 = v(file);
        File j10 = j(v10, "manifest/AndroidManifest.xml", ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME);
        if (j10 == null && v10.getParentFile() != null) {
            j10 = j(v10.getParentFile(), "base/manifest/AndroidManifest.xml", "base/AndroidManifest.xml", "manifest/AndroidManifest.xml", ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME);
        }
        if (j10 == null) {
            throw new FileNotFoundException("AndroidManifest.xml not found in AAB template");
        }
        C15907a.d(j10, appTitle, packageId);
        s(v10, appIconFile);
        File file2 = new File(v10, q.b.f72176a + assetsPrefix);
        if (file2.exists() || file2.mkdirs()) {
            z(zipFile, file2);
            r(file);
        } else {
            throw new IOException("Failed to create directory: " + file2.getAbsolutePath());
        }
    }

    public static char[] q(String password, char[] fallback) {
        return (password == null || password.isEmpty()) ? fallback : password.toCharArray();
    }

    public static void r(File root) {
        File[] listFiles;
        File file = new File(root, "META-INF");
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    String upperCase = file2.getName().toUpperCase(Locale.ROOT);
                    if (upperCase.endsWith(".SF") || upperCase.endsWith(".RSA") || upperCase.endsWith(".DSA") || upperCase.endsWith(".EC") || upperCase.equals("MANIFEST.MF")) {
                        file2.delete();
                    }
                }
            }
        }
    }

    public static void s(File moduleRoot, File appIconFile) throws IOException {
        if (appIconFile == null || !appIconFile.exists()) {
            return;
        }
        File j10 = j(moduleRoot, f126410c, "res/drawable/Ix.png", h.f126441a);
        if (j10 == null && moduleRoot.getParentFile() != null) {
            j10 = j(moduleRoot.getParentFile(), "base/res/drawable/app_icon_drawable.png", "base/res/drawable/Ix.png", "base/res/Ix.png", f126410c, "res/drawable/Ix.png", h.f126441a);
        }
        if (j10 == null) {
            throw new FileNotFoundException("Offline launcher icon resource not found in AAB template");
        }
        if (!C13696a.a(appIconFile, j10)) {
            throw new IOException("Failed to replace offline launcher icon");
        }
    }

    public static String t(String keyAlias) throws IOException {
        if (keyAlias == null || keyAlias.trim().isEmpty()) {
            throw new IOException("Key alias is required for AAB signing");
        }
        return keyAlias.trim();
    }

    public static char[] u(String password, String fieldName) throws IOException {
        if (password != null && !password.isEmpty()) {
            return password.toCharArray();
        }
        throw new IOException(fieldName + " is required for AAB signing");
    }

    public static File v(File tempDir) {
        File file = new File(tempDir, "base");
        return (file.exists() && file.isDirectory()) ? file : tempDir;
    }

    public static String w(String keyAlias) {
        String replaceAll = ((keyAlias == null || keyAlias.trim().isEmpty()) ? f126411d : keyAlias.trim()).toUpperCase(Locale.ROOT).replaceAll("[^A-Z0-9_-]", ConstantDescs.DEFAULT_NAME);
        return replaceAll.length() > 8 ? replaceAll.substring(0, 8) : replaceAll.isEmpty() ? f126411d : replaceAll;
    }

    public static boolean x(String name) {
        if (name.equals("META-INF/MANIFEST.MF")) {
            return true;
        }
        if (!name.startsWith("META-INF/")) {
            return false;
        }
        String upperCase = name.toUpperCase(Locale.ROOT);
        return upperCase.endsWith(".SF") || upperCase.endsWith(".RSA") || upperCase.endsWith(".DSA") || upperCase.endsWith(".EC");
    }

    @RequiresApi(api = 26)
    public static void y(File outputAab, File keyStoreFile, String keyStorePassword, String keyAlias, String keyPassword) throws Exception {
        if (outputAab.exists()) {
            outputAab.delete();
        }
        File file = new File(W7.b.f27306f.f2458a.b(N7.c.t()) + "/Builder/tempfiles/");
        if (!file.exists()) {
            throw new IOException("Temporary bundle directory was not created");
        }
        C2086d o10 = o(keyStoreFile, keyStorePassword, keyAlias, keyPassword);
        X509Certificate x509Certificate = o10.f126419b;
        PrivateKey privateKey = o10.f126418a;
        List<b> e10 = e(file);
        c b10 = b(e10);
        File file2 = new File(file, "META-INF");
        if (!file2.exists() && !file2.mkdirs()) {
            throw new IOException("Failed to create META-INF directory for AAB signing");
        }
        Files.write(new File(file2, "MANIFEST.MF").toPath(), b10.f126415a, new OpenOption[0]);
        String w10 = w(keyAlias);
        String l10 = l(x509Certificate);
        File file3 = new File(file2, w10 + ".SF");
        File file4 = new File(file2, w10 + "." + l10);
        Files.write(file3.toPath(), d(e10, b10), new OpenOption[0]);
        Files.write(file4.toPath(), c(file3, privateKey, x509Certificate), new OpenOption[0]);
        if (outputAab.exists()) {
            outputAab.delete();
        }
        outputAab.createNewFile();
        C(file, outputAab);
    }

    @RequiresApi(api = 26)
    public static void z(File zipFile, File destDir) throws IOException {
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(zipFile));
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                File file = new File(destDir, nextEntry.getName());
                if (nextEntry.isDirectory()) {
                    file.mkdirs();
                } else {
                    File parentFile = file.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = zipInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, read);
                            }
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                    fileOutputStream.close();
                }
            }
        } catch (Throwable th4) {
            try {
                zipInputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }
}
