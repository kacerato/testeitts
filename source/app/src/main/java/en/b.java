package en;

import java.io.ByteArrayOutputStream;
import java.io.Console;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b implements AutoCloseable {

    public static final String f85926e = "stdin";

    public boolean f85929d;

    public final Map<File, InputStream> f85928c = new HashMap();

    public final Charset f85927b = h();

    public static void a(List<char[]> passwords, char[] password) {
        Iterator<char[]> it = passwords.iterator();
        while (it.hasNext()) {
            if (Arrays.equals(password, it.next())) {
                return;
            }
        }
        passwords.add(password);
    }

    public static char[] d(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        char[] cArr = new char[bytes.length];
        for (int i10 = 0; i10 < bytes.length; i10++) {
            cArr[i10] = (char) (bytes[i10] & 255);
        }
        return cArr;
    }

    public static char[] e(byte[] pwdBytes, Charset encoding) throws IOException {
        CharsetDecoder newDecoder = encoding.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharBuffer decode = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(pwdBytes));
        char[] cArr = new char[decode.remaining()];
        decode.get(cArr);
        return cArr;
    }

    public static byte[] f(char[] pwd, Charset cs) throws IOException {
        CharsetEncoder newEncoder = cs.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        ByteBuffer encode = newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(pwd));
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    public static Charset g(String charsetName) throws IllegalArgumentException {
        return "cp65001".equalsIgnoreCase(charsetName) ? StandardCharsets.UTF_8 : Charset.forName(charsetName);
    }

    public static Charset h() {
        if (m()) {
            return null;
        }
        try {
            Method declaredMethod = Console.class.getDeclaredMethod("encoding", null);
            declaredMethod.setAccessible(true);
            String str = (String) declaredMethod.invoke(null, null);
            return str == null ? Charset.defaultCharset() : g(str);
        } catch (IllegalArgumentException | ReflectiveOperationException unused) {
            return null;
        }
    }

    public static boolean m() {
        if (System.getProperty("java.specification.version") == null) {
            return true;
        }
        return !r0.startsWith("1.");
    }

    public static byte[] n(InputStream in2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = in2.read();
            if (read == -1 || read == 10) {
                break;
            }
            if (read == 13) {
                int read2 = in2.read();
                if (read2 == -1 || read2 == 10) {
                    break;
                }
                if (!(in2 instanceof PushbackInputStream)) {
                    in2 = new PushbackInputStream(in2);
                }
                ((PushbackInputStream) in2).unread(read2);
            }
            byteArrayOutputStream.write(read);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public final void b(List<char[]> passwords, char[] pwd, Charset... additionalEncodings) {
        if (additionalEncodings != null && additionalEncodings.length > 0) {
            for (Charset charset : additionalEncodings) {
                try {
                    a(passwords, d(f(pwd, charset)));
                } catch (IOException unused) {
                }
            }
        }
        a(passwords, pwd);
        Charset charset2 = this.f85927b;
        if (charset2 != null) {
            try {
                a(passwords, d(f(pwd, charset2)));
            } catch (IOException unused2) {
            }
        }
        try {
            a(passwords, d(f(pwd, Charset.defaultCharset())));
        } catch (IOException unused3) {
        }
    }

    public final void c() {
        if (this.f85929d) {
            throw new IllegalStateException("Closed");
        }
    }

    @Override
    public void close() {
        Iterator<InputStream> it = this.f85928c.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
        this.f85928c.clear();
        this.f85929d = true;
    }

    public List<char[]> j(String spec, String description, Charset... additionalPwdEncodings) throws IOException {
        c();
        if (spec.startsWith("pass:")) {
            return l(spec.substring(5).toCharArray(), additionalPwdEncodings);
        }
        if (f85926e.equals(spec)) {
            Console console = System.console();
            if (console != null) {
                char[] readPassword = console.readPassword(description + ": ", new Object[0]);
                if (readPassword != null) {
                    return l(readPassword, additionalPwdEncodings);
                }
                throw new IOException("Failed to read " + description + ": console closed");
            }
            System.out.println(description + ": ");
            byte[] n10 = n(System.f92798in);
            if (n10.length != 0) {
                return k(n10, Charset.defaultCharset(), additionalPwdEncodings);
            }
            throw new IOException("Failed to read " + description + ": standard input closed");
        }
        if (spec.startsWith("file:")) {
            File canonicalFile = new File(spec.substring(5)).getCanonicalFile();
            InputStream inputStream = this.f85928c.get(canonicalFile);
            if (inputStream == null) {
                inputStream = new FileInputStream(canonicalFile);
                this.f85928c.put(canonicalFile, inputStream);
            }
            byte[] n11 = n(inputStream);
            if (n11.length != 0) {
                return k(n11, Charset.defaultCharset(), additionalPwdEncodings);
            }
            throw new IOException("Failed to read " + description + " : end of file reached in " + ((Object) canonicalFile));
        }
        if (!spec.startsWith("env:")) {
            throw new IOException("Unsupported password spec for " + description + ": " + spec);
        }
        String str = System.getenv(spec.substring(4));
        if (str != null) {
            return l(str.toCharArray(), additionalPwdEncodings);
        }
        throw new IOException("Failed to read " + description + ": environment variable " + str + " not specified");
    }

    public final List<char[]> k(byte[] encodedPwd, Charset encodingForDecoding, Charset... additionalEncodings) {
        ArrayList arrayList = new ArrayList(4);
        try {
            b(arrayList, e(encodedPwd, encodingForDecoding), additionalEncodings);
        } catch (IOException unused) {
        }
        a(arrayList, d(encodedPwd));
        return arrayList;
    }

    public final List<char[]> l(char[] pwd, Charset... additionalEncodings) {
        ArrayList arrayList = new ArrayList(3);
        b(arrayList, pwd, additionalEncodings);
        return arrayList;
    }
}
