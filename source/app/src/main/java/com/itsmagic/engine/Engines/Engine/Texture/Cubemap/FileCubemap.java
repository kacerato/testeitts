package com.itsmagic.engine.Engines.Engine.Texture.Cubemap;

import Ic.C2633l;
import android.content.res.AssetManager;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCTextureData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import wb.C15979a;
import wb.C15980b;
import wb.C15983e;

public class FileCubemap extends C15980b {

    public static final String[] f79614g;

    public static final String[] f79615h;

    public final CubemapConfig f79616b;

    public final String f79617c;

    public final NativeByteBuffer[] f79618d;

    public final int f79619e;

    public final int f79620f;

    public class a implements g {

        public final String f79621a;

        public a(final String val$ipp) {
            this.f79621a = val$ipp;
        }

        @Override
        public InputStream open() throws IOException {
            return X7.a.o(this.f79621a);
        }
    }

    public class b implements g {

        public final File f79623a;

        public b(final File val$file) {
            this.f79623a = val$file;
        }

        @Override
        public InputStream open() throws IOException {
            return new FileInputStream(this.f79623a);
        }
    }

    public class c implements Runnable {

        public final int f79625b;

        public final f f79626c;

        public final int f79627d;

        public c(final int val$finalMips, final f val$finalCompressedCubemap, final int val$finalWantedResolution) {
            this.f79625b = val$finalMips;
            this.f79626c = val$finalCompressedCubemap;
            this.f79627d = val$finalWantedResolution;
        }

        @Override
        public void run() {
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.genMipmaps = true;
            textureConfig.mipmapLevels = this.f79625b;
            textureConfig.J0(TextureConfig.h.Clamp);
            TextureSampler j10 = FilamentTexture.j(textureConfig);
            if (this.f79626c != null) {
                int i10 = this.f79627d;
                FileCubemap.this.b(new FilamentTexture(i10, i10, Texture.e.RGBA, Texture.k.COMPRESSED, this.f79626c.f79642f, new Texture.a().d(this.f79626c.f79642f), j10, this.f79625b, 24, Texture.i.SAMPLER_CUBEMAP, 6, false));
                FileCubemap.this.g(this.f79626c);
                return;
            }
            Texture.f fVar = Texture.f.RGBA8;
            int i11 = this.f79627d;
            FileCubemap.this.b(new FilamentTexture(i11, i11, Texture.e.RGBA, Texture.k.UBYTE, fVar, new Texture.a().d(fVar), j10, this.f79625b, 9, Texture.i.SAMPLER_CUBEMAP, 6));
            for (int i12 = 0; i12 < 6; i12++) {
                FileCubemap.this.h(i12, this.f79627d, this.f79625b > 0);
            }
        }
    }

    public class d implements Runnable {

        public final int f79629b;

        public final int f79630c;

        public class a implements Runnable {

            public final NativeByteBuffer f79632b;

            public a(final NativeByteBuffer val$faceBuffer) {
                this.f79632b = val$faceBuffer;
            }

            @Override
            public void run() {
                try {
                    this.f79632b.destroyImmediate();
                } finally {
                    FileCubemap.this.f79618d[d.this.f79629b] = null;
                }
            }
        }

        public d(final int val$f, final int val$wantedResolution) {
            this.f79629b = val$f;
            this.f79630c = val$wantedResolution;
        }

        @Override
        public void run() {
            NativeByteBuffer nativeByteBuffer = FileCubemap.this.f79618d[this.f79629b];
            try {
                if (nativeByteBuffer == null) {
                    throw new RuntimeException("Cubemap face buffer is null for index " + this.f79629b);
                }
                FilamentTexture a10 = FileCubemap.this.a();
                int i10 = this.f79629b;
                int i11 = this.f79630c;
                a10.K(0, 0, 0, i10, i11, i11, 1, nativeByteBuffer, new a(nativeByteBuffer));
            } catch (RuntimeException e10) {
                if (nativeByteBuffer != null) {
                    try {
                        nativeByteBuffer.destroyImmediate();
                    } catch (Exception unused) {
                    }
                }
                FileCubemap.this.f79618d[this.f79629b] = null;
                throw e10;
            }
        }
    }

    public class e implements Runnable {

        public final AtomicInteger f79634b;

        public final f f79635c;

        public e(final AtomicInteger val$remainingUploads, final f val$compressedCubemap) {
            this.f79634b = val$remainingUploads;
            this.f79635c = val$compressedCubemap;
        }

        @Override
        public void run() {
            if (this.f79634b.decrementAndGet() > 0) {
                return;
            }
            FileCubemap.i(this.f79635c.f79637a);
        }
    }

    public static class f {

        public final ASTCTextureData.a[] f79637a;

        public final int f79638b;

        public final int f79639c;

        public final int f79640d;

        public final Texture.b f79641e;

        public final Texture.f f79642f;

        public f(ASTCTextureData.a[] faces, int firstLevel, int baseResolution, int levelCount, Texture.b compressedFormat, Texture.f internalFormat) {
            this.f79637a = faces;
            this.f79638b = firstLevel;
            this.f79639c = baseResolution;
            this.f79640d = levelCount;
            this.f79641e = compressedFormat;
            this.f79642f = internalFormat;
        }
    }

    public interface g {
        InputStream open() throws IOException;
    }

    public static class h {

        public final boolean f79643a;

        public final String f79644b;

        public h(boolean asset, String path) {
            this.f79643a = asset;
            this.f79644b = path;
        }
    }

    static {
        System.loadLibrary("native-file-cubemap");
        f79614g = new String[]{C15979a.f127376a, C15979a.f127377b, C15979a.f127378c, C15979a.f127379d, C15979a.f127380e, C15979a.f127381f};
        f79615h = new String[]{C15979a.f127382g, C15979a.f127383h, C15979a.f127384i, C15979a.f127385j, C15979a.f127386k, C15979a.f127387l};
    }

    public FileCubemap(String ipp) {
        this(ipp, 0);
    }

    public static void i(ASTCTextureData.a[] faces) {
        if (faces == null) {
            return;
        }
        for (int i10 = 0; i10 < faces.length; i10++) {
            ASTCTextureData.a aVar = faces[i10];
            if (aVar != null) {
                aVar.a();
                faces[i10] = null;
            }
        }
    }

    public static int l(ASTCTextureData.a data, int wantedResolution) {
        ASTCTextureData.b[] bVarArr;
        if (data != null && (bVarArr = data.f79791g) != null && bVarArr.length != 0) {
            int i10 = 0;
            while (true) {
                ASTCTextureData.b[] bVarArr2 = data.f79791g;
                if (i10 >= bVarArr2.length) {
                    break;
                }
                ASTCTextureData.b bVar = bVarArr2[i10];
                if (bVar.f79793a == wantedResolution && bVar.f79794b == wantedResolution) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    public static String n(String name) {
        if (name == null) {
            return null;
        }
        int lastIndexOf = name.lastIndexOf(47);
        return lastIndexOf >= 0 ? name.substring(lastIndexOf + 1) : name;
    }

    private static native boolean nativeLoadFacesFromAsset(AssetManager assetManager, String assetPath, String[] faceNames, int wantedResolution, NativeByteBuffer[] outFaces);

    private static native boolean nativeLoadFacesFromFile(String filePath, String[] faceNames, int wantedResolution, NativeByteBuffer[] outFaces);

    public static h t(String inputPath) {
        String str;
        String o10 = Tc.b.o(inputPath);
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t());
        boolean z10 = S10 != null && S10.contains("@@ASSET@@");
        boolean contains = o10.contains("@@ASSET@@");
        boolean z11 = o10.startsWith("/") || o10.matches("^[A-Za-z]:/.*");
        if (!z10 && !contains) {
            if (z11) {
                return new h(false, o10);
            }
            String o11 = Tc.b.o(S10 + "/" + o10);
            if (o11.startsWith("/")) {
                o11 = o11.substring(1);
            }
            return new h(false, o11);
        }
        if (contains) {
            str = o10.replace("@@ASSET@@", "");
        } else {
            str = S10.replace("@@ASSET@@", "") + "/" + o10;
        }
        String o12 = Tc.b.o(str);
        while (o12.startsWith("/")) {
            o12 = o12.substring(1);
        }
        return new h(true, o12);
    }

    public static String u(String name) {
        if (name == null) {
            return null;
        }
        while (name.startsWith("./")) {
            name = name.substring(2);
        }
        return name;
    }

    public final void g(f compressedCubemap) {
        e eVar = new e(new AtomicInteger(compressedCubemap.f79640d * compressedCubemap.f79637a.length), compressedCubemap);
        int i10 = 0;
        while (true) {
            try {
                ASTCTextureData.a[] aVarArr = compressedCubemap.f79637a;
                if (i10 >= aVarArr.length) {
                    return;
                }
                ASTCTextureData.a aVar = aVarArr[i10];
                int i11 = 0;
                while (i11 < compressedCubemap.f79640d) {
                    ASTCTextureData.b bVar = aVar.f79791g[compressedCubemap.f79638b + i11];
                    ASTCTextureData.a aVar2 = aVar;
                    int i12 = i11;
                    int i13 = i10;
                    a().F(i11, 0, 0, i10, bVar.f79793a, bVar.f79794b, 1, aVar.f79792h, bVar.f79795c, compressedCubemap.f79641e, bVar.f79796d, eVar);
                    i11 = i12 + 1;
                    aVar = aVar2;
                    i10 = i13;
                }
                i10++;
            } catch (RuntimeException e10) {
                i(compressedCubemap.f79637a);
                throw e10;
            }
        }
    }

    public final void h(int f10, int wantedResolution, boolean genMipmaps) {
        K8.a.I(new d(f10, wantedResolution));
    }

    public final void j() {
        int i10 = 0;
        while (true) {
            NativeByteBuffer[] nativeByteBufferArr = this.f79618d;
            if (i10 >= nativeByteBufferArr.length) {
                return;
            }
            NativeByteBuffer nativeByteBuffer = nativeByteBufferArr[i10];
            if (nativeByteBuffer != null) {
                try {
                    nativeByteBuffer.destroyImmediate();
                } catch (Exception unused) {
                }
                this.f79618d[i10] = null;
            }
            i10++;
        }
    }

    /* JADX WARN: Finally extract failed */
    public final File k(g opener, String faceName) throws IOException {
        InputStream open = opener.open();
        if (open == null) {
            return null;
        }
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(open));
        try {
            String u10 = u(faceName);
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return null;
                }
                if (nextEntry.isDirectory()) {
                    zipInputStream.closeEntry();
                } else {
                    String u11 = u(nextEntry.getName());
                    String n10 = n(u11);
                    if (u10.equals(u11) || u10.equals(n10)) {
                        break;
                    }
                    zipInputStream.closeEntry();
                }
            }
            File createTempFile = File.createTempFile("cubemap-face-", C2633l.f9169o, N7.c.t() != null ? N7.c.t().getCacheDir() : null);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(createTempFile));
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int read = zipInputStream.read(bArr);
                    if (read == -1) {
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        zipInputStream.closeEntry();
                        zipInputStream.close();
                        return createTempFile;
                    }
                    bufferedOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
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

    public int m() {
        return this.f79619e;
    }

    public CubemapConfig o() {
        return this.f79616b;
    }

    public String p() {
        return this.f79617c;
    }

    public int q() {
        return this.f79620f;
    }

    public final void r(String inputPath, g opener, int wantedResolution, int mips, int usages) {
        f v10 = v(opener, wantedResolution);
        if (v10 != null && !Texture.A(Qb.a.f(), v10.f79642f)) {
            i(v10.f79637a);
            v10 = null;
        }
        if (v10 == null) {
            s(inputPath, f79615h, wantedResolution);
        }
        if (v10 != null) {
            wantedResolution = v10.f79639c;
        }
        if (v10 != null) {
            mips = Math.max(0, v10.f79640d - 1);
        }
        K8.a.I(new c(mips, v10, wantedResolution));
    }

    public final void s(String inputPath, String[] faceNames, int wantedResolution) {
        boolean nativeLoadFacesFromFile;
        int i10 = wantedResolution * wantedResolution * 4;
        int i11 = 0;
        while (true) {
            try {
                NativeByteBuffer[] nativeByteBufferArr = this.f79618d;
                if (i11 >= nativeByteBufferArr.length) {
                    break;
                }
                nativeByteBufferArr[i11] = new NativeByteBuffer(i10);
                i11++;
            } catch (RuntimeException e10) {
                j();
                throw e10;
            }
        }
        h t10 = t(inputPath);
        if (t10.f79643a) {
            AssetManager r10 = N7.c.r();
            if (r10 == null) {
                throw new RuntimeException("AssetManager unavailable");
            }
            nativeLoadFacesFromFile = nativeLoadFacesFromAsset(r10, t10.f79644b, faceNames, wantedResolution, this.f79618d);
        } else {
            nativeLoadFacesFromFile = nativeLoadFacesFromFile(t10.f79644b, faceNames, wantedResolution, this.f79618d);
        }
        if (!nativeLoadFacesFromFile) {
            throw new RuntimeException("Failed to load cubemap faces");
        }
    }

    public final f v(g opener, int wantedResolution) {
        File k10;
        ASTCTextureData.a d10;
        ASTCTextureData.a[] aVarArr = new ASTCTextureData.a[f79614g.length];
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        Texture.b bVar = null;
        Texture.f fVar = null;
        while (true) {
            try {
                String[] strArr = f79614g;
                if (i10 >= strArr.length) {
                    if (i12 > 0 && bVar != null && fVar != null) {
                        return new f(aVarArr, i11, i12, i13, bVar, fVar);
                    }
                    i(aVarArr);
                    return null;
                }
                k10 = k(opener, strArr[i10]);
                if (k10 == null) {
                    i(aVarArr);
                    return null;
                }
                try {
                    d10 = ASTCTextureData.d(k10, this.f79616b.m());
                    if (d10 == null) {
                        i(aVarArr);
                        if (!k10.delete()) {
                            k10.deleteOnExit();
                        }
                        return null;
                    }
                    int l10 = l(d10, wantedResolution);
                    if (l10 < 0) {
                        i(aVarArr);
                        if (!k10.delete()) {
                            k10.deleteOnExit();
                        }
                        return null;
                    }
                    int length = d10.f79788d ? d10.f79791g.length - l10 : 1;
                    if (length <= 0) {
                        i(aVarArr);
                        if (!k10.delete()) {
                            k10.deleteOnExit();
                        }
                        return null;
                    }
                    ASTCTextureData.b bVar2 = d10.f79791g[l10];
                    if (i11 >= 0) {
                        if (i11 == l10) {
                            if (i13 == length) {
                                if (i12 == bVar2.f79793a) {
                                    if (bVar == d10.f79789e) {
                                        if (fVar != d10.f79790f) {
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        i12 = bVar2.f79793a;
                        bVar = d10.f79789e;
                        fVar = d10.f79790f;
                        i11 = l10;
                        i13 = length;
                    }
                    aVarArr[i10] = d10;
                    i10++;
                } finally {
                    if (!k10.delete()) {
                        k10.deleteOnExit();
                    }
                }
            } catch (IOException unused) {
                i(aVarArr);
                return null;
            }
        }
        d10.a();
        i(aVarArr);
        if (!k10.delete()) {
            k10.deleteOnExit();
        }
        return null;
    }

    public FileCubemap(String ipp, int maxSize) {
        this.f79618d = new NativeByteBuffer[6];
        if (ipp != null && !ipp.isEmpty()) {
            this.f79620f = maxSize;
            this.f79617c = ipp;
            InputStream o10 = X7.a.o(ipp);
            if (o10 != null) {
                try {
                    if (C15983e.f(o10, f79614g, f79615h)) {
                        try {
                            CubemapConfig h10 = C15983e.h(X7.a.o(ipp));
                            this.f79616b = h10;
                            if (h10 != null) {
                                if (h10.c() > 0) {
                                    int c10 = h10.c();
                                    if (maxSize > 0) {
                                        c10 = Nc.b.Z0(maxSize, c10);
                                        this.f79619e = c10;
                                    } else {
                                        this.f79619e = -1;
                                    }
                                    int i10 = c10;
                                    int j10 = h10.m().j();
                                    r(ipp, new a(ipp), i10, j10, j10 > 0 ? 536 : 24);
                                    return;
                                }
                                throw new RuntimeException("invalid cubemap");
                            }
                            throw new RuntimeException("invalid cubemap");
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        }
                    }
                    throw new RuntimeException("Cubemap doesn`t have 6 faces!");
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            }
            throw new RuntimeException("Cubemap not found!");
        }
        throw new NullPointerException("ip == null");
    }

    public FileCubemap(File file, int maxSize) {
        this.f79618d = new NativeByteBuffer[6];
        if (file != null && file.exists()) {
            this.f79620f = maxSize;
            this.f79617c = file.getAbsolutePath();
            try {
                try {
                    if (C15983e.f(new FileInputStream(file), f79614g, f79615h)) {
                        try {
                            CubemapConfig h10 = C15983e.h(new FileInputStream(file));
                            this.f79616b = h10;
                            if (h10 != null) {
                                if (h10.c() > 0) {
                                    int c10 = h10.c();
                                    if (maxSize > 0) {
                                        c10 = Nc.b.Z0(maxSize, c10);
                                        this.f79619e = c10;
                                    } else {
                                        this.f79619e = -1;
                                    }
                                    int i10 = c10;
                                    int j10 = h10.m().j();
                                    r(file.getAbsolutePath(), new b(file), i10, j10, j10 > 0 ? 536 : 24);
                                    return;
                                }
                                throw new RuntimeException("invalid cubemap");
                            }
                            throw new RuntimeException("invalid cubemap");
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        }
                    }
                    throw new RuntimeException("Cubemap doesn`t have 6 faces!");
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            } catch (FileNotFoundException e12) {
                throw new RuntimeException(e12);
            }
            throw new RuntimeException(e12);
        }
        throw new NullPointerException("file is null or not exists");
    }
}
