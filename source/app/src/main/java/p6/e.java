package p6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class e {

    public static final int f103586m = 2131034437;

    public static final int f103588o = 2131034353;

    public final LinkedList<C14931b> f103589a = new LinkedList<>();

    public int f103590b = 60;

    public int[] f103591c = null;

    public int f103592d;

    public int f103593e;

    public int f103594f;

    public int f103595g;

    public int f103596h;

    public int f103597i;

    public float f103598j;

    public static final Ac.b f103584k = Theme.T.PRIMARY_DARK;

    public static final Ac.b f103585l = Theme.T.ACCENT;

    public static final Ac.b f103587n = Theme.T.ACCENT_GREEN;

    public C14931b a(int index) {
        C14931b c14931b;
        synchronized (this.f103589a) {
            c14931b = this.f103589a.get(index);
        }
        return c14931b;
    }

    public int b() {
        return this.f103590b;
    }

    public void c(Bitmap bitmap, C14931b selected) {
        C14931b[] c14931bArr;
        int i10;
        int i11;
        C14931b[] c14931bArr2;
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i12 = width * height;
        int[] iArr = this.f103591c;
        if (iArr == null || iArr.length != i12) {
            this.f103591c = new int[i12];
            this.f103592d = Theme.i(f103584k);
            this.f103594f = Theme.i(f103585l);
            this.f103595g = N7.c.t().getColor(R.color.snackbar_red);
            this.f103596h = Theme.i(f103587n);
            this.f103597i = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f103593e = i13;
        Arrays.fill(this.f103591c, i13);
        int floor = (int) Math.floor(width / this.f103590b);
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f103590b * floor)) / 2.0f);
        synchronized (this.f103589a) {
            c14931bArr = (C14931b[]) this.f103589a.toArray(new C14931b[0]);
        }
        int min = Math.min(this.f103590b, c14931bArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f103591c, 0, width, 0, 0, width, height);
            return;
        }
        float f10 = 0.01f;
        for (int i14 = 0; i14 < this.f103589a.size(); i14++) {
            f10 = Nc.b.S0(this.f103589a.get(i14).a(), f10);
        }
        float f11 = this.f103598j;
        float f12 = 1.0f;
        if (f10 > f11) {
            this.f103598j = f10;
        } else {
            this.f103598j = Nc.b.z(f11, f10, K8.d.d() * 1.0f);
        }
        C14931b c14931b = null;
        C14931b c14931b2 = null;
        for (int i15 = 0; i15 < this.f103589a.size(); i15++) {
            C14931b c14931b3 = this.f103589a.get(i15);
            if (c14931b == null || c14931b.a() < c14931b3.a()) {
                c14931b = c14931b3;
            }
            if (c14931b2 == null || c14931b2.a() > c14931b3.a()) {
                c14931b2 = c14931b3;
            }
        }
        int i16 = 0;
        while (i16 < min) {
            C14931b c14931b4 = c14931bArr[i16];
            float a10 = c14931b4.a() / this.f103598j;
            if (a10 < 0.0f) {
                a10 = 0.0f;
            }
            if (a10 > f12) {
                a10 = f12;
            }
            int i17 = (i16 * floor) + floor2;
            int min2 = Math.min(i17 + floor, width);
            if (i17 < width && min2 > 0) {
                if (i17 < 0) {
                    i17 = 0;
                }
                C14931b c14931b5 = c14931b4;
                int floor3 = (int) Math.floor((f12 - a10) * (height - f12));
                if (floor3 < 0) {
                    floor3 = 0;
                }
                int i18 = height - 1;
                if (floor3 > i18) {
                    floor3 = i18;
                }
                int i19 = floor3 + 1;
                while (i19 < height) {
                    int i20 = i19 * width;
                    int i21 = i17;
                    while (i21 < min2) {
                        C14931b c14931b6 = c14931b5;
                        int i22 = floor;
                        if (c14931b6 == selected) {
                            i10 = floor2;
                            i11 = min;
                            this.f103591c[i20 + i21] = this.f103594f;
                            c14931bArr2 = c14931bArr;
                        } else {
                            i10 = floor2;
                            i11 = min;
                            if (c14931b6.e()) {
                                c14931bArr2 = c14931bArr;
                                this.f103591c[i20 + i21] = this.f103597i;
                            } else {
                                c14931bArr2 = c14931bArr;
                                if (c14931b6 == c14931b2) {
                                    this.f103591c[i20 + i21] = this.f103596h;
                                } else if (c14931b6 == c14931b) {
                                    this.f103591c[i20 + i21] = this.f103595g;
                                } else {
                                    this.f103591c[i20 + i21] = this.f103592d;
                                }
                            }
                        }
                        i21++;
                        floor2 = i10;
                        c14931bArr = c14931bArr2;
                        min = i11;
                        c14931b5 = c14931b6;
                        floor = i22;
                    }
                    i19++;
                    c14931b5 = c14931b5;
                    floor = floor;
                }
            }
            i16++;
            floor = floor;
            floor2 = floor2;
            c14931bArr = c14931bArr;
            min = min;
            f12 = 1.0f;
        }
        bitmap.setPixels(this.f103591c, 0, width, 0, 0, width, height);
    }

    public void d(C14931b frameHistory) {
        synchronized (this.f103589a) {
            try {
                this.f103589a.addLast(frameHistory);
                while (this.f103589a.size() > this.f103590b) {
                    this.f103589a.removeFirst().f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int max) {
        this.f103590b = max;
    }

    public int f() {
        int size;
        synchronized (this.f103589a) {
            size = this.f103589a.size();
        }
        return size;
    }
}
