package ab;

import android.graphics.Bitmap;
import android.graphics.Color;
import c7.C4160c;
import c7.InterfaceC4159b;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import ub.g;
import yb.C16165b;

public class c {

    public static final Object f31980a = new Object();

    public static final List<C3596a> f31981b = new SteppedArrayList();

    public static C4160c f31982c;

    public static int f31983d;

    public class a implements x8.b {
        @Override
        public void a() {
            synchronized (c.f31981b) {
                c.f31981b.clear();
            }
        }

        @Override
        public void b() {
            synchronized (c.f31981b) {
                c.f31981b.clear();
            }
        }
    }

    public class b implements InterfaceC4159b {

        public class a implements InterfaceC4159b {
            public a() {
            }

            @Override
            public String a() {
                return "NormalMaps finished";
            }

            @Override
            public void b() {
                int unused = c.f31983d = -1;
                C4160c unused2 = c.f31982c = null;
            }
        }

        @Override
        public String a() {
            if (c.f31981b.size() == 0 && c.f31982c != null) {
                c.f31982c.f34424b = new a();
                c.f31982c.h(1.0f);
                C4160c unused = c.f31982c = null;
            }
            return "NormalMaps -" + c.f31981b.size() + "";
        }

        @Override
        public void b() {
            int unused = c.f31983d = -1;
            C4160c unused2 = c.f31982c = null;
        }
    }

    public class C0855c implements InterfaceC4159b {
        @Override
        public String a() {
            return "NormalMaps finished";
        }

        @Override
        public void b() {
            int unused = c.f31983d = -1;
            C4160c unused2 = c.f31982c = null;
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        f31983d = -1;
    }

    public static int e(int v10, int lo, int hi2) {
        return v10 < lo ? lo : v10 > hi2 ? hi2 : v10;
    }

    public static Bitmap f(C3596a genQueue) {
        return h(genQueue.f31976c, genQueue.f31978e);
    }

    public static Bitmap g(Bitmap albedo, float bias) {
        int width = albedo.getWidth();
        int height = albedo.getHeight();
        int i10 = width * height;
        float[] fArr = new float[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < height; i12++) {
            for (int i13 = 0; i13 < width; i13++) {
                ColorINT colorINT = new ColorINT(albedo.getPixel(i13, i12));
                fArr[(i12 * width) + i13] = (colorINT.w() * 0.299f) + (colorINT.u() * 0.587f) + (colorINT.s() * 0.114f);
            }
        }
        float f10 = 1.0f - ((bias - 0.1f) / 100.0f);
        if (f10 < 1.0E-4f) {
            f10 = 1.0E-4f;
        }
        int[] iArr = new int[i10];
        int i14 = 0;
        while (i14 < height) {
            int i15 = height - 1;
            int e10 = e(i14 - 1, i11, i15);
            int i16 = i14 + 1;
            int e11 = e(i16, i11, i15);
            int i17 = i11;
            while (i17 < width) {
                int i18 = width - 1;
                int e12 = e(i17 - 1, i11, i18);
                int i19 = i17 + 1;
                int e13 = e(i19, i11, i18);
                int i20 = i14 * width;
                float f11 = (fArr[e12 + i20] - fArr[e13 + i20]) * 0.5f * 1.0f;
                float f12 = (fArr[(e11 * width) + i17] - fArr[(e10 * width) + i17]) * 0.5f * 1.0f;
                float f13 = f10;
                float sqrt = 1.0f / ((float) Math.sqrt(((f11 * f11) + (f12 * f12)) + (f10 * f10)));
                iArr[i20 + i17] = Color.argb(255, p(f11 * sqrt), p(f12 * sqrt), p(f13 * sqrt));
                i11 = 0;
                f10 = f13;
                i17 = i19;
            }
            i14 = i16;
        }
        return Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap h(g albedo, float bias) {
        g gVar;
        int i10 = 0;
        if (albedo.N()) {
            gVar = albedo;
        } else {
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.allowModifications = true;
            gVar = new g(albedo.getFile(), textureConfig, false);
        }
        int width = gVar.getWidth();
        int height = gVar.getHeight();
        int i11 = width * height;
        float[] fArr = new float[i11];
        for (int i12 = 0; i12 < height; i12++) {
            for (int i13 = 0; i13 < width; i13++) {
                ColorINT i14 = gVar.i(i13, i12);
                fArr[(i12 * width) + i13] = (i14.w() * 0.299f) + (i14.u() * 0.587f) + (i14.s() * 0.114f);
            }
        }
        float f10 = 1.0f - ((bias - 0.1f) / 100.0f);
        if (f10 < 1.0E-4f) {
            f10 = 1.0E-4f;
        }
        int[] iArr = new int[i11];
        int i15 = 0;
        while (i15 < height) {
            int i16 = height - 1;
            int e10 = e(i15 - 1, i10, i16);
            int i17 = i15 + 1;
            int e11 = e(i17, i10, i16);
            int i18 = i10;
            while (i18 < width) {
                int i19 = width - 1;
                int e12 = e(i18 - 1, i10, i19);
                int i20 = i18 + 1;
                int e13 = e(i20, i10, i19);
                int i21 = i15 * width;
                float f11 = (fArr[e12 + i21] - fArr[e13 + i21]) * 0.5f * 1.0f;
                float f12 = (fArr[(e11 * width) + i18] - fArr[(e10 * width) + i18]) * 0.5f * 1.0f;
                float f13 = f10;
                float sqrt = 1.0f / ((float) Math.sqrt(((f11 * f11) + (f12 * f12)) + (f10 * f10)));
                iArr[i21 + i18] = Color.argb(255, p(f11 * sqrt), p(f12 * sqrt), p(f13 * sqrt));
                i10 = 0;
                f10 = f13;
                i18 = i20;
            }
            i15 = i17;
        }
        return Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
    }

    public static void i(C3596a genQueue) {
        List<C3596a> list = f31981b;
        synchronized (list) {
            try {
                if (!list.contains(genQueue)) {
                    int i10 = 0;
                    while (true) {
                        List<C3596a> list2 = f31981b;
                        if (i10 >= list2.size()) {
                            list2.add(genQueue);
                            break;
                        } else if (list2.get(i10).f31976c == genQueue.f31976c) {
                            return;
                        } else {
                            i10++;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean j(Bitmap albedo, String outIPP, float bias) {
        if (albedo == null) {
            return false;
        }
        Bitmap g10 = g(albedo, bias);
        o(g10, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + outIPP), Bitmap.CompressFormat.JPEG, 100);
        g10.recycle();
        System.gc();
        g d10 = C16165b.d(outIPP);
        if (d10 == null || d10.J()) {
            return true;
        }
        d10.E0();
        return true;
    }

    public static boolean k(g albedo, File output, float bias) {
        if (albedo == null || !albedo.J()) {
            return false;
        }
        Bitmap h10 = h(albedo, bias);
        o(h10, output, Bitmap.CompressFormat.JPEG, 100);
        h10.recycle();
        System.gc();
        return true;
    }

    public static boolean l(g albedo, String outIPP, float bias) {
        if (albedo == null || !albedo.J()) {
            return false;
        }
        Bitmap h10 = h(albedo, bias);
        o(h10, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + outIPP), Bitmap.CompressFormat.JPEG, 100);
        h10.recycle();
        System.gc();
        g d10 = C16165b.d(outIPP);
        if (d10 == null || d10.J()) {
            return true;
        }
        d10.E0();
        return true;
    }

    public static void m() {
        f31981b.clear();
    }

    public static void n() {
        C3596a c3596a;
        List<C3596a> list = f31981b;
        if (list.isEmpty()) {
            C4160c c4160c = f31982c;
            if (c4160c != null) {
                c4160c.f34424b = new C0855c();
                f31982c.h(1.0f);
                f31982c = null;
                return;
            }
            return;
        }
        if (f31982c == null) {
            f31982c = new C4160c(new b());
        }
        synchronized (list) {
            c3596a = list.get(0);
        }
        g gVar = c3596a.f31976c;
        if (gVar != null && gVar.J()) {
            String str = Tc.b.O(c3596a.f31976c.getFile()) + ".nm";
            if (c3596a.f31979g != null) {
                str = Tc.b.u(c3596a.f31976c.getFile()) + "/" + c3596a.f31979g;
            }
            o(f(c3596a), new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + str), Bitmap.CompressFormat.JPEG, 100);
            g d10 = C16165b.d(str);
            if (d10 != null && !d10.J()) {
                d10.E0();
            }
            c3596a.f31977d.a(c3596a.f31975b, c3596a.f31976c, str);
        }
        synchronized (list) {
            list.remove(c3596a);
        }
    }

    public static boolean o(Bitmap bmp, File outFile, Bitmap.CompressFormat format, int quality) {
        outFile.getParentFile().mkdirs();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(outFile);
            try {
                boolean compress = bmp.compress(format, quality, fileOutputStream);
                fileOutputStream.close();
                return compress;
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static int p(float n10) {
        int round = Math.round(((n10 * 0.5f) + 0.5f) * 255.0f);
        if (round < 0) {
            return 0;
        }
        if (round > 255) {
            return 255;
        }
        return round;
    }
}
