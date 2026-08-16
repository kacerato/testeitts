package org.offlineApk.apksigner;

import android.security.keystore.KeyProperties;
import androidx.annotation.RequiresApi;
import com.android.apksig.ApkSigner;
import com.android.apksig.ApkVerifier;
import com.android.apksig.SigningCertificateLineage;
import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.apk.MinSdkVersionException;
import com.android.apksig.util.DataSources;
import en.c;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.ECKey;
import java.security.interfaces.RSAKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.offlineApk.apksigner.OptionsParser;

public class a {

    public static final String f102858a = "0.9";

    public static final String f102859b = "help.txt";

    public static final String f102860c = "help_sign.txt";

    public static final String f102861d = "help_verify.txt";

    public static final String f102862e = "help_rotate.txt";

    public static final String f102863f = "help_lineage.txt";

    public static final String f102864g = "-----BEGIN CERTIFICATE-----";

    public static final String f102865h = "-----END CERTIFICATE-----";

    public static MessageDigest f102866i = null;

    public static MessageDigest f102867j = null;

    public static MessageDigest f102868k = null;

    public static final int f102869l = 67324752;

    public static class b {

        public String f102870a;

        public String f102871b;

        public Integer f102872c;

        public b() {
        }

        public final void c() throws Exception {
            Provider provider;
            String str = this.f102870a;
            if (str == null) {
                throw new ParameterException("JCA Provider class name (--provider-class) must be specified");
            }
            Class<?> cls = Class.forName(str);
            if (!Provider.class.isAssignableFrom(cls)) {
                throw new ParameterException("JCA Provider class " + ((Object) cls) + " not subclass of " + Provider.class.getName());
            }
            if (this.f102871b != null) {
                try {
                    provider = (Provider) cls.getConstructor(String.class).newInstance(this.f102871b);
                } catch (NoSuchMethodException unused) {
                    provider = (Provider) cls.getMethod("configure", String.class).invoke((Provider) cls.getConstructor(null).newInstance(null), this.f102871b);
                }
            } else {
                provider = (Provider) cls.getConstructor(null).newInstance(null);
            }
            Integer num = this.f102872c;
            if (num == null) {
                Security.addProvider(provider);
            } else {
                Security.insertProviderAt(provider, num.intValue());
            }
        }

        public final boolean d() {
            return this.f102870a == null && this.f102871b == null && this.f102872c == null;
        }
    }

    public static SigningCertificateLineage a(File inputLineageFile) throws ParameterException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(inputLineageFile, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c);
            try {
                if (randomAccessFile.length() < 4) {
                    throw new ParameterException("The input file is not a valid lineage file.");
                }
                int i10 = DataSources.asDataSource(randomAccessFile).getByteBuffer(0L, 4).order(ByteOrder.LITTLE_ENDIAN).getInt();
                if (i10 == 1056913873) {
                    SigningCertificateLineage readFromFile = SigningCertificateLineage.readFromFile(inputLineageFile);
                    randomAccessFile.close();
                    return readFromFile;
                }
                if (i10 != 67324752) {
                    throw new ParameterException("The input file is not a valid lineage file.");
                }
                SigningCertificateLineage readFromApkFile = SigningCertificateLineage.readFromApkFile(inputLineageFile);
                randomAccessFile.close();
                return readFromApkFile;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (ApkFormatException | IOException | IllegalArgumentException e10) {
            throw new ParameterException(e10.getMessage());
        }
    }

    public static ApkSigner.SignerConfig b(c signer, en.b passwordRetriever, boolean deterministicDsaSigning) {
        String name;
        try {
            signer.n(passwordRetriever);
            if (signer.j() != null) {
                name = signer.j();
            } else if (signer.f() != null) {
                name = signer.f();
            } else {
                if (signer.d() == null) {
                    throw new RuntimeException("Neither KeyStore key alias nor private key file available");
                }
                name = new File(signer.d()).getName();
                int indexOf = name.indexOf(46);
                if (indexOf != -1) {
                    name = name.substring(0, indexOf);
                }
            }
            return new ApkSigner.SignerConfig.Builder(name, signer.h(), signer.c(), deterministicDsaSigning).build();
        } catch (ParameterException e10) {
            System.err.println("Failed to load signer \"" + signer.g() + "\": " + e10.getMessage());
            System.exit(2);
            return null;
        } catch (Exception e11) {
            System.err.println("Failed to load signer \"" + signer.g() + JavadocConstants.ANCHOR_PREFIX_END);
            e11.printStackTrace();
            System.exit(2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(String[] params) throws Exception {
        if (params.length == 0) {
            i(f102863f);
            return;
        }
        OptionsParser optionsParser = new OptionsParser(params);
        ArrayList arrayList = new ArrayList(1);
        File file = null;
        int i10 = 0;
        File file2 = null;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            String f10 = optionsParser.f();
            if (f10 == null) {
                if (file == null) {
                    throw new ParameterException("Input lineage file parameter not present");
                }
                SigningCertificateLineage a10 = a(file);
                en.b bVar = new en.b();
                int i11 = 0;
                boolean z13 = false;
                while (i11 < arrayList.size()) {
                    try {
                        c cVar = (c) arrayList.get(i11);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("signer #");
                        i11++;
                        sb2.append(i11);
                        cVar.B(sb2.toString());
                        d(cVar, bVar);
                        SigningCertificateLineage.SignerConfig build = new SigningCertificateLineage.SignerConfig.Builder(cVar.h(), cVar.c().get(0)).build();
                        try {
                            SigningCertificateLineage.SignerCapabilities signerCapabilities = a10.getSignerCapabilities(build);
                            a10.updateSignerCapabilities(build, cVar.i().build());
                            if (!signerCapabilities.equals(a10.getSignerCapabilities(build))) {
                                if (z11) {
                                    System.out.println("Updated signer capabilities for " + cVar.g() + ".");
                                }
                                z13 = true;
                            } else if (z11) {
                                System.out.println("The provided signer capabilities for " + cVar.g() + " are unchanged.");
                            }
                        } catch (IllegalArgumentException unused) {
                            throw new ParameterException("The signer " + cVar.g() + " was not found in the specified lineage.");
                        }
                    } catch (Throwable th2) {
                        try {
                            bVar.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
                bVar.close();
                if (z10) {
                    List<X509Certificate> certificatesInLineage = a10.getCertificatesInLineage();
                    while (i10 < certificatesInLineage.size()) {
                        X509Certificate x509Certificate = certificatesInLineage.get(i10);
                        SigningCertificateLineage.SignerCapabilities signerCapabilities2 = a10.getSignerCapabilities(x509Certificate);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Signer #");
                        i10++;
                        sb3.append(i10);
                        sb3.append(" in lineage");
                        h(x509Certificate, sb3.toString(), z11, z12);
                        f(signerCapabilities2);
                    }
                }
                if (z13) {
                    if (file2 == null) {
                        throw new ParameterException("The lineage was modified but an output file for the lineage was not specified");
                    }
                    a10.writeToFile(file2);
                    if (z11) {
                        System.out.println("Updated lineage saved to " + ((Object) file2) + ".");
                        return;
                    }
                    return;
                }
                return;
            }
            if ("help".equals(f10) || "h".equals(f10)) {
                break;
            }
            if ("in".equals(f10)) {
                file = new File(optionsParser.e("Input file name"));
            } else if ("out".equals(f10)) {
                file2 = new File(optionsParser.e("Output file name"));
            } else if ("signer".equals(f10)) {
                arrayList.add(j(optionsParser));
            } else if ("v".equals(f10) || "verbose".equals(f10)) {
                z11 = optionsParser.b(true);
            } else if ("print-certs".equals(f10)) {
                z10 = optionsParser.b(true);
            } else {
                if (!"print-certs-pem".equals(f10)) {
                    throw new ParameterException("Unsupported option: " + optionsParser.a() + ". See --help for supported options.");
                }
                z12 = optionsParser.b(true);
                if (z12 && !z10) {
                    z10 = true;
                }
            }
        }
        i(f102863f);
    }

    public static void d(c params, en.b passwordRetriever) throws ParameterException {
        try {
            params.n(passwordRetriever);
            if (params.f() != null) {
                params.B(params.f());
                return;
            }
            if (params.d() == null) {
                throw new RuntimeException("Neither KeyStore key alias nor private key file available for " + params.g());
            }
            String name = new File(params.d()).getName();
            int indexOf = name.indexOf(46);
            if (indexOf == -1) {
                params.B(name);
            } else {
                params.B(name.substring(0, indexOf));
            }
        } catch (ParameterException e10) {
            throw new ParameterException("Failed to load signer \"" + params.g() + "\":" + e10.getMessage());
        } catch (Exception e11) {
            e11.printStackTrace();
            throw new ParameterException("Failed to load signer \"" + params.g() + JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    @RequiresApi(api = 26)
    public static void e(String[] params) throws Exception {
        if (params.length == 0 || "--help".equals(params[0]) || "-h".equals(params[0])) {
            i(f102859b);
            return;
        }
        if ("--version".equals(params[0])) {
            System.out.println(f102858a);
            return;
        }
        String str = params[0];
        try {
            if ("sign".equals(str)) {
                l((String[]) Arrays.copyOfRange(params, 1, params.length));
                return;
            }
            if ("verify".equals(str)) {
                m((String[]) Arrays.copyOfRange(params, 1, params.length));
                return;
            }
            if ("rotate".equals(str)) {
                k((String[]) Arrays.copyOfRange(params, 1, params.length));
                return;
            }
            if ("lineage".equals(str)) {
                c((String[]) Arrays.copyOfRange(params, 1, params.length));
                return;
            }
            if ("help".equals(str)) {
                i(f102859b);
                return;
            }
            if ("version".equals(str)) {
                System.out.println(f102858a);
                return;
            }
            throw new ParameterException("Unsupported command: " + str + ". See --help for supported commands");
        } catch (OptionsParser.OptionsException e10) {
            e = e10;
            System.err.println(e.getMessage());
            System.exit(1);
        } catch (ParameterException e11) {
            e = e11;
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }

    public static void f(SigningCertificateLineage.SignerCapabilities capabilities) {
        PrintStream printStream = System.out;
        printStream.println("Has installed data capability: " + capabilities.hasInstalledData());
        printStream.println("Has shared UID capability    : " + capabilities.hasSharedUid());
        printStream.println("Has permission capability    : " + capabilities.hasPermission());
        printStream.println("Has rollback capability      : " + capabilities.hasRollback());
        printStream.println("Has auth capability          : " + capabilities.hasAuth());
    }

    public static void g(X509Certificate cert, String name, boolean verbose) throws NoSuchAlgorithmException, CertificateEncodingException {
        h(cert, name, verbose, false);
    }

    public static void h(X509Certificate cert, String name, boolean verbose, boolean pemOutput) throws NoSuchAlgorithmException, CertificateEncodingException {
        DSAParams params;
        if (cert == null) {
            throw new NullPointerException("cert == null");
        }
        if (f102866i == null || f102867j == null || f102868k == null) {
            f102866i = MessageDigest.getInstance("SHA-256");
            f102867j = MessageDigest.getInstance("SHA-1");
            f102868k = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
        }
        PrintStream printStream = System.out;
        printStream.println(name + " certificate DN: " + ((Object) cert.getSubjectDN()));
        byte[] encoded = cert.getEncoded();
        printStream.println(name + " certificate SHA-256 digest: " + en.a.a(f102866i.digest(encoded)));
        printStream.println(name + " certificate SHA-1 digest: " + en.a.a(f102867j.digest(encoded)));
        printStream.println(name + " certificate MD5 digest: " + en.a.a(f102868k.digest(encoded)));
        if (verbose) {
            PublicKey publicKey = cert.getPublicKey();
            printStream.println(name + " key algorithm: " + publicKey.getAlgorithm());
            int bitLength = publicKey instanceof RSAKey ? ((RSAKey) publicKey).getModulus().bitLength() : publicKey instanceof ECKey ? ((ECKey) publicKey).getParams().getOrder().bitLength() : (!(publicKey instanceof DSAKey) || (params = ((DSAKey) publicKey).getParams()) == null) ? -1 : params.getP().bitLength();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name);
            sb2.append(" key size (bits): ");
            sb2.append(bitLength != -1 ? String.valueOf(bitLength) : "n/a");
            printStream.println(sb2.toString());
            byte[] encoded2 = publicKey.getEncoded();
            printStream.println(name + " public key SHA-256 digest: " + en.a.a(f102866i.digest(encoded2)));
            printStream.println(name + " public key SHA-1 digest: " + en.a.a(f102867j.digest(encoded2)));
            printStream.println(name + " public key MD5 digest: " + en.a.a(f102868k.digest(encoded2)));
        }
        if (pemOutput) {
            printStream.println(f102864g);
            String encodeToString = Base64.getEncoder().encodeToString(cert.getEncoded());
            int i10 = 0;
            while (i10 < encodeToString.length()) {
                int i11 = i10 + 64;
                System.out.println(encodeToString.substring(i10, i11 > encodeToString.length() ? encodeToString.length() : i11));
                i10 = i11;
            }
            System.out.println(f102865h);
        }
    }

    public static void i(String page) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a.class.getResourceAsStream(page), StandardCharsets.UTF_8));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return;
                    }
                    System.out.println(readLine);
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException unused) {
            throw new RuntimeException("Failed to read " + page + " resource");
        }
    }

    public static c j(OptionsParser optionsParser) throws OptionsParser.OptionsException, ParameterException {
        c cVar = new c();
        while (true) {
            String f10 = optionsParser.f();
            if (f10 != null) {
                if (!"ks".equals(f10)) {
                    if (!"ks-key-alias".equals(f10)) {
                        if (!"ks-pass".equals(f10)) {
                            if (!"key-pass".equals(f10)) {
                                if (!"pass-encoding".equals(f10)) {
                                    if (!"ks-type".equals(f10)) {
                                        if (!"ks-provider-name".equals(f10)) {
                                            if (!"ks-provider-class".equals(f10)) {
                                                if (!"ks-provider-arg".equals(f10)) {
                                                    if (!"key".equals(f10)) {
                                                        if (!"cert".equals(f10)) {
                                                            if (!"set-installed-data".equals(f10)) {
                                                                if (!"set-shared-uid".equals(f10)) {
                                                                    if (!"set-permission".equals(f10)) {
                                                                        if (!"set-rollback".equals(f10)) {
                                                                            if (!"set-auth".equals(f10)) {
                                                                                optionsParser.g();
                                                                                break;
                                                                            }
                                                                            cVar.i().setAuth(optionsParser.b(true));
                                                                        } else {
                                                                            cVar.i().setRollback(optionsParser.b(true));
                                                                        }
                                                                    } else {
                                                                        cVar.i().setPermission(optionsParser.b(true));
                                                                    }
                                                                } else {
                                                                    cVar.i().setSharedUid(optionsParser.b(true));
                                                                }
                                                            } else {
                                                                cVar.i().setInstalledData(optionsParser.b(true));
                                                            }
                                                        } else {
                                                            cVar.r(optionsParser.e("Certificate file"));
                                                        }
                                                    } else {
                                                        cVar.s(optionsParser.e("Private key file"));
                                                    }
                                                } else {
                                                    cVar.x(optionsParser.e("JCA KeyStore Provider constructor argument"));
                                                }
                                            } else {
                                                cVar.y(optionsParser.e("JCA KeyStore Provider class name"));
                                            }
                                        } else {
                                            cVar.z(optionsParser.e("JCA KeyStore Provider name"));
                                        }
                                    } else {
                                        cVar.A(optionsParser.e("KeyStore type"));
                                    }
                                } else {
                                    String e10 = optionsParser.e("Password character encoding");
                                    try {
                                        cVar.C(en.b.g(e10));
                                    } catch (IllegalArgumentException unused) {
                                        throw new ParameterException("Unsupported password character encoding requested using --pass-encoding: " + e10);
                                    }
                                }
                            } else {
                                cVar.t(optionsParser.e("Key password"));
                            }
                        } else {
                            cVar.w(optionsParser.e("KeyStore password"));
                        }
                    } else {
                        cVar.v(optionsParser.e("KeyStore key alias"));
                    }
                } else {
                    cVar.u(optionsParser.e("KeyStore file"));
                }
            } else {
                break;
            }
        }
        if (cVar.k()) {
            throw new ParameterException("Signer specified without arguments");
        }
        return cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0114, code lost:
    
        i(org.offlineApk.apksigner.a.f102862e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0117, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(String[] params) throws Exception {
        SigningCertificateLineage build;
        if (params.length == 0) {
            i(f102862e);
            return;
        }
        ArrayList arrayList = new ArrayList();
        b bVar = new b();
        OptionsParser optionsParser = new OptionsParser(params);
        int i10 = 0;
        boolean z10 = false;
        c cVar = null;
        c cVar2 = null;
        File file = null;
        String str = null;
        File file2 = null;
        while (true) {
            String f10 = optionsParser.f();
            if (f10 == null) {
                if (!bVar.d()) {
                    arrayList.add(bVar);
                }
                if (cVar.k()) {
                    throw new ParameterException("Signer parameters for old signer not present");
                }
                if (cVar2.k()) {
                    throw new ParameterException("Signer parameters for new signer not present");
                }
                if (file == null) {
                    throw new ParameterException("Output lineage file parameter not present");
                }
                String[] c10 = optionsParser.c();
                if (c10.length > 0) {
                    throw new ParameterException("Unexpected parameter(s) after " + str + ": " + c10[0]);
                }
                Iterator<E> it = arrayList.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).c();
                }
                en.b bVar2 = new en.b();
                try {
                    cVar.B("old signer");
                    d(cVar, bVar2);
                    SigningCertificateLineage.SignerConfig build2 = new SigningCertificateLineage.SignerConfig.Builder(cVar.h(), cVar.c().get(0)).build();
                    cVar2.B("new signer");
                    d(cVar2, bVar2);
                    SigningCertificateLineage.SignerConfig build3 = new SigningCertificateLineage.SignerConfig.Builder(cVar2.h(), cVar2.c().get(0)).build();
                    if (file2 != null) {
                        SigningCertificateLineage a10 = a(file2);
                        a10.updateSignerCapabilities(build2, cVar.i().build());
                        build = a10.spawnDescendant(build2, build3, cVar2.i().build());
                    } else {
                        build = new SigningCertificateLineage.Builder(build2, build3).setMinSdkVersion(i10).setOriginalCapabilities(cVar.i().build()).setNewCapabilities(cVar2.i().build()).build();
                    }
                    build.writeToFile(file);
                    bVar2.close();
                    if (z10) {
                        System.out.println("Rotation entry generated.");
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    try {
                        bVar2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            str = optionsParser.a();
            if ("help".equals(f10) || "h".equals(f10)) {
                break;
            }
            if ("out".equals(f10)) {
                file = new File(optionsParser.e("Output file name"));
            } else if ("in".equals(f10)) {
                file2 = new File(optionsParser.e("Input file name"));
            } else if ("old-signer".equals(f10)) {
                cVar = j(optionsParser);
            } else if ("new-signer".equals(f10)) {
                cVar2 = j(optionsParser);
            } else if ("min-sdk-version".equals(f10)) {
                i10 = optionsParser.d("Mininimum API Level");
            } else if ("v".equals(f10) || "verbose".equals(f10)) {
                z10 = optionsParser.b(true);
            } else if ("next-provider".equals(f10)) {
                if (!bVar.d()) {
                    arrayList.add(bVar);
                    bVar = new b();
                }
            } else if ("provider-class".equals(f10)) {
                bVar.f102870a = optionsParser.e("JCA Provider class name");
            } else if ("provider-arg".equals(f10)) {
                bVar.f102871b = optionsParser.e("JCA Provider constructor argument");
            } else {
                if (!"provider-pos".equals(f10)) {
                    throw new ParameterException("Unsupported option: " + str + ". See --help for supported options.");
                }
                bVar.f102872c = Integer.valueOf(optionsParser.d("JCA Provider position"));
            }
        }
    }

    @RequiresApi(api = 26)
    public static void l(String[] params) throws Exception {
        ApkSigner.SignerConfig signerConfig;
        File file;
        if (params.length == 0) {
            i(f102860c);
            return;
        }
        ArrayList<c> arrayList = new ArrayList(1);
        c cVar = new c();
        c cVar2 = new c();
        ArrayList arrayList2 = new ArrayList();
        b bVar = new b();
        OptionsParser optionsParser = new OptionsParser(params);
        int i10 = Integer.MAX_VALUE;
        int i11 = 33;
        int i12 = 1;
        boolean z10 = true;
        boolean z11 = true;
        boolean z12 = true;
        boolean z13 = true;
        boolean z14 = true;
        File file2 = null;
        String str = null;
        File file3 = null;
        SigningCertificateLineage signingCertificateLineage = null;
        SigningCertificateLineage signingCertificateLineage2 = null;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        boolean z20 = false;
        boolean z21 = false;
        boolean z22 = false;
        boolean z23 = false;
        boolean z24 = false;
        while (true) {
            String f10 = optionsParser.f();
            if (f10 != null) {
                str = optionsParser.a();
                if ("help".equals(f10) || "h".equals(f10)) {
                    break;
                }
                if ("out".equals(f10)) {
                    file3 = new File(optionsParser.e("Output file name"));
                } else if ("in".equals(f10)) {
                    file2 = new File(optionsParser.e("Input file name"));
                } else if ("min-sdk-version".equals(f10)) {
                    i12 = optionsParser.d("Mininimum API Level");
                    z15 = true;
                } else if ("max-sdk-version".equals(f10)) {
                    i10 = optionsParser.d("Maximum API Level");
                } else if ("rotation-min-sdk-version".equals(f10)) {
                    i11 = optionsParser.d("Minimum API Level for Rotation");
                } else if ("rotation-targets-dev-release".equals(f10)) {
                    z19 = optionsParser.b(true);
                } else if ("v1-signing-enabled".equals(f10)) {
                    z10 = optionsParser.b(true);
                } else if ("v2-signing-enabled".equals(f10)) {
                    z11 = optionsParser.b(true);
                } else if ("v3-signing-enabled".equals(f10)) {
                    z12 = optionsParser.b(true);
                } else if ("v4-signing-enabled".equals(f10)) {
                    z13 = optionsParser.b(true);
                    z20 = true;
                } else if ("force-stamp-overwrite".equals(f10)) {
                    z16 = optionsParser.b(true);
                } else if ("align-file-size".equals(f10)) {
                    z17 = true;
                } else if ("verity-enabled".equals(f10)) {
                    z18 = optionsParser.b(true);
                } else if ("debuggable-apk-permitted".equals(f10)) {
                    z14 = optionsParser.b(true);
                } else if ("next-signer".equals(f10)) {
                    if (!cVar.k()) {
                        arrayList.add(cVar);
                        cVar = new c();
                    }
                } else if ("ks".equals(f10)) {
                    cVar.u(optionsParser.e("KeyStore file"));
                } else if ("ks-key-alias".equals(f10)) {
                    cVar.v(optionsParser.e("KeyStore key alias"));
                } else if ("ks-pass".equals(f10)) {
                    cVar.w(optionsParser.e("KeyStore password"));
                } else if ("key-pass".equals(f10)) {
                    cVar.t(optionsParser.e("Key password"));
                } else if ("pass-encoding".equals(f10)) {
                    String e10 = optionsParser.e("Password character encoding");
                    try {
                        cVar.C(en.b.g(e10));
                    } catch (IllegalArgumentException unused) {
                        throw new ParameterException("Unsupported password character encoding requested using --pass-encoding: " + e10);
                    }
                } else if ("v1-signer-name".equals(f10)) {
                    cVar.D(optionsParser.e("JAR signature file basename"));
                } else if ("ks-type".equals(f10)) {
                    cVar.A(optionsParser.e("KeyStore type"));
                } else if ("ks-provider-name".equals(f10)) {
                    cVar.z(optionsParser.e("JCA KeyStore Provider name"));
                } else if ("ks-provider-class".equals(f10)) {
                    cVar.y(optionsParser.e("JCA KeyStore Provider class name"));
                } else if ("ks-provider-arg".equals(f10)) {
                    cVar.x(optionsParser.e("JCA KeyStore Provider constructor argument"));
                } else if ("key".equals(f10)) {
                    cVar.s(optionsParser.e("Private key file"));
                } else if ("cert".equals(f10)) {
                    cVar.r(optionsParser.e("Certificate file"));
                } else if ("lineage".equals(f10)) {
                    signingCertificateLineage = a(new File(optionsParser.e("Lineage File")));
                } else if ("v".equals(f10) || "verbose".equals(f10)) {
                    z24 = optionsParser.b(true);
                } else if ("next-provider".equals(f10)) {
                    if (!bVar.d()) {
                        arrayList2.add(bVar);
                        bVar = new b();
                    }
                } else if ("provider-class".equals(f10)) {
                    bVar.f102870a = optionsParser.e("JCA Provider class name");
                } else if ("provider-arg".equals(f10)) {
                    bVar.f102871b = optionsParser.e("JCA Provider constructor argument");
                } else if ("provider-pos".equals(f10)) {
                    bVar.f102872c = Integer.valueOf(optionsParser.d("JCA Provider position"));
                } else if ("stamp-signer".equals(f10)) {
                    cVar2 = j(optionsParser);
                    z21 = true;
                } else if ("stamp-lineage".equals(f10)) {
                    signingCertificateLineage2 = a(new File(optionsParser.e("Stamp Lineage File")));
                } else if ("deterministic-dsa-signing".equals(f10)) {
                    z22 = optionsParser.b(false);
                } else {
                    if (!"append-signature".equals(f10)) {
                        throw new ParameterException("Unsupported option: " + str + ". See --help for supported options.");
                    }
                    z23 = optionsParser.b(true);
                }
            } else {
                if (!cVar.k()) {
                    arrayList.add(cVar);
                }
                if (!bVar.d()) {
                    arrayList2.add(bVar);
                }
                if (arrayList.isEmpty()) {
                    throw new ParameterException("At least one signer must be specified");
                }
                String[] c10 = optionsParser.c();
                if (file2 == null) {
                    if (c10.length < 1) {
                        throw new ParameterException("Missing input APK");
                    }
                    if (c10.length > 1) {
                        throw new ParameterException("Unexpected parameter(s) after input APK (" + c10[1] + ")");
                    }
                    file2 = new File(c10[0]);
                } else if (c10.length > 0) {
                    throw new ParameterException("Unexpected parameter(s) after " + str + ": " + c10[0]);
                }
                if (z15 && i12 > i10) {
                    throw new ParameterException("Min API Level (" + i12 + ") > max API Level (" + i10 + ")");
                }
                Iterator<E> it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).c();
                }
                ArrayList arrayList3 = new ArrayList(arrayList.size());
                en.b bVar2 = new en.b();
                try {
                    int i13 = 0;
                    for (c cVar3 : arrayList) {
                        i13++;
                        cVar3.B("signer #" + i13);
                        boolean z25 = z22;
                        ApkSigner.SignerConfig b10 = b(cVar3, bVar2, z25);
                        if (b10 == null) {
                            bVar2.close();
                            return;
                        } else {
                            arrayList3.add(b10);
                            z22 = z25;
                        }
                    }
                    boolean z26 = z22;
                    if (z21) {
                        cVar2.B("stamp signer");
                        signerConfig = b(cVar2, bVar2, z26);
                        if (signerConfig == null) {
                            bVar2.close();
                            return;
                        }
                    } else {
                        signerConfig = null;
                    }
                    bVar2.close();
                    if (file3 == null) {
                        file3 = file2;
                    }
                    if (file2.getCanonicalPath().equals(file3.getCanonicalPath())) {
                        file = File.createTempFile("apksigner", ".apk");
                        file.deleteOnExit();
                    } else {
                        file = file3;
                    }
                    boolean z27 = z13;
                    ApkSigner.Builder rotationTargetsDevRelease = new ApkSigner.Builder(arrayList3).setInputApk(file2).setOutputApk(file).setOtherSignersSignaturesPreserved(z23).setV1SigningEnabled(z10).setV2SigningEnabled(z11).setV3SigningEnabled(z12).setV4SigningEnabled(z27).setForceSourceStampOverwrite(z16).setAlignFileSize(z17).setVerityEnabled(z18).setV4ErrorReportingEnabled(z27 && z20).setDebuggableApkPermitted(z14).setSigningCertificateLineage(signingCertificateLineage).setMinSdkVersionForRotation(i11).setRotationTargetsDevRelease(z19);
                    if (z15) {
                        rotationTargetsDevRelease.setMinSdkVersion(i12);
                    }
                    if (z27) {
                        File file4 = new File(file3.getCanonicalPath() + ".idsig");
                        Files.deleteIfExists(file4.toPath());
                        rotationTargetsDevRelease.setV4SignatureOutputFile(file4);
                    }
                    if (signerConfig != null) {
                        rotationTargetsDevRelease.setSourceStampSignerConfig(signerConfig).setSourceStampSigningCertificateLineage(signingCertificateLineage2);
                    }
                    try {
                        rotationTargetsDevRelease.build().sign();
                        if (!file.getCanonicalPath().equals(file3.getCanonicalPath())) {
                            Files.move(file.toPath(), file3.toPath(), StandardCopyOption.REPLACE_EXISTING);
                        }
                        if (z24) {
                            System.out.println("Signed");
                            return;
                        }
                        return;
                    } catch (MinSdkVersionException e11) {
                        e11.getMessage().endsWith(".");
                        throw new MinSdkVersionException("Failed to determine APK's minimum supported platform version. Use --min-sdk-version to override", e11);
                    }
                } finally {
                }
            }
        }
        i(f102860c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0103, code lost:
    
        i(org.offlineApk.apksigner.a.f102861d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0106, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m(String[] params) throws Exception {
        int i10;
        boolean z10;
        if (params.length == 0) {
            i(f102861d);
            return;
        }
        OptionsParser optionsParser = new OptionsParser(params);
        File file = null;
        File file2 = null;
        String str = null;
        int i11 = Integer.MAX_VALUE;
        boolean z11 = false;
        boolean z12 = false;
        int i12 = 1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        String str2 = null;
        while (true) {
            String f10 = optionsParser.f();
            if (f10 == null) {
                String[] c10 = optionsParser.c();
                if (file == null) {
                    i10 = 0;
                    if (c10.length < 1) {
                        throw new ParameterException("Missing APK");
                    }
                    if (c10.length > 1) {
                        throw new ParameterException("Unexpected parameter(s) after APK (" + c10[1] + ")");
                    }
                    file = new File(c10[0]);
                } else {
                    if (c10.length > 0) {
                        throw new ParameterException("Unexpected parameter(s) after " + str2 + ": " + c10[0]);
                    }
                    i10 = 0;
                }
                if (z11 && z12 && i12 > i11) {
                    throw new ParameterException("Min API Level (" + i12 + ") > max API Level (" + i11 + ")");
                }
                ApkVerifier.Builder builder = new ApkVerifier.Builder(file);
                if (z11) {
                    builder.setMinCheckedPlatformVersion(i12);
                }
                if (z12) {
                    builder.setMaxCheckedPlatformVersion(i11);
                }
                if (file2 != null) {
                    if (!file2.exists()) {
                        throw new ParameterException("V4 signature file does not exist: " + file2.getCanonicalPath());
                    }
                    builder.setV4SignatureFile(file2);
                }
                ApkVerifier build = builder.build();
                try {
                    ApkVerifier.Result verifySourceStamp = z14 ? build.verifySourceStamp(str) : build.verify();
                    boolean isVerified = verifySourceStamp.isVerified();
                    ApkVerifier.Result.SourceStampInfo sourceStampInfo = verifySourceStamp.getSourceStampInfo();
                    if (isVerified) {
                        List<X509Certificate> signerCertificates = verifySourceStamp.getSignerCertificates();
                        if (z15) {
                            PrintStream printStream = System.out;
                            printStream.println("Verifies");
                            printStream.println("Verified using v1 scheme (JAR signing): " + verifySourceStamp.isVerifiedUsingV1Scheme());
                            printStream.println("Verified using v2 scheme (APK Signature Scheme v2): " + verifySourceStamp.isVerifiedUsingV2Scheme());
                            printStream.println("Verified using v3 scheme (APK Signature Scheme v3): " + verifySourceStamp.isVerifiedUsingV3Scheme());
                            printStream.println("Verified using v3.1 scheme (APK Signature Scheme v3.1): " + verifySourceStamp.isVerifiedUsingV31Scheme());
                            printStream.println("Verified using v4 scheme (APK Signature Scheme v4): " + verifySourceStamp.isVerifiedUsingV4Scheme());
                            printStream.println("Verified for SourceStamp: " + verifySourceStamp.isSourceStampVerified());
                            if (!z14) {
                                printStream.println("Number of signers: " + signerCertificates.size());
                            }
                        }
                        if (z13) {
                            if (verifySourceStamp.isVerifiedUsingV31Scheme()) {
                                for (ApkVerifier.Result.V3SchemeSignerInfo v3SchemeSignerInfo : verifySourceStamp.getV31SchemeSigners()) {
                                    X509Certificate certificate = v3SchemeSignerInfo.getCertificate();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Signer (minSdkVersion=");
                                    sb2.append(v3SchemeSignerInfo.getMinSdkVersion());
                                    sb2.append(v3SchemeSignerInfo.getRotationTargetsDevRelease() ? " (dev release=true)" : "");
                                    sb2.append(", maxSdkVersion=");
                                    sb2.append(v3SchemeSignerInfo.getMaxSdkVersion());
                                    sb2.append(")");
                                    h(certificate, sb2.toString(), z15, z17);
                                }
                                z10 = z17;
                                for (ApkVerifier.Result.V3SchemeSignerInfo v3SchemeSignerInfo2 : verifySourceStamp.getV3SchemeSigners()) {
                                    h(v3SchemeSignerInfo2.getCertificate(), "Signer (minSdkVersion=" + v3SchemeSignerInfo2.getMinSdkVersion() + ", maxSdkVersion=" + v3SchemeSignerInfo2.getMaxSdkVersion() + ")", z15, z10);
                                }
                            } else {
                                z10 = z17;
                                Iterator<X509Certificate> it = signerCertificates.iterator();
                                int i13 = i10;
                                while (it.hasNext()) {
                                    i13++;
                                    h(it.next(), "Signer #" + i13, z15, z10);
                                }
                            }
                            if (sourceStampInfo != null) {
                                h(sourceStampInfo.getCertificate(), "Source Stamp Signer", z15, z10);
                            }
                        }
                    } else {
                        System.err.println("DOES NOT VERIFY");
                    }
                    for (ApkVerifier.IssueWithParams issueWithParams : verifySourceStamp.getErrors()) {
                        System.err.println("ERROR: " + ((Object) issueWithParams));
                    }
                    PrintStream printStream2 = z16 ? System.err : System.out;
                    Iterator<ApkVerifier.IssueWithParams> it2 = verifySourceStamp.getWarnings().iterator();
                    while (it2.hasNext()) {
                        printStream2.println("WARNING: " + ((Object) it2.next()));
                        i10 = 1;
                    }
                    for (ApkVerifier.Result.V1SchemeSignerInfo v1SchemeSignerInfo : verifySourceStamp.getV1SchemeSigners()) {
                        String name = v1SchemeSignerInfo.getName();
                        for (ApkVerifier.IssueWithParams issueWithParams2 : v1SchemeSignerInfo.getErrors()) {
                            System.err.println("ERROR: JAR signer " + name + ": " + ((Object) issueWithParams2));
                            i10 = i10;
                        }
                        int i14 = i10;
                        Iterator<ApkVerifier.IssueWithParams> it3 = v1SchemeSignerInfo.getWarnings().iterator();
                        int i15 = i14;
                        while (it3.hasNext()) {
                            printStream2.println("WARNING: JAR signer " + name + ": " + ((Object) it3.next()));
                            i15 = 1;
                        }
                        i10 = i15;
                    }
                    int i16 = i10;
                    Iterator<ApkVerifier.Result.V2SchemeSignerInfo> it4 = verifySourceStamp.getV2SchemeSigners().iterator();
                    int i17 = i16;
                    while (it4.hasNext()) {
                        ApkVerifier.Result.V2SchemeSignerInfo next = it4.next();
                        String str3 = "signer #" + (next.getIndex() + 1);
                        for (ApkVerifier.IssueWithParams issueWithParams3 : next.getErrors()) {
                            System.err.println("ERROR: APK Signature Scheme v2 " + str3 + ": " + ((Object) issueWithParams3));
                            it4 = it4;
                        }
                        Iterator<ApkVerifier.Result.V2SchemeSignerInfo> it5 = it4;
                        Iterator<ApkVerifier.IssueWithParams> it6 = next.getWarnings().iterator();
                        while (it6.hasNext()) {
                            printStream2.println("WARNING: APK Signature Scheme v2 " + str3 + ": " + ((Object) it6.next()));
                            i17 = 1;
                        }
                        it4 = it5;
                    }
                    Iterator<ApkVerifier.Result.V3SchemeSignerInfo> it7 = verifySourceStamp.getV3SchemeSigners().iterator();
                    while (it7.hasNext()) {
                        ApkVerifier.Result.V3SchemeSignerInfo next2 = it7.next();
                        String str4 = "signer #" + (next2.getIndex() + 1);
                        for (ApkVerifier.IssueWithParams issueWithParams4 : next2.getErrors()) {
                            System.err.println("ERROR: APK Signature Scheme v3 " + str4 + ": " + ((Object) issueWithParams4));
                            it7 = it7;
                            i17 = i17;
                        }
                        Iterator<ApkVerifier.Result.V3SchemeSignerInfo> it8 = it7;
                        Iterator<ApkVerifier.IssueWithParams> it9 = next2.getWarnings().iterator();
                        while (it9.hasNext()) {
                            printStream2.println("WARNING: APK Signature Scheme v3 " + str4 + ": " + ((Object) it9.next()));
                            i17 = 1;
                        }
                        it7 = it8;
                    }
                    int i18 = i17;
                    for (ApkVerifier.Result.V3SchemeSignerInfo v3SchemeSignerInfo3 : verifySourceStamp.getV31SchemeSigners()) {
                        String str5 = "signer #" + (v3SchemeSignerInfo3.getIndex() + 1) + "(minSdkVersion=" + v3SchemeSignerInfo3.getMinSdkVersion() + ", maxSdkVersion=" + v3SchemeSignerInfo3.getMaxSdkVersion() + ")";
                        for (ApkVerifier.IssueWithParams issueWithParams5 : v3SchemeSignerInfo3.getErrors()) {
                            System.err.println("ERROR: APK Signature Scheme v3.1 " + str5 + ": " + ((Object) issueWithParams5));
                        }
                        Iterator<ApkVerifier.IssueWithParams> it10 = v3SchemeSignerInfo3.getWarnings().iterator();
                        while (it10.hasNext()) {
                            printStream2.println("WARNING: APK Signature Scheme v3.1 " + str5 + ": " + ((Object) it10.next()));
                            i18 = 1;
                        }
                    }
                    if (sourceStampInfo != null) {
                        for (ApkVerifier.IssueWithParams issueWithParams6 : sourceStampInfo.getErrors()) {
                            System.err.println("ERROR: SourceStamp: " + ((Object) issueWithParams6));
                        }
                        Iterator<ApkVerifier.IssueWithParams> it11 = sourceStampInfo.getWarnings().iterator();
                        while (it11.hasNext()) {
                            printStream2.println("WARNING: SourceStamp: " + ((Object) it11.next()));
                        }
                    }
                    if (!isVerified) {
                        System.exit(1);
                        return;
                    } else {
                        if (!z16 || i18 == 0) {
                            return;
                        }
                        System.exit(1);
                        return;
                    }
                } catch (MinSdkVersionException e10) {
                    e10.getMessage().endsWith(".");
                    throw new MinSdkVersionException("Failed to determine APK's minimum supported platform version. Use --min-sdk-version to override", e10);
                }
            }
            str2 = optionsParser.a();
            if ("min-sdk-version".equals(f10)) {
                i12 = optionsParser.d("Mininimum API Level");
                z11 = true;
            } else if ("max-sdk-version".equals(f10)) {
                i11 = optionsParser.d("Maximum API Level");
                z12 = true;
            } else if ("print-certs".equals(f10)) {
                z13 = optionsParser.b(true);
            } else if ("print-certs-pem".equals(f10)) {
                z17 = optionsParser.b(true);
                if (z17 && !z13) {
                    z13 = true;
                }
            } else if ("v".equals(f10) || "verbose".equals(f10)) {
                z15 = optionsParser.b(true);
            } else if ("Werr".equals(f10)) {
                z16 = optionsParser.b(true);
            } else {
                if ("help".equals(f10) || "h".equals(f10)) {
                    break;
                }
                if ("v4-signature-file".equals(f10)) {
                    file2 = new File(optionsParser.e("Input V4 Signature File"));
                } else if ("in".equals(f10)) {
                    file = new File(optionsParser.e("Input APK file"));
                } else if ("verify-source-stamp".equals(f10)) {
                    z14 = optionsParser.b(true);
                } else {
                    if (!"stamp-cert-digest".equals(f10)) {
                        throw new ParameterException("Unsupported option: " + str2 + ". See --help for supported options.");
                    }
                    str = optionsParser.e("Expected source stamp certificate digest");
                }
            }
        }
    }
}
