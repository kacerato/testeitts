package o6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class d {

    public static final Ac.b f98568i = Theme.T.PRIMARY_DARK;

    public static final Ac.b f98569j = Theme.T.ACCENT;

    public static final int f98570k = 2131034353;

    public final LinkedList<c> f98571a = new LinkedList<>();

    public int f98572b = 60;

    public int[] f98573c = null;

    public int f98574d;

    public int f98575e;

    public int f98576f;

    public int f98577g;

    public double f98578h;

    public c a(int index) {
        c cVar;
        synchronized (this.f98571a) {
            cVar = this.f98571a.get(index);
        }
        return cVar;
    }

    public int b() {
        return this.f98572b;
    }

    public void c(Bitmap bitmap, c selected) {
        c[] cVarArr;
        int i10;
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i11 = width * height;
        int[] iArr = this.f98573c;
        if (iArr == null || iArr.length != i11) {
            this.f98573c = new int[i11];
            this.f98574d = Theme.i(f98568i);
            this.f98576f = Theme.i(f98569j);
            this.f98577g = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i12 = Theme.i(Theme.T.PANEL);
        this.f98575e = i12;
        Arrays.fill(this.f98573c, i12);
        int floor = (int) Math.floor(width / this.f98572b);
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f98572b * floor)) / 2.0f);
        synchronized (this.f98571a) {
            cVarArr = (c[]) this.f98571a.toArray(new c[0]);
        }
        int min = Math.min(this.f98572b, cVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f98573c, 0, width, 0, 0, width, height);
            return;
        }
        double d10 = 0.1d;
        for (c cVar : cVarArr) {
            d10 = Math.max(cVar.e(), d10);
        }
        if (d10 > this.f98578h) {
            this.f98578h = d10;
        } else {
            this.f98578h = Nc.b.z((float) r14, (float) d10, K8.d.d() * 1.0f);
        }
        double d11 = 0.0d;
        if (this.f98578h <= 0.0d) {
            this.f98578h = 0.1d;
        }
        int i13 = 0;
        while (i13 < min) {
            c cVar2 = cVarArr[i13];
            int i14 = floor2;
            double e10 = cVar2.e() / this.f98578h;
            if (e10 < d11) {
                e10 = d11;
            }
            if (e10 > 1.0d) {
                e10 = 1.0d;
            }
            int i15 = i14 + (i13 * floor);
            int min2 = Math.min(i15 + floor, width);
            if (i15 < width && min2 > 0) {
                if (i15 < 0) {
                    i15 = 0;
                }
                int floor3 = (int) Math.floor((1.0d - e10) * (height - 1.0d));
                if (floor3 < 0) {
                    floor3 = 0;
                }
                int i16 = height - 1;
                if (floor3 > i16) {
                    floor3 = i16;
                }
                for (int i17 = floor3 + 1; i17 < height; i17++) {
                    int i18 = i17 * width;
                    int i19 = i15;
                    while (i19 < min2) {
                        if (cVar2 == selected) {
                            this.f98573c[i18 + i19] = this.f98576f;
                            i10 = floor;
                        } else if (cVar2.g()) {
                            i10 = floor;
                            this.f98573c[i18 + i19] = this.f98577g;
                        } else {
                            i10 = floor;
                            this.f98573c[i18 + i19] = this.f98574d;
                        }
                        i19++;
                        floor = i10;
                    }
                }
            }
            i13++;
            floor2 = i14;
            floor = floor;
            d11 = 0.0d;
        }
        bitmap.setPixels(this.f98573c, 0, width, 0, 0, width, height);
    }

    public void d(c frameHistory) {
        synchronized (this.f98571a) {
            try {
                this.f98571a.addLast(frameHistory);
                while (this.f98571a.size() > this.f98572b) {
                    this.f98571a.removeFirst().h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int maxBars) {
        this.f98572b = maxBars;
    }

    public int f() {
        int size;
        synchronized (this.f98571a) {
            size = this.f98571a.size();
        }
        return size;
    }
}
