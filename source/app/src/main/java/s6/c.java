package s6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class c {

    public static final Ac.b f109199i = Theme.T.PRIMARY_DARK;

    public static final Ac.b f109200j = Theme.T.ACCENT;

    public static final int f109201k = 2131034353;

    public final LinkedList<b> f109202a = new LinkedList<>();

    public int f109203b = 60;

    public int[] f109204c = null;

    public int f109205d;

    public int f109206e;

    public int f109207f;

    public int f109208g;

    public long f109209h;

    public b a(int index) {
        b bVar;
        synchronized (this.f109202a) {
            bVar = this.f109202a.get(index);
        }
        return bVar;
    }

    public int b() {
        return this.f109203b;
    }

    public void c(Bitmap bitmap, b selected) {
        b[] bVarArr;
        int i10;
        int i11;
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i12 = width * height;
        int[] iArr = this.f109204c;
        if (iArr == null || iArr.length != i12) {
            this.f109204c = new int[i12];
            this.f109205d = Theme.i(f109199i);
            this.f109207f = Theme.i(f109200j);
            this.f109208g = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f109206e = i13;
        Arrays.fill(this.f109204c, i13);
        int floor = (int) Math.floor(width / this.f109203b);
        int i14 = 1;
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f109203b * floor)) / 2.0f);
        synchronized (this.f109202a) {
            bVarArr = (b[]) this.f109202a.toArray(new b[0]);
        }
        int min = Math.min(this.f109203b, bVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f109204c, 0, width, 0, 0, width, height);
            return;
        }
        long j10 = 0;
        for (int i15 = 0; i15 < this.f109202a.size(); i15++) {
            j10 = Math.max(this.f109202a.get(i15).e(), j10);
        }
        long j11 = this.f109209h;
        if (j10 > j11) {
            this.f109209h = j10;
        } else {
            this.f109209h = Nc.b.A(j11, j10, K8.d.d() * 1.0f);
        }
        int i16 = 0;
        while (i16 < min) {
            b bVar = bVarArr[i16];
            double e10 = bVar.e() / this.f109209h;
            if (e10 < 0.0d) {
                e10 = 0.0d;
            }
            if (e10 > 1.0d) {
                e10 = 1.0d;
            }
            int i17 = floor2 + (i16 * floor);
            int min2 = Math.min(i17 + floor, width);
            if (i17 < width && min2 > 0) {
                if (i17 < 0) {
                    i17 = 0;
                }
                int i18 = min2;
                int floor3 = (int) Math.floor((1.0d - e10) * (height - 1.0f));
                if (floor3 < 0) {
                    floor3 = 0;
                }
                int i19 = height - 1;
                if (floor3 > i19) {
                    floor3 = i19;
                }
                int i20 = floor3 + i14;
                while (i20 < height) {
                    int i21 = i20 * width;
                    int i22 = i17;
                    int i23 = i18;
                    while (i22 < i23) {
                        if (bVar == selected) {
                            i10 = floor;
                            this.f109204c[i21 + i22] = this.f109207f;
                            i11 = floor2;
                        } else {
                            i10 = floor;
                            if (bVar.f()) {
                                i11 = floor2;
                                this.f109204c[i21 + i22] = this.f109208g;
                            } else {
                                i11 = floor2;
                                this.f109204c[i21 + i22] = this.f109205d;
                            }
                        }
                        i22++;
                        floor2 = i11;
                        floor = i10;
                    }
                    i20++;
                    i18 = i23;
                }
            }
            i16++;
            floor2 = floor2;
            floor = floor;
            i14 = 1;
        }
        bitmap.setPixels(this.f109204c, 0, width, 0, 0, width, height);
    }

    public void d(b frameHistory) {
        synchronized (this.f109202a) {
            try {
                this.f109202a.addLast(frameHistory);
                while (this.f109202a.size() > this.f109203b) {
                    this.f109202a.removeFirst().g();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int maxBars) {
        this.f109203b = maxBars;
    }

    public int f() {
        int size;
        synchronized (this.f109202a) {
            size = this.f109202a.size();
        }
        return size;
    }
}
