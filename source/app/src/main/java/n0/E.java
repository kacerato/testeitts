package n0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.filament.Engine;
import com.google.android.filament.Texture;
import com.google.android.filament.android.TextureHelper;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class E {

    public static final boolean f97556a = true;

    public class a {

        public static final int[] f97557a;

        static {
            int[] iArr = new int[F.values().length];
            try {
                iArr[F.COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[F.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[F.DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f97557a = iArr;
        }
    }

    public static final Texture a(Engine engine, Bitmap bitmap, F f10) {
        Texture a10 = new Texture.a().l(bitmap.getWidth()).e(bitmap.getHeight()).h(Texture.i.SAMPLER_2D).d(c(f10)).g(255).k(536).a(engine);
        M.o(a10, "build(...)");
        TextureHelper.c(engine, a10, 0, bitmap);
        a10.p(engine);
        return a10;
    }

    public static final Texture.e b(Bitmap bitmap) {
        String name = bitmap.getConfig().name();
        switch (name.hashCode()) {
            case -189895305:
                if (name.equals("ALPHA_8")) {
                    return Texture.e.ALPHA;
                }
                break;
            case 223337875:
                if (name.equals("ARGB_8888")) {
                    return Texture.e.RGBA;
                }
                break;
            case 1717230432:
                if (name.equals("RGBA_F16")) {
                    return Texture.e.RGBA;
                }
                break;
            case 1857362722:
                if (name.equals("RGB_565")) {
                    return Texture.e.RGB;
                }
                break;
        }
        throw new IllegalArgumentException("Unknown bitmap configuration");
    }

    public static final Texture.f c(F f10) {
        int i10 = a.f97557a[f10.ordinal()];
        if (i10 == 1) {
            return Texture.f.SRGB8_A8;
        }
        if (i10 != 2 && i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return Texture.f.RGBA8;
    }

    @NotNull
    public static final Texture d(@NotNull Engine engine, @NotNull Resources resources, int i10, @NotNull F type) {
        M.p(engine, "engine");
        M.p(resources, "resources");
        M.p(type, "type");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPremultiplied = type == F.COLOR;
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, i10, options);
        M.m(decodeResource);
        return a(engine, decodeResource, type);
    }

    @NotNull
    public static final Texture e(@NotNull Engine engine, @NotNull byte[] bytes, @NotNull F type, int i10, int i11) {
        M.p(engine, "engine");
        M.p(bytes, "bytes");
        M.p(type, "type");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPremultiplied = type == F.COLOR;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bytes, i10, i11, options);
        M.m(decodeByteArray);
        return a(engine, decodeByteArray, type);
    }

    public static Texture f(Engine engine, byte[] bArr, F f10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            i10 = 0;
        }
        if ((i12 & 16) != 0) {
            i11 = bArr.length;
        }
        return e(engine, bArr, f10, i10, i11);
    }

    public static final Texture.k g(Bitmap bitmap) {
        String name = bitmap.getConfig().name();
        switch (name.hashCode()) {
            case -189895305:
                if (name.equals("ALPHA_8")) {
                    return Texture.k.USHORT;
                }
                break;
            case 223337875:
                if (name.equals("ARGB_8888")) {
                    return Texture.k.UBYTE;
                }
                break;
            case 1717230432:
                if (name.equals("RGBA_F16")) {
                    return Texture.k.HALF;
                }
                break;
            case 1857362722:
                if (name.equals("RGB_565")) {
                    return Texture.k.USHORT_565;
                }
                break;
        }
        throw new IllegalArgumentException("Unsupported bitmap configuration");
    }
}
