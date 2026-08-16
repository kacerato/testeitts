package com.itsmagic.engine.Engines.Engine.Texture.Cubemap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.b;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCEncoderNative;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import wb.C15979a;
import wb.C15983e;

public class a {

    public static final AtomicBoolean f79645a = new AtomicBoolean();

    public static class C1358a {

        public static final int[] f79646a;

        static {
            int[] iArr = new int[b.a.values().length];
            f79646a = iArr;
            try {
                iArr[b.a.POSITIVE_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79646a[b.a.NEGATIVE_X.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79646a[b.a.POSITIVE_Y.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79646a[b.a.NEGATIVE_Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f79646a[b.a.POSITIVE_Z.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f79646a[b.a.NEGATIVE_Z.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x011c A[Catch: all -> 0x007a, TryCatch #2 {all -> 0x007a, blocks: (B:7:0x000e, B:9:0x001a, B:11:0x004d, B:13:0x0071, B:14:0x0085, B:20:0x00b8, B:23:0x00d9, B:27:0x00eb, B:16:0x011c, B:17:0x0121, B:32:0x0116, B:33:0x011b, B:34:0x007d), top: B:6:0x000e, outer: #1, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void a(CubemapConfig cubemapConfig, File cubemapFile) {
        boolean z10;
        int i10;
        int i11;
        int i12;
        synchronized (a.class) {
            f79645a.set(true);
            try {
                File y10 = Tc.b.y(cubemapFile);
                if (cubemapConfig.e() == CubemapConfig.a.PANORAMA) {
                    i10 = TextureConfig.f79814s[cubemapConfig.m().o()];
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + cubemapConfig.f());
                    if (file.exists()) {
                        File file2 = new File(Tc.b.O(file.getAbsolutePath()) + ".texture");
                        Bitmap decodeFile = file2.exists() ? BitmapFactory.decodeFile(file2.getAbsolutePath()) : BitmapFactory.decodeFile(file.getAbsolutePath());
                        i11 = decodeFile.getWidth();
                        i12 = decodeFile.getHeight();
                        i10 = Math.max(1, Math.min(i10, Math.min(decodeFile.getWidth() / 4, decodeFile.getHeight() / 2)));
                        z10 = c(decodeFile, i10, y10, cubemapConfig.m());
                        if (z10) {
                            throw new RuntimeException();
                        }
                        try {
                            String[] strArr = {C15979a.f127376a, C15979a.f127377b, C15979a.f127378c, C15979a.f127379d, C15979a.f127380e, C15979a.f127381f, C15979a.f127382g, C15979a.f127383h, C15979a.f127384i, C15979a.f127385j, C15979a.f127386k, C15979a.f127387l};
                            for (int i13 = 0; i13 < 12; i13++) {
                                File file3 = new File(y10, strArr[i13]);
                                C15983e.n(cubemapFile, file3);
                                file3.delete();
                            }
                            cubemapConfig.s(i10);
                            cubemapConfig.m().I0(i10);
                            cubemapConfig.m().r0(i10);
                            cubemapConfig.m().z0(i11);
                            cubemapConfig.m().y0(i12);
                            C15983e.m(cubemapFile, cubemapConfig);
                            f79645a.set(false);
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        }
                    } else {
                        z10 = false;
                        i11 = 0;
                    }
                } else {
                    z10 = false;
                    i10 = 0;
                    i11 = 0;
                }
                i12 = i11;
                if (z10) {
                }
            } catch (Throwable th2) {
                f79645a.set(false);
                throw th2;
            }
        }
    }

    public static void b(CubemapConfig cubemapConfig, String cubemapIpp) {
        a(cubemapConfig, new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + cubemapIpp));
    }

    public static boolean c(Bitmap src, int cubeSize, File metaFolder, TextureConfig textureConfig) {
        try {
            for (b.C1359b c1359b : b.g(src, cubeSize, false)) {
                switch (C1358a.f79646a[c1359b.f79649a.ordinal()]) {
                    case 1:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127376a), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127382g), Bitmap.CompressFormat.JPEG, 100);
                        break;
                    case 2:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127377b), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127383h), Bitmap.CompressFormat.JPEG, 100);
                        break;
                    case 3:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127378c), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127384i), Bitmap.CompressFormat.JPEG, 100);
                        break;
                    case 4:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127379d), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127385j), Bitmap.CompressFormat.JPEG, 100);
                        break;
                    case 5:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127380e), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127386k), Bitmap.CompressFormat.JPEG, 100);
                        break;
                    case 6:
                        g(c1359b.f79650b, new File(metaFolder, C15979a.f127381f), textureConfig);
                        h(c1359b.f79650b, new File(metaFolder, C15979a.f127387l), Bitmap.CompressFormat.JPEG, 100);
                        break;
                }
                Bitmap bitmap = c1359b.f79650b;
                if (bitmap != null && !bitmap.isRecycled()) {
                    c1359b.f79650b.recycle();
                }
            }
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void d(File metaFolder, File dstZip) throws IOException {
        Throwable th2;
        boolean z10 = false;
        if (metaFolder == null) {
            throw new NullPointerException("metaFolder == null");
        }
        if (dstZip == null) {
            throw new NullPointerException("dstZip == null");
        }
        if (!metaFolder.isDirectory()) {
            throw new FileNotFoundException("metaFolder n\u00e3o \u00e9 um diret\u00f3rio: " + ((Object) metaFolder));
        }
        String[] strArr = {C15979a.f127376a, C15979a.f127377b, C15979a.f127378c, C15979a.f127379d, C15979a.f127380e, C15979a.f127381f, C15979a.f127382g, C15979a.f127383h, C15979a.f127384i, C15979a.f127385j, C15979a.f127386k, C15979a.f127387l};
        SteppedArrayList steppedArrayList = new SteppedArrayList(12);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(12);
        for (int i10 = 0; i10 < 12; i10++) {
            String str = strArr[i10];
            File file = new File(metaFolder, str);
            if (!file.isFile()) {
                steppedArrayList2.add(str);
            }
            steppedArrayList.add(file);
        }
        if (!steppedArrayList2.isEmpty()) {
            throw new FileNotFoundException("Faltam arquivos no metaFolder: " + ((Object) steppedArrayList2));
        }
        File parentFile = dstZip.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Falha ao criar diret\u00f3rios: " + ((Object) parentFile));
        }
        File file2 = new File(dstZip.getParentFile(), dstZip.getName() + ".tmp");
        if (file2.exists() && !file2.delete()) {
            throw new IOException("Falha ao remover arquivo tempor\u00e1rio antigo: " + ((Object) file2));
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, 65536);
                try {
                    ZipOutputStream zipOutputStream = new ZipOutputStream(bufferedOutputStream);
                    try {
                        zipOutputStream.setLevel(-1);
                        for (int i11 = 0; i11 < 12; i11++) {
                            f(zipOutputStream, (File) steppedArrayList.get(i11), strArr[i11]);
                        }
                        zipOutputStream.finish();
                        try {
                            zipOutputStream.close();
                            try {
                                bufferedOutputStream.close();
                                try {
                                    fileOutputStream.close();
                                    try {
                                        Files.move(file2.toPath(), dstZip.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                                    } catch (AtomicMoveNotSupportedException unused) {
                                        Files.move(file2.toPath(), dstZip.toPath(), StandardCopyOption.REPLACE_EXISTING);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    z10 = true;
                                    if (!z10) {
                                    }
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z10 = true;
                                th2 = th;
                                try {
                                    fileOutputStream.close();
                                    throw th2;
                                } catch (Throwable th5) {
                                    th2.addSuppressed(th5);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            z10 = true;
                            Throwable th7 = th;
                            try {
                                bufferedOutputStream.close();
                                throw th7;
                            } catch (Throwable th8) {
                                th7.addSuppressed(th8);
                                throw th7;
                            }
                        }
                    } finally {
                    }
                } catch (Throwable th9) {
                    th = th9;
                }
            } catch (Throwable th10) {
                th = th10;
                th2 = th;
                fileOutputStream.close();
                throw th2;
            }
        } catch (Throwable th11) {
            th = th11;
            if (!z10) {
                try {
                    Files.deleteIfExists(file2.toPath());
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static boolean e() {
        return f79645a.get();
    }

    public static void f(ZipOutputStream zos, File src, String entryName) throws IOException {
        ZipEntry zipEntry = new ZipEntry(entryName);
        zipEntry.setTime(src.lastModified());
        zos.putNextEntry(zipEntry);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(src), 65536);
        try {
            byte[] bArr = new byte[131072];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    bufferedInputStream.close();
                    zos.closeEntry();
                    return;
                }
                zos.write(bArr, 0, read);
            }
        } catch (Throwable th2) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void g(Bitmap bitmap, File dst, TextureConfig textureConfig) throws IOException {
        if (bitmap == null) {
            throw new NullPointerException("bitmap == null");
        }
        if (dst == null) {
            throw new NullPointerException("dst == null");
        }
        File parentFile = dst.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories: " + ((Object) parentFile));
        }
        if (dst.exists() && !dst.delete()) {
            throw new IOException("Failed to delete old face file: " + ((Object) dst));
        }
        TextureConfig a10 = textureConfig != null ? textureConfig.a() : new TextureConfig();
        a10.width = bitmap.getWidth();
        a10.height = bitmap.getHeight();
        a10.originalWidth = bitmap.getWidth();
        a10.originalHeight = bitmap.getHeight();
        NativeByteBuffer a11 = ASTCEncoderNative.a(bitmap, a10);
        try {
            a11.saveRawToFile(dst);
        } finally {
            if (!a11.isGarbage()) {
                a11.destroyImmediate();
            }
        }
    }

    public static void h(Bitmap bitmap, File dst, Bitmap.CompressFormat format, int quality) throws IOException {
        if (bitmap == null) {
            throw new NullPointerException("bitmap == null");
        }
        if (dst == null) {
            throw new NullPointerException("dst == null");
        }
        if (quality < 0 || quality > 100) {
            throw new IllegalArgumentException("quality out of range");
        }
        File parentFile = dst.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories: " + ((Object) parentFile));
        }
        if (dst.exists()) {
            dst.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(dst);
        try {
            bitmap.compress(format, quality, fileOutputStream);
            fileOutputStream.flush();
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
}
