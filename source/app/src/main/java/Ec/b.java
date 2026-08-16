package ec;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import yd.C16181m;

public class b {

    public static final Map<Integer, byte[]> f85428a = new ConcurrentHashMap();

    public static volatile String f85429b = null;

    public static void a(int hash, ByteBuffer payload) {
        if (payload == null || payload.capacity() <= 0) {
            return;
        }
        ByteBuffer asReadOnlyBuffer = payload.asReadOnlyBuffer();
        asReadOnlyBuffer.rewind();
        int remaining = asReadOnlyBuffer.remaining();
        byte[] bArr = new byte[remaining];
        asReadOnlyBuffer.get(bArr);
        if (remaining > 0) {
            f85428a.put(Integer.valueOf(hash), bArr);
        }
    }

    public static void b() {
        f85429b = null;
    }

    public static boolean c(int hash) {
        return new File(d() + hash + ".vsc").exists();
    }

    public static String d() {
        String str = f85429b;
        if (str != null) {
            return str;
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_VULKAN/";
        }
        return W7.b.f27306f.f2458a.f() + "/vulkan/";
    }

    public static String e() {
        return f85429b;
    }

    public static ByteBuffer f(int hash) {
        if (h(hash)) {
            return g(hash);
        }
        File file = new File(d() + hash + ".vsc");
        if (file.exists()) {
            try {
                ByteBuffer i10 = i(file);
                if (i10 != null && i10.capacity() > 0) {
                    a(hash, i10);
                    return i10;
                }
                file.delete();
                return null;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static ByteBuffer g(int hash) {
        byte[] bArr = f85428a.get(Integer.valueOf(hash));
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return ByteBuffer.wrap(bArr);
    }

    public static boolean h(int hash) {
        byte[] bArr = f85428a.get(Integer.valueOf(hash));
        return bArr != null && bArr.length > 0;
    }

    public static ByteBuffer i(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IllegalArgumentException("Arquivo > 2GB: use leitura por blocos ou mapeamento.");
            }
            int i10 = (int) length;
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (i11 < i10) {
                int read = fileInputStream.read(bArr, i11, i10 - i11);
                if (read == -1) {
                    break;
                }
                i11 += read;
            }
            if (i11 != i10) {
                throw new EOFException("Fim inesperado do arquivo.");
            }
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            fileInputStream.close();
            return wrap;
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static boolean j(int hash) {
        if (h(hash)) {
            return true;
        }
        File file = new File(d() + hash + ".vsc");
        if (file.exists()) {
            try {
                ByteBuffer i10 = i(file);
                if (i10 != null && i10.capacity() > 0) {
                    a(hash, i10);
                    return h(hash);
                }
                file.delete();
                return false;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static String k(String path) {
        if (path == null || path.isEmpty()) {
            return "";
        }
        String str = File.separator;
        if (path.endsWith(str) || path.endsWith("/") || path.endsWith(C16181m.f130232i)) {
            return path;
        }
        return path + str;
    }

    public static void l(int hash, ByteBuffer payload) {
        try {
            m(new File(d() + hash + ".vsc"), payload);
            a(hash, payload);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static void m(File file, ByteBuffer buffer) throws IOException {
        ByteBuffer asReadOnlyBuffer = buffer.asReadOnlyBuffer();
        asReadOnlyBuffer.rewind();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            FileChannel channel = fileOutputStream.getChannel();
            while (asReadOnlyBuffer.hasRemaining()) {
                try {
                    channel.write(asReadOnlyBuffer);
                } finally {
                }
            }
            fileOutputStream.getFD().sync();
            if (channel != null) {
                channel.close();
            }
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void n(File folder) {
        if (folder == null) {
            f85429b = null;
        } else {
            f85429b = k(folder.getAbsolutePath());
        }
    }
}
