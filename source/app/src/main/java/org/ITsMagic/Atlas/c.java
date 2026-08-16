package org.ITsMagic.Atlas;

import Ug.h;
import Ug.n;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.lang.reflect.Array;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import ob.b;
import ub.p;

public class c {

    public class a implements Runnable {

        public final n f99976b;

        public final Bb.b f99977c;

        public final List f99978d;

        public final b f99979e;

        public final CountDownLatch f99980f;

        public class C1899a implements b.a {

            public class RunnableC1900a implements Runnable {

                public class RunnableC1901a implements Runnable {
                    public RunnableC1901a() {
                    }

                    @Override
                    public void run() {
                        a.this.f99980f.countDown();
                    }
                }

                public RunnableC1900a() {
                }

                @Override
                public void run() {
                    a.this.f99979e.b("Rendering");
                    a.this.f99976b.q(new RunnableC1901a());
                }
            }

            public C1899a() {
            }

            @Override
            public boolean run() {
                if (!a.this.f99976b.h()) {
                    return true;
                }
                K8.a.H(new RunnableC1900a());
                return false;
            }
        }

        public a(final n val$gpuTriangleRasterizer, final Bb.b val$output, final List val$bakeDataList, final b val$listener, final CountDownLatch val$latch) {
            this.f99976b = val$gpuTriangleRasterizer;
            this.f99977c = val$output;
            this.f99978d = val$bakeDataList;
            this.f99979e = val$listener;
            this.f99980f = val$latch;
        }

        @Override
        public void run() {
            this.f99976b.g(this.f99977c);
            int size = this.f99978d.size();
            int i10 = 0;
            while (i10 < size) {
                h hVar = (h) this.f99978d.get(i10);
                this.f99976b.f(hVar.a(), ColorINT.h0(), hVar.b());
                b bVar = this.f99979e;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Preparing ");
                i10++;
                sb2.append(i10);
                sb2.append("/");
                sb2.append(size);
                bVar.b(sb2.toString());
                this.f99979e.a(0, 0, 0.0f, "");
            }
            K8.a.J(new ob.b(new C1899a()));
        }
    }

    public interface b {
        void a(int executed, int total, float progress, String tda);

        void b(String step);
    }

    public static void a() {
        org.ITsMagic.Atlas.b.g();
    }

    public static void b() {
        org.ITsMagic.Atlas.b.i();
    }

    public static void c(p texture, int iterations, b listener) {
        try {
            org.ITsMagic.Atlas.b.p(texture, iterations, listener);
        } catch (Throwable th2) {
            th2.printStackTrace();
            d(texture, iterations, listener);
        }
    }

    public static void d(p texture, int iterations, b listener) {
        int i10 = iterations;
        int width = texture.getWidth();
        int height = texture.getHeight();
        int i11 = width * height * i10;
        ColorINT colorINT = new ColorINT();
        int i12 = 1;
        int i13 = 0;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, width, height);
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < i10) {
            int i17 = i13;
            while (i17 < height) {
                int i18 = i13;
                while (i18 < width) {
                    i15++;
                    ColorINT i19 = texture.i(i18, i17);
                    if (i19.r() > 0.001f) {
                        iArr[i18][i17] = i19.intColor;
                    } else {
                        ColorINT colorINT2 = null;
                        int i20 = -1;
                        while (i20 <= i12) {
                            int i21 = -1;
                            while (true) {
                                if (i21 > i12) {
                                    break;
                                }
                                if (i21 != 0 || i20 != 0) {
                                    int i22 = i18 + i21;
                                    int i23 = i17 + i20;
                                    if (i22 >= 0 && i22 < width && i23 >= 0 && i23 < height) {
                                        ColorINT i24 = texture.i(i22, i23);
                                        if (i24.r() > 0.001f) {
                                            colorINT2 = i24;
                                            break;
                                        }
                                    }
                                }
                                i21++;
                                i12 = 1;
                            }
                            if (colorINT2 != null) {
                                break;
                            }
                            i20++;
                            i12 = 1;
                        }
                        if (colorINT2 != null) {
                            ColorINT colorINT3 = new ColorINT();
                            colorINT3.Q(colorINT2.w());
                            colorINT3.P(colorINT2.u());
                            colorINT3.O(colorINT2.s());
                            colorINT3.N(1.0f);
                            iArr[i18][i17] = colorINT3.intColor;
                        } else {
                            iArr[i18][i17] = i19.intColor;
                        }
                    }
                    i18++;
                    i12 = 1;
                }
                float f10 = i15 / i11;
                int i25 = (int) (1000.0f * f10);
                if (i25 != i16) {
                    listener.a(i15, i11, f10, "");
                    i16 = i25;
                }
                i17++;
                i12 = 1;
                i13 = 0;
            }
            for (int i26 = 0; i26 < height; i26++) {
                for (int i27 = 0; i27 < width; i27++) {
                    colorINT.intColor = iArr[i27][i26];
                    texture.Y(i27, i26, colorINT);
                }
            }
            i14++;
            i10 = iterations;
            i12 = 1;
            i13 = 0;
        }
    }

    public void e(p outputTexture, Vertex bakeVertex, List<h> bakeDataList, int dilatationPadding, String albedoTextureParam, String tillingParam, String offsetParam, boolean allowDiffuseColor, b listener) {
        Bb.b d10 = Bb.b.d(outputTexture, 50.0f);
        listener.b("Preparing atlas texture");
        if (!d10.q()) {
            d10.f(0.0f, 0.0f, 0.0f, 0.0f);
        }
        listener.b("Drawing atlas");
        n nVar = new n(albedoTextureParam, tillingParam, offsetParam, allowDiffuseColor);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        K8.a.I(new a(nVar, d10, bakeDataList, listener, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
        d10.c();
        listener.b("Dilate atlas");
        c(outputTexture, dilatationPadding, listener);
        d10.e();
        listener.b("Drawing atlas finished");
    }
}
