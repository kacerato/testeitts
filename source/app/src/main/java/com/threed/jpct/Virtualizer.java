package com.threed.jpct;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.constant.ConstantDescs;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class Virtualizer {
    private static int cnt;
    private byte[] buffy;
    private boolean cleaned;
    private Context ctx;
    private long currentSize;
    private long maxSize;
    private int myCnt;
    private Map<Integer, String> virtualized;

    public Virtualizer(int i10) {
        this();
        this.maxSize = i10 * 1048576;
    }

    private void cleanUpInstanceOnly(Context context) throws Exception {
        Logger.log("Finalizing Virtualizer...cleaning up instance cache!");
        String[] fileList = context.fileList();
        boolean z10 = true;
        for (String str : fileList) {
            if (str.startsWith("_vir_" + this.myCnt) && str.endsWith(".dat")) {
                z10 &= context.deleteFile(str);
            }
        }
        Logger.log("Cleaned up instance cache (" + fileList.length + " files): " + z10);
    }

    private ByteBuffer readIntoBuffer(InputStream inputStream) throws Exception {
        int read = ((inputStream.read() & 255) << 24) + ((inputStream.read() & 255) << 16) + ((inputStream.read() & 255) << 8) + (inputStream.read() & 255);
        ByteBuffer order = ByteBuffer.allocateDirect(read).order(ByteOrder.nativeOrder());
        Logger.log("Created temp buffer with size: " + read, 3);
        byte[] bArr = new byte[read];
        int read2 = inputStream.read(bArr);
        if (read2 == read) {
            order.put(bArr);
            order.rewind();
            return order;
        }
        throw new RuntimeException("Read file length doesn't match buffer length: " + read2 + "!=" + read);
    }

    private void writeInt(int i10, OutputStream outputStream, boolean z10) throws Exception {
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN || z10) {
            byte[] bArr = this.buffy;
            bArr[0] = (byte) (i10 >> 24);
            bArr[1] = (byte) ((i10 >> 16) & 255);
            bArr[2] = (byte) ((i10 >> 8) & 255);
            bArr[3] = (byte) (i10 & 255);
        } else {
            byte[] bArr2 = this.buffy;
            bArr2[3] = (byte) (i10 >> 24);
            bArr2[2] = (byte) ((i10 >> 16) & 255);
            bArr2[1] = (byte) ((i10 >> 8) & 255);
            bArr2[0] = (byte) (i10 & 255);
        }
        outputStream.write(this.buffy);
    }

    private void writeShort(short s10, OutputStream outputStream) throws Exception {
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.buffy;
            bArr[0] = (byte) (s10 >> 8);
            bArr[1] = (byte) (s10 & 255);
        } else {
            byte[] bArr2 = this.buffy;
            bArr2[1] = (byte) (s10 >> 8);
            bArr2[0] = (byte) (s10 & 255);
        }
        outputStream.write(this.buffy, 0, 2);
    }

    public void cleanUp() {
        Context context = this.ctx;
        if (context != null) {
            try {
                cleanUpInstanceOnly(context);
            } catch (Exception e10) {
                Logger.log("Failed to clean up virtualizer: " + e10.getMessage());
            }
        }
    }

    public void finalize() {
        Context context = this.ctx;
        if (context != null) {
            try {
                cleanUpInstanceOnly(context);
            } catch (Exception unused) {
            }
        }
    }

    public void freeHandles(Texture texture) {
        if (this.virtualized.containsKey(Integer.valueOf(System.identityHashCode(texture)))) {
            texture.texels = null;
            texture.zippedTexels = null;
        }
    }

    public InputStream getInputCacheStream(String str) {
        try {
            return new FileInputStream(new File(this.ctx.getCacheDir(), str));
        } catch (FileNotFoundException unused) {
            Logger.log("File '" + str + "' not in cache!");
            return null;
        }
    }

    public OutputStream getOutputCacheStream(String str) {
        try {
            return new FileOutputStream(new File(this.ctx.getCacheDir(), str));
        } catch (FileNotFoundException unused) {
            Logger.log("Cache not available!");
            return null;
        }
    }

    public boolean isCached(String str) {
        return new File(this.ctx.getCacheDir(), str).isFile();
    }

    public boolean isFull() {
        long j10 = this.maxSize;
        return j10 != -1 && j10 <= this.currentSize;
    }

    public boolean isVirtual(Texture texture) {
        return this.virtualized.get(Integer.valueOf(System.identityHashCode(texture))) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.InputStream] */
    public ByteBuffer readFromCache(String str) {
        BufferedInputStream bufferedInputStream;
        Context context = this.ctx;
        ?? r22 = 0;
        try {
            if (context == null) {
                Logger.log("No context set!", 0);
                return null;
            }
            try {
                File file = new File(context.getCacheDir(), str);
                if (!file.isFile()) {
                    Logger.log(String.valueOf(str) + " not found in cache!");
                    return null;
                }
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 2048);
                try {
                    ByteBuffer readIntoBuffer = readIntoBuffer(bufferedInputStream);
                    Logger.log("Loaded " + str + " from cache!");
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return readIntoBuffer;
                } catch (Exception e10) {
                    e = e10;
                    Logger.log("Unable to load " + str + " from cache: " + ((Object) e), 0);
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                }
            } catch (Exception e11) {
                e = e11;
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (r22 != 0) {
                    try {
                        r22.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            r22 = context;
        }
    }

    public boolean restore(Texture texture) {
        int read;
        if (this.ctx == null) {
            Logger.log("No context set!", 0);
            return false;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                String str = this.virtualized.get(Integer.valueOf(System.identityHashCode(texture)));
                if (str == null) {
                    return false;
                }
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(this.ctx.openFileInput(str), 2048);
                try {
                    byte[] bArr = new byte[2048];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    do {
                        read = bufferedInputStream2.read(bArr);
                        if (read != -1) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    } while (read > -1);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (str.endsWith("_z_.dat")) {
                        texture.zippedTexels = byteArray;
                    } else {
                        texture.texels = ZipHelper.byteArrayToInt(byteArray);
                    }
                    Logger.log("Retrieved texture data from disk!");
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Exception e10) {
                    e = e10;
                    bufferedInputStream = bufferedInputStream2;
                    Logger.log("Unable to restore texture: " + e.getMessage(), 1);
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public void setContext(Context context) {
        this.ctx = context;
        try {
            cleanUp(context);
        } catch (Exception unused) {
        }
    }

    public boolean store(Texture texture) {
        boolean z10;
        Context context = this.ctx;
        if (context == null) {
            Logger.log("No context set!", 0);
            return false;
        }
        if (texture.texels == null && texture.zippedTexels == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                cleanUp(context);
                byte[] bArr = texture.zippedTexels;
                if (bArr == null) {
                    bArr = ZipHelper.intToByteArray(texture.texels);
                    z10 = false;
                } else {
                    z10 = true;
                }
                long j10 = this.maxSize;
                if (j10 != -1 && this.currentSize + bArr.length > j10) {
                    Logger.log("Maximum disk space f\u00fcr virtual textures exceeded!", 1);
                    return false;
                }
                this.currentSize += bArr.length;
                Integer valueOf = Integer.valueOf(System.identityHashCode(texture));
                StringBuilder sb2 = new StringBuilder("_vir_");
                sb2.append(this.myCnt);
                sb2.append(ConstantDescs.DEFAULT_NAME);
                sb2.append((Object) valueOf);
                sb2.append(z10 ? "_z_" : "_n_");
                sb2.append(".dat");
                String sb3 = sb2.toString();
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(this.ctx.openFileOutput(sb3, 0), 2048);
                try {
                    bufferedOutputStream2.write(bArr);
                    this.virtualized.put(valueOf, sb3);
                    texture.texels = null;
                    texture.zippedTexels = null;
                    Logger.log("Stored texture data on disk!");
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Exception e10) {
                    e = e10;
                    bufferedOutputStream = bufferedOutputStream2;
                    Logger.log("Unable to virtualize texture: " + e.getMessage(), 1);
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public boolean storeInCache(ByteBuffer byteBuffer, String str) {
        BufferedOutputStream bufferedOutputStream;
        if (this.ctx == null) {
            Logger.log("No context set!", 0);
            return false;
        }
        if (byteBuffer == null) {
            return false;
        }
        byteBuffer.rewind();
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                File cacheDir = this.ctx.getCacheDir();
                ArrayList<File> arrayList = new ArrayList(Arrays.asList(cacheDir.listFiles()));
                Collections.sort(arrayList, new Comparator<File>() {
                    @Override
                    public int compare(File file, File file2) {
                        return (int) (-Math.signum((float) (file.lastModified() - file2.lastModified())));
                    }
                });
                long j10 = 0;
                for (File file : arrayList) {
                    if (!file.isDirectory()) {
                        j10 += file.length();
                    }
                }
                if (j10 > 5242880) {
                    Logger.log("Purging cache directory!");
                    for (File file2 : arrayList) {
                        if (j10 < 5242880) {
                            break;
                        }
                        if (!file2.isDirectory()) {
                            j10 -= file2.length();
                            file2.delete();
                        }
                    }
                }
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(cacheDir, str)), 2048);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int limit = byteBuffer.limit();
            byte[] bArr = new byte[limit];
            byteBuffer.rewind();
            byteBuffer.get(bArr);
            writeInt(limit, bufferedOutputStream, true);
            bufferedOutputStream.write(bArr);
            byteBuffer.rewind();
            try {
                bufferedOutputStream.close();
            } catch (IOException unused) {
            }
            Logger.log("Stored " + str + " in cache!");
            return true;
        } catch (Exception e11) {
            e = e11;
            bufferedOutputStream2 = bufferedOutputStream;
            Logger.log("Unable to cache buffer: " + e.getMessage(), 1);
            if (Logger.isDebugEnabled()) {
                Logger.log(e);
            }
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    public Virtualizer() {
        this.myCnt = 0;
        this.virtualized = new HashMap();
        this.cleaned = false;
        this.ctx = null;
        this.maxSize = -1L;
        this.buffy = new byte[4];
        int i10 = cnt;
        cnt = i10 + 1;
        this.myCnt = i10;
    }

    private void cleanUp(Context context) throws Exception {
        if (this.cleaned) {
            return;
        }
        boolean z10 = true;
        this.cleaned = true;
        String[] fileList = context.fileList();
        for (String str : fileList) {
            if (str.startsWith("_vir_") && str.endsWith(".dat")) {
                z10 &= context.deleteFile(str);
            }
        }
        Logger.log("Cleaned up cache (" + fileList.length + " files): " + z10);
    }

    public <T extends Buffer> T restore(CompiledInstance compiledInstance, Class<T> cls, String str) {
        String str2;
        InputStream inputStream;
        BufferedInputStream bufferedInputStream;
        int i10 = 0;
        InputStream inputStream2 = null;
        inputStream2 = null;
        inputStream2 = null;
        BufferedInputStream bufferedInputStream2 = null;
        if (this.ctx == null) {
            Logger.log("No context set!", 0);
            return null;
        }
        if (IntBuffer.class.equals(cls)) {
            str2 = "_ib_";
            i10 = 1;
        } else {
            str2 = "_bb_";
        }
        if (FloatBuffer.class.equals(cls)) {
            str2 = "_fb_";
            i10 = 2;
        }
        if (ShortBuffer.class.equals(cls)) {
            str2 = "_sb_";
            i10 = 3;
        }
        String str3 = "_vir_" + this.myCnt + ConstantDescs.DEFAULT_NAME + (String.valueOf(System.identityHashCode(compiledInstance)) + ConstantDescs.DEFAULT_NAME + str) + str2 + ".dat";
        String str4 = this.virtualized.get(Integer.valueOf(System.identityHashCode(compiledInstance)));
        if (str4 != null) {
            try {
                if (str4.indexOf(str3) != -1) {
                    try {
                        Logger.log("Trying to restore buffer from file " + str3, 3);
                        bufferedInputStream = new BufferedInputStream(new GZIPInputStream(this.ctx.openFileInput(str3)), 2048);
                    } catch (Exception e10) {
                        e = e10;
                        inputStream = null;
                    }
                    try {
                        ByteBuffer readIntoBuffer = readIntoBuffer(bufferedInputStream);
                        if (i10 == 0) {
                            inputStream2 = readIntoBuffer;
                        } else if (i10 == 1) {
                            inputStream2 = readIntoBuffer.asIntBuffer();
                        } else if (i10 == 2) {
                            inputStream2 = readIntoBuffer.asFloatBuffer();
                        } else if (i10 == 3) {
                            inputStream2 = readIntoBuffer.asShortBuffer();
                        }
                        Logger.log("Buffer of type " + i10 + " restored from disk!");
                        try {
                            bufferedInputStream.close();
                            inputStream2 = inputStream2;
                        } catch (IOException unused) {
                        }
                    } catch (Exception e11) {
                        e = e11;
                        InputStream inputStream3 = inputStream2;
                        bufferedInputStream2 = bufferedInputStream;
                        inputStream = inputStream3;
                        Logger.log("Unable to restore buffer of type " + i10 + ": " + e.getMessage(), 1);
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException unused2) {
                            }
                        }
                        inputStream2 = inputStream;
                        return cls.cast(inputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = bufferedInputStream;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                    return cls.cast(inputStream2);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        Logger.log("Buffer data with name " + str3 + " not found!", 3);
        return null;
    }

    public boolean store(CompiledInstance compiledInstance, Buffer buffer, String str) {
        String str2;
        int i10;
        BufferedOutputStream bufferedOutputStream;
        int i11;
        if (this.ctx == null) {
            Logger.log("No context set!", 0);
            return false;
        }
        if (buffer == null) {
            return false;
        }
        if (buffer instanceof IntBuffer) {
            str2 = "_ib_";
            i10 = 1;
        } else {
            str2 = "_bb_";
            i10 = 0;
        }
        if (buffer instanceof FloatBuffer) {
            str2 = "_fb_";
            i10 = 2;
        }
        if (buffer instanceof ShortBuffer) {
            str2 = "_sb_";
            i10 = 3;
        }
        String str3 = "_vir_" + this.myCnt + ConstantDescs.DEFAULT_NAME + (String.valueOf(System.identityHashCode(compiledInstance)) + ConstantDescs.DEFAULT_NAME + str) + str2 + ".dat";
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                cleanUp(this.ctx);
                bufferedOutputStream = new BufferedOutputStream(new GZIPOutputStream(this.ctx.openFileOutput(str3, 0)), 2048);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (i10 == 0) {
                ByteBuffer byteBuffer = (ByteBuffer) buffer;
                int limit = byteBuffer.limit();
                byte[] bArr = new byte[limit];
                byteBuffer.rewind();
                byteBuffer.get(bArr);
                writeInt(limit, bufferedOutputStream, true);
                bufferedOutputStream.write(bArr);
                i11 = limit;
            } else if (i10 == 1) {
                IntBuffer intBuffer = (IntBuffer) buffer;
                int limit2 = intBuffer.limit();
                int[] iArr = new int[limit2];
                intBuffer.rewind();
                intBuffer.get(iArr);
                i11 = limit2 << 2;
                writeInt(i11, bufferedOutputStream, true);
                for (int i12 = 0; i12 < limit2; i12++) {
                    writeInt(iArr[i12], bufferedOutputStream, false);
                }
            } else if (i10 == 2) {
                FloatBuffer floatBuffer = (FloatBuffer) buffer;
                int limit3 = floatBuffer.limit();
                float[] fArr = new float[limit3];
                floatBuffer.rewind();
                floatBuffer.get(fArr);
                i11 = limit3 << 2;
                writeInt(i11, bufferedOutputStream, true);
                for (int i13 = 0; i13 < limit3; i13++) {
                    writeInt(Float.floatToIntBits(fArr[i13]), bufferedOutputStream, false);
                }
            } else if (i10 != 3) {
                i11 = 0;
            } else {
                ShortBuffer shortBuffer = (ShortBuffer) buffer;
                int limit4 = shortBuffer.limit();
                short[] sArr = new short[limit4];
                shortBuffer.rewind();
                shortBuffer.get(sArr);
                i11 = limit4 << 1;
                writeInt(i11, bufferedOutputStream, true);
                for (int i14 = 0; i14 < limit4; i14++) {
                    writeShort(sArr[i14], bufferedOutputStream);
                }
            }
            int identityHashCode = System.identityHashCode(compiledInstance);
            String str4 = this.virtualized.get(Integer.valueOf(identityHashCode));
            if (str4 == null) {
                str4 = "";
            }
            this.virtualized.put(Integer.valueOf(identityHashCode), str4 + "/" + str3);
            Logger.log("Stored buffer of type " + i10 + " on disk (" + i11 + " bytes / " + str3 + ")!");
            try {
                bufferedOutputStream.close();
            } catch (IOException unused) {
            }
            return true;
        } catch (Exception e11) {
            e = e11;
            bufferedOutputStream2 = bufferedOutputStream;
            Logger.log("Unable to virtualize buffer of type " + i10 + ": " + e.getMessage(), 1);
            if (Logger.isDebugEnabled()) {
                Logger.log(e);
            }
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }
}
