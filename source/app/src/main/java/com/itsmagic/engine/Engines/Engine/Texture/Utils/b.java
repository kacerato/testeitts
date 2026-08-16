package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import Ic.C2633l;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCTextureData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureFileNotFoundException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureImportNative;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.constant.ConstantDescs;
import lb.C14068e;
import org.beyka.tiffbitmapfactory.TiffBitmapFactory;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.DecodeTiffException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;
import ub.p;

public class b {

    public static class a {

        public static final int[] f79817a;

        static {
            int[] iArr = new int[TextureConfig.d.values().length];
            f79817a = iArr;
            try {
                iArr[TextureConfig.d.RGBA8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79817a[TextureConfig.d.RGB8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class C1370b {

        public c f79818a = c.BOTH;

        public boolean f79819b = true;

        public C1370b a(c importType) {
            this.f79818a = importType;
            return this;
        }

        public C1370b b(boolean parallel) {
            this.f79819b = parallel;
            return this;
        }
    }

    public enum c {
        ONLY_TEXTURE,
        ONLY_ASTC,
        BOTH
    }

    public static class d {

        public String f79820a;

        public String f79821b;

        public boolean f79822c;

        public String f79823d;

        public void a(String path, String astcPath, boolean isAsset, String inputFile) {
            this.f79820a = path;
            this.f79821b = astcPath;
            this.f79822c = isAsset;
            this.f79823d = inputFile;
        }
    }

    public static File a(File textureFile) {
        return new File(Tc.b.O(textureFile.getAbsolutePath()) + C2633l.f9169o);
    }

    public static int b(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int i10 = options.outHeight;
        int i11 = options.outWidth;
        int i12 = 1;
        if (i10 > reqHeight || i11 > reqWidth) {
            int i13 = i10 / 2;
            int i14 = i11 / 2;
            while (i13 / i12 >= reqHeight && i14 / i12 >= reqWidth) {
                i12 *= 2;
            }
        }
        return i12;
    }

    public static void c(p texture, File destinationFile, TextureConfig config) {
        int width = texture.getWidth();
        int height = texture.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                texture.j(i10, i11, colorINT);
                createBitmap.setPixel(i10, i11, colorINT.intColor);
            }
        }
        Bitmap t10 = t(createBitmap, new File(Tc.b.O(destinationFile.getAbsolutePath()) + ".texture"), destinationFile, N7.c.t(), config, true);
        if (t10 == null || t10.isRecycled()) {
            return;
        }
        t10.recycle();
    }

    public static void d(File textureFile, File outputAstcFile, TextureConfig texConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(textureFile.getAbsolutePath(), options);
        if (decodeFile == null) {
            throw new RuntimeException("Failed to decode imported .texture file for ASTC generation");
        }
        try {
            try {
                w(decodeFile, textureFile, texConfig, !texConfig.allowModifications, texConfig.compressionFormat);
                if (!outputAstcFile.exists() && u(texConfig, !texConfig.allowModifications, texConfig.compressionFormat)) {
                    throw new RuntimeException("Failed to export .astc sidecar");
                }
            } catch (IOException e10) {
                throw new RuntimeException("Failed to export .astc sidecar", e10);
            }
        } finally {
            if (!decodeFile.isRecycled()) {
                decodeFile.recycle();
            }
        }
    }

    public static d e(Context context, String loadFile, d out, boolean isFullPath) {
        if (loadFile == null || loadFile.isEmpty()) {
            throw new IllegalArgumentException("Load file path can't be null or empty");
        }
        if (isFullPath) {
            File file = new File(loadFile);
            if (file.exists()) {
                out.a(file.getAbsolutePath(), s(file), false, loadFile);
                return out;
            }
        } else {
            if (loadFile.startsWith("@@ASSET@@")) {
                String replace = loadFile.replace("@@ASSET@@", "");
                if (!replace.startsWith("/")) {
                    replace = "/" + replace;
                }
                InputStream resourceAsStream = context.getClass().getResourceAsStream("/assets" + Tc.b.O(replace) + ".texture");
                if (resourceAsStream != null && !C2633l.b(loadFile, ".ivo")) {
                    try {
                        resourceAsStream.close();
                        String str = Tc.b.O(replace) + ".texture";
                        out.a(str, r(context, str), true, loadFile);
                        return out;
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile + " final path: /assets" + Tc.b.O(replace) + ".texture");
                    }
                }
                InputStream resourceAsStream2 = context.getClass().getResourceAsStream("/assets" + replace);
                if (resourceAsStream2 == null) {
                    throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile + " final path: /assets" + replace);
                }
                try {
                    resourceAsStream2.close();
                    out.a(replace, null, true, loadFile);
                    return out;
                } catch (IOException e11) {
                    e11.printStackTrace();
                    throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile + " final path: /assets" + replace);
                }
            }
            if (com.itsmagic.engine.Core.Components.ProjectController.a.S(context).startsWith("@@ASSET@@")) {
                if (!loadFile.contains("/")) {
                    if (!loadFile.startsWith("/")) {
                        loadFile = "/" + loadFile;
                    }
                    String replace2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context).replace("@@ASSET@@", "");
                    InputStream resourceAsStream3 = context.getClass().getResourceAsStream("/assets" + replace2 + Tc.b.O(loadFile) + ".texture");
                    if (resourceAsStream3 != null && !C2633l.b(loadFile, ".ivo")) {
                        try {
                            resourceAsStream3.close();
                            String str2 = replace2 + Tc.b.O(loadFile) + ".texture";
                            out.a(str2, r(context, str2), true, loadFile);
                            return out;
                        } catch (IOException e12) {
                            e12.printStackTrace();
                            throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile);
                        }
                    }
                    InputStream resourceAsStream4 = context.getClass().getResourceAsStream("/assets" + replace2 + loadFile);
                    if (resourceAsStream4 == null) {
                        throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile + " final path: /assets" + replace2 + loadFile);
                    }
                    try {
                        resourceAsStream4.close();
                        out.a(replace2 + loadFile, null, true, loadFile);
                        return out;
                    } catch (IOException e13) {
                        e13.printStackTrace();
                        throw new TextureFileNotFoundException("The file was not found at assets, " + loadFile + " final path: /assets" + replace2 + loadFile);
                    }
                }
                String substring = loadFile.substring(0, loadFile.lastIndexOf("/"));
                String substring2 = loadFile.substring(loadFile.lastIndexOf("/"));
                if (substring.contains(ConstantDescs.DEFAULT_NAME)) {
                    substring = substring.replace(ConstantDescs.DEFAULT_NAME, "");
                }
                String str3 = substring + substring2;
                String str4 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context).replace("@@ASSET@@", "") + "/";
                InputStream resourceAsStream5 = context.getClass().getResourceAsStream("/assets" + str4 + Tc.b.O(str3) + ".texture");
                if (resourceAsStream5 != null && !C2633l.b(str3, ".ivo")) {
                    try {
                        resourceAsStream5.close();
                        String str5 = str4 + Tc.b.O(str3) + ".texture";
                        out.a(str5, r(context, str5), true, str3);
                        return out;
                    } catch (IOException e14) {
                        e14.printStackTrace();
                        throw new TextureFileNotFoundException("The file was not found at assets, " + str3);
                    }
                }
                InputStream resourceAsStream6 = context.getClass().getResourceAsStream("/assets" + str4 + str3);
                if (resourceAsStream6 == null) {
                    throw new TextureFileNotFoundException("The file was not found at assets, " + str3 + " final path: /assets" + str4 + str3);
                }
                try {
                    resourceAsStream6.close();
                    out.a(str4 + str3, null, true, str3);
                    return out;
                } catch (IOException e15) {
                    e15.printStackTrace();
                    throw new TextureFileNotFoundException("The file was not found at assets, " + str3 + " final path: /assets" + str4 + str3);
                }
            }
            if (!isFullPath) {
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile);
                if (file2.exists()) {
                    File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + Tc.b.O(loadFile) + ".texture");
                    if (C2633l.b(loadFile, ".ivo") || C2633l.b(loadFile, ".nm")) {
                        out.a(file2.getAbsolutePath(), null, false, loadFile);
                        return out;
                    }
                    if (file3.exists()) {
                        out.a(file3.getAbsolutePath(), s(file3), false, loadFile);
                        return out;
                    }
                    out.a(file3.getAbsolutePath(), null, false, loadFile);
                    throw new TextureNeedsImport("The texture needs to be imported: " + loadFile);
                }
            }
        }
        throw new TextureFileNotFoundException("The file was not found, " + loadFile);
    }

    public static void f(Context context, d state) {
        g(context, state, new C1370b());
    }

    public static void g(Context context, d state, C1370b importConfig) {
        i(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + state.f79823d), context, importConfig);
    }

    public static void h(File original, Context context) {
        i(original, context, new C1370b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x01c3, code lost:
    
        r3 = r15.errorMessage;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void i(File original, Context context, C1370b importConfig) {
        TextureConfig textureConfig;
        String str;
        Log.e(SerializableShaderEntry.f81152f, "importing texture " + original.getAbsolutePath());
        C14068e c10 = C14068e.c();
        if (importConfig == null) {
            try {
                importConfig = new C1370b();
            } finally {
                c10.h("Compressing texture");
            }
        }
        String str2 = null;
        try {
            textureConfig = (TextureConfig) X7.a.m().fromJson(X7.a.x(new File(original.getAbsolutePath() + ".config")), TextureConfig.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            textureConfig = null;
        }
        if (textureConfig == null) {
            textureConfig = new TextureConfig();
            textureConfig.gammaCorrection = true;
        }
        TextureConfig a10 = textureConfig.a();
        if (a10.allowOpacity && (str = a10.opacityTextureFile) != null && !str.isEmpty()) {
            File file = new File(a10.opacityTextureFile);
            if (!file.isAbsolute()) {
                file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + a10.opacityTextureFile);
            }
            a10.opacityTextureFile = file.getAbsolutePath();
        }
        File file2 = new File(Tc.b.O(original.getAbsolutePath()) + ".texture");
        File file3 = new File(Tc.b.O(file2.getAbsolutePath()) + C2633l.f9169o);
        if (importConfig.f79818a == c.ONLY_ASTC && file2.exists()) {
            d(file2, file3, textureConfig);
            return;
        }
        String absolutePath = file3.getAbsolutePath();
        if (importConfig.f79818a == c.ONLY_TEXTURE) {
            if (file3.exists()) {
                file3.delete();
            }
            absolutePath = "";
        }
        TextureImportNative.Result importTexture = TextureImportNative.importTexture(original.getAbsolutePath(), file2.getAbsolutePath(), absolutePath, a10, importConfig.f79819b);
        if (importTexture != null && importTexture.success) {
            textureConfig.originalWidth = importTexture.sourceWidth;
            textureConfig.originalHeight = importTexture.sourceHeight;
            textureConfig.width = importTexture.outputWidth;
            textureConfig.height = importTexture.outputHeight;
            String replace = original.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Tc.b.O(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + replace));
            sb2.append(".nm");
            File file4 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + sb2.toString());
            if (file4.exists()) {
                file4.delete();
            }
            X7.a.j(original.getAbsolutePath() + ".config", X7.a.m().toJson(textureConfig));
            return;
        }
        if (str2 == null || str2.isEmpty()) {
            str2 = "Failed to prepare texture";
        }
        throw new RuntimeException(str2);
    }

    public static Bitmap j(Context context, BitmapFactory.Options options, String loadFile, boolean loadOriginal) {
        InputStream inputStream;
        if (loadFile.startsWith("@@ASSET@@")) {
            String replace = loadFile.replace("@@ASSET@@", "");
            if (!replace.startsWith("/")) {
                replace = "/" + replace;
            }
            if (loadOriginal) {
                inputStream = null;
            } else {
                inputStream = context.getClass().getResourceAsStream("/assets" + Tc.b.O(replace) + ".texture");
            }
            if (inputStream == null) {
                inputStream = context.getClass().getResourceAsStream("/assets" + replace);
            }
            if (options == null) {
                options = new BitmapFactory.Options();
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, null, options);
            options.inSampleSize = b(options, 4096, 4096);
            options.inJustDecodeBounds = false;
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            if (decodeStream == null) {
                J4.d.b2("FAILED TO FOUND TEXTURE : /assets" + replace);
            }
            return decodeStream;
        }
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.S(context).startsWith("@@ASSET@@")) {
            if (loadOriginal) {
                if (p.M(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile)) {
                    return l(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile), loadFile, context, options);
                }
                if (options == null) {
                    options = new BitmapFactory.Options();
                }
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile, options);
                options.inSampleSize = b(options, 4096, 4096);
                options.inJustDecodeBounds = false;
                return BitmapFactory.decodeFile(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile, options);
            }
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + loadFile);
            if (file.exists()) {
                new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + Tc.b.O(loadFile) + ".texture");
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + Tc.b.O(loadFile) + ".texture");
                if (file2.exists()) {
                    if (options == null) {
                        options = new BitmapFactory.Options();
                    }
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                    options.inSampleSize = b(options, 4096, 4096);
                    options.inJustDecodeBounds = false;
                    return BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                }
                i(file, context, new C1370b().a(c.ONLY_TEXTURE).b(false));
                if (file2.exists()) {
                    if (options == null) {
                        options = new BitmapFactory.Options();
                    }
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                    options.inSampleSize = b(options, 4096, 4096);
                    options.inJustDecodeBounds = false;
                    return BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                }
            }
            return null;
        }
        if (!loadFile.contains("/")) {
            if (!loadFile.startsWith("/")) {
                loadFile = "/" + loadFile;
            }
            String replace2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context).replace("@@ASSET@@", "");
            InputStream resourceAsStream = !loadOriginal ? context.getClass().getResourceAsStream("/" + Tc.b.o("assets" + replace2 + Tc.b.O(loadFile) + ".texture")) : null;
            String o10 = Tc.b.o("assets" + replace2 + loadFile);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("/");
            sb2.append(o10);
            String sb3 = sb2.toString();
            if (resourceAsStream == null) {
                resourceAsStream = context.getClass().getResourceAsStream(sb3);
            }
            if (options == null) {
                options = new BitmapFactory.Options();
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(resourceAsStream, null, options);
            options.inSampleSize = b(options, 4096, 4096);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(resourceAsStream, null, options);
        }
        String substring = loadFile.substring(0, loadFile.lastIndexOf("/"));
        String substring2 = loadFile.substring(loadFile.lastIndexOf("/"));
        if (substring.contains(ConstantDescs.DEFAULT_NAME)) {
            substring = substring.replace(ConstantDescs.DEFAULT_NAME, "");
        }
        String str = substring + substring2;
        String str2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context).replace("@@ASSET@@", "") + "/";
        InputStream resourceAsStream2 = !loadOriginal ? context.getClass().getResourceAsStream("/" + Tc.b.o("assets" + str2 + Tc.b.O(str) + ".texture")) : null;
        String o11 = Tc.b.o("assets" + str2 + str);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("/");
        sb4.append(o11);
        String sb5 = sb4.toString();
        if (resourceAsStream2 == null) {
            resourceAsStream2 = context.getClass().getResourceAsStream(sb5);
        }
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(resourceAsStream2, null, options);
        options.inSampleSize = b(options, 4096, 4096);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(resourceAsStream2, null, options);
    }

    public static Bitmap k(Context context, String file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        return j(context, options, file, false);
    }

    public static Bitmap l(File original, String inputFile, Context context, BitmapFactory.Options options) {
        Log.e(SerializableShaderEntry.f81152f, "Decoding texture into bitmap " + original.getAbsolutePath());
        if (C2633l.b(Tc.b.t(original.getAbsolutePath()), ".tif")) {
            try {
                Bitmap a10 = TiffBitmapFactory.a(original);
                if (a10 != null) {
                    return a10;
                }
                return null;
            } catch (Error e10) {
                e = e10;
                e.printStackTrace();
                return null;
            } catch (CantOpenFileException e11) {
                e11.printStackTrace();
                return null;
            } catch (DecodeTiffException e12) {
                e12.printStackTrace();
                return null;
            } catch (NotEnoughtMemoryException e13) {
                e13.printStackTrace();
                return null;
            } catch (Exception e14) {
                e = e14;
                e.printStackTrace();
                return null;
            }
        }
        if (!C2633l.b(Tc.b.t(original.getAbsolutePath()), ".tga")) {
            if (options == null) {
                try {
                    options = new BitmapFactory.Options();
                } catch (Error e15) {
                    e = e15;
                    e.printStackTrace();
                    return null;
                } catch (Exception e16) {
                    e = e16;
                    e.printStackTrace();
                    return null;
                }
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(original.getAbsolutePath(), options);
            options.inSampleSize = b(options, 4096, 4096);
            options.inJustDecodeBounds = false;
            Bitmap decodeFile = BitmapFactory.decodeFile(original.getAbsolutePath(), options);
            if (decodeFile != null) {
                return decodeFile;
            }
            return null;
        }
        try {
            InputStream p10 = X7.a.p(inputFile, context);
            byte[] bArr = new byte[p10.available()];
            p10.read(bArr);
            p10.close();
            int[] g10 = Uc.a.g(bArr, Uc.a.f25998a);
            int f10 = Uc.a.f(bArr);
            Bitmap createBitmap = Bitmap.createBitmap(g10, 0, f10, f10, Uc.a.e(bArr), Bitmap.Config.ARGB_8888);
            if (createBitmap != null) {
                return createBitmap;
            }
            return null;
        } catch (IOException e17) {
            e17.printStackTrace();
            return null;
        } catch (Error e18) {
            e = e18;
            e.printStackTrace();
            return null;
        } catch (Exception e19) {
            e = e19;
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap m(String file) {
        return k(N7.c.t(), file);
    }

    public static boolean n(Context context, String loadFile, d out) {
        return o(context, loadFile, out, false);
    }

    public static boolean o(Context context, String loadFile, d out, boolean isFullPath) {
        e(context, loadFile, out, isFullPath);
        return true;
    }

    public static Bitmap p(Context context, String file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        options.inMutable = true;
        return j(context, options, file, true);
    }

    public static TextureConfig q(String file, Context context, boolean isFullPath) {
        if (file.startsWith("@@ASSET@@/Engine/SUI/")) {
            return null;
        }
        if (isFullPath) {
            try {
                return (TextureConfig) X7.a.m().fromJson(X7.a.z(file + ".config", context), TextureConfig.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        try {
            return (TextureConfig) X7.a.m().fromJson(X7.a.s(file + ".config", context), TextureConfig.class);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String r(Context context, String basePath) {
        if (basePath == null || basePath.isEmpty()) {
            return null;
        }
        String str = Tc.b.O(basePath) + C2633l.f9169o;
        InputStream resourceAsStream = context.getClass().getResourceAsStream("/assets" + str);
        if (resourceAsStream == null) {
            return null;
        }
        try {
            resourceAsStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return str;
    }

    public static String s(File baseFile) {
        if (baseFile == null) {
            return null;
        }
        File file = new File(Tc.b.O(baseFile.getAbsolutePath()) + C2633l.f9169o);
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static Bitmap t(Bitmap bitmap, File destination, File original, Context context, TextureConfig texConfig, boolean saveBoth) {
        Bitmap bitmap2;
        boolean z10;
        int i10;
        Bitmap bitmap3;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        texConfig.originalWidth = width;
        texConfig.originalHeight = height;
        if (width >= height) {
            float f10 = height / width;
            int i11 = TextureConfig.f79814s[texConfig.maxResolutionID];
            if (width > i11) {
                int i12 = (int) (i11 * f10);
                i10 = i12;
                bitmap3 = Bitmap.createScaledBitmap(bitmap, i11, i12, false);
                width = i11;
                z10 = true;
            } else {
                i10 = height;
                z10 = false;
                bitmap3 = bitmap;
            }
            int i13 = i10;
            bitmap2 = bitmap3;
            height = i13;
        } else {
            float f11 = width / height;
            int i14 = TextureConfig.f79814s[texConfig.maxResolutionID];
            if (height > i14) {
                width = (int) (i14 * f11);
                bitmap2 = Bitmap.createScaledBitmap(bitmap, width, i14, false);
                height = i14;
                z10 = true;
            } else {
                bitmap2 = bitmap;
                z10 = false;
            }
        }
        texConfig.width = width;
        texConfig.height = height;
        ColorINT colorINT = new ColorINT();
        boolean z11 = false;
        for (int i15 = 0; i15 < bitmap2.getWidth(); i15++) {
            int i16 = 0;
            while (true) {
                if (i16 < bitmap2.getHeight()) {
                    colorINT.J(bitmap2.getPixel(i15, i16));
                    if (colorINT.r() < 1.0f) {
                        z11 = true;
                        break;
                    }
                    i16++;
                }
            }
        }
        boolean z12 = !texConfig.allowModifications;
        TextureConfig.b bVar = texConfig.compressionFormat;
        texConfig.importedFormat = texConfig.l();
        if (!z11 && texConfig.l() == TextureConfig.d.RGBA8) {
            texConfig.importedFormat = TextureConfig.d.RGB8;
        }
        try {
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (!x(bitmap2, destination, texConfig, z11)) {
            if (destination.exists()) {
                destination.delete();
            }
            File a10 = a(destination);
            if (a10.exists()) {
                a10.delete();
            }
            throw new IOException("Failed to write texture file");
        }
        w(bitmap2, destination, texConfig, z12, bVar);
        if (saveBoth) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(original);
                try {
                    if (texConfig.y() && z11) {
                        bitmap2.compress(Bitmap.CompressFormat.PNG, texConfig.s(), fileOutputStream);
                    } else {
                        bitmap2.compress(Bitmap.CompressFormat.JPEG, texConfig.s(), fileOutputStream);
                    }
                    fileOutputStream.close();
                } finally {
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        if (z10 && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        X7.a.j(original.getAbsolutePath() + ".config", X7.a.m().toJson(texConfig));
        return bitmap2;
    }

    public static boolean u(TextureConfig texConfig, boolean isASTCSupported, TextureConfig.b compressionFormat) {
        if (!isASTCSupported || texConfig == null || compressionFormat == null || compressionFormat == TextureConfig.b.UNCOMPRESSED) {
            return false;
        }
        int i10 = a.f79817a[texConfig.i().ordinal()];
        return i10 == 1 || i10 == 2;
    }

    public static boolean v(Context context, String loadFile, d out) {
        try {
            e(context, loadFile, out, false);
            return true;
        } catch (TextureFileNotFoundException e10) {
            System.out.println("FAILED TO LOAD TEXTURE INFO");
            e10.printStackTrace();
            return false;
        }
    }

    public static void w(Bitmap bitmap, File textureFile, TextureConfig texConfig, boolean isASTCSupported, TextureConfig.b compressionFormat) throws IOException {
        File a10 = a(textureFile);
        if (!u(texConfig, isASTCSupported, compressionFormat)) {
            if (a10.exists()) {
                a10.delete();
                return;
            }
            return;
        }
        NativeByteBuffer a11 = ASTCEncoderNative.a(bitmap, texConfig);
        try {
            a11.saveRawToFile(a10);
            try {
                ASTCTextureData.a d10 = ASTCTextureData.d(a10, texConfig);
                if (d10 == null) {
                    if (a10.exists()) {
                        a10.delete();
                    }
                } else {
                    d10.a();
                    if (a11.isGarbage()) {
                        return;
                    }
                    a11.destroyImmediate();
                }
            } catch (RuntimeException e10) {
                if (a10.exists()) {
                    a10.delete();
                }
                throw e10;
            }
        } finally {
            if (!a11.isGarbage()) {
                a11.destroyImmediate();
            }
        }
    }

    public static boolean x(Bitmap bitmap, File outputFile, TextureConfig texConfig, boolean hasTransparency) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(outputFile);
        try {
            if (texConfig.y() && hasTransparency) {
                boolean compress = bitmap.compress(Bitmap.CompressFormat.PNG, texConfig.s(), fileOutputStream);
                fileOutputStream.close();
                return compress;
            }
            boolean compress2 = bitmap.compress(Bitmap.CompressFormat.JPEG, texConfig.s(), fileOutputStream);
            fileOutputStream.close();
            return compress2;
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
