package r6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class c {

    public static final Ac.b f108677i = Theme.T.PRIMARY_DARK;

    public static final Ac.b f108678j = Theme.T.ACCENT;

    public static final int f108679k = 2131034353;

    public final LinkedList<b> f108680a = new LinkedList<>();

    public int f108681b = 60;

    public int[] f108682c = null;

    public int f108683d;

    public int f108684e;

    public int f108685f;

    public int f108686g;

    public long f108687h;

    public b a(int index) {
        b bVar;
        synchronized (this.f108680a) {
            bVar = this.f108680a.get(index);
        }
        return bVar;
    }

    public int b() {
        return this.f108681b;
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
        int[] iArr = this.f108682c;
        if (iArr == null || iArr.length != i12) {
            this.f108682c = new int[i12];
            this.f108683d = Theme.i(f108677i);
            this.f108685f = Theme.i(f108678j);
            this.f108686g = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f108684e = i13;
        Arrays.fill(this.f108682c, i13);
        int floor = (int) Math.floor(width / this.f108681b);
        int i14 = 1;
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f108681b * floor)) / 2.0f);
        synchronized (this.f108680a) {
            bVarArr = (b[]) this.f108680a.toArray(new b[0]);
        }
        int min = Math.min(this.f108681b, bVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f108682c, 0, width, 0, 0, width, height);
            return;
        }
        long j10 = 0;
        for (int i15 = 0; i15 < this.f108680a.size(); i15++) {
            j10 = Math.max(this.f108680a.get(i15).c(), j10);
        }
        long j11 = this.f108687h;
        if (j10 > j11) {
            this.f108687h = j10;
        } else {
            this.f108687h = Nc.b.A(j11, j10, K8.d.d() * 1.0f);
        }
        int i16 = 0;
        while (i16 < min) {
            b bVar = bVarArr[i16];
            double c10 = bVar.c() / this.f108687h;
            if (c10 < 0.0d) {
                c10 = 0.0d;
            }
            if (c10 > 1.0d) {
                c10 = 1.0d;
            }
            int i17 = floor2 + (i16 * floor);
            int min2 = Math.min(i17 + floor, width);
            if (i17 < width && min2 > 0) {
                if (i17 < 0) {
                    i17 = 0;
                }
                int i18 = min2;
                int floor3 = (int) Math.floor((1.0d - c10) * (height - 1.0f));
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
                            this.f108682c[i21 + i22] = this.f108685f;
                            i11 = floor2;
                        } else {
                            i10 = floor;
                            if (bVar.g()) {
                                i11 = floor2;
                                this.f108682c[i21 + i22] = this.f108686g;
                            } else {
                                i11 = floor2;
                                this.f108682c[i21 + i22] = this.f108683d;
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
        bitmap.setPixels(this.f108682c, 0, width, 0, 0, width, height);
    }

    public void d(b frameHistory) {
        synchronized (this.f108680a) {
            try {
                this.f108680a.addLast(frameHistory);
                while (this.f108680a.size() > this.f108681b) {
                    this.f108680a.removeFirst().h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int maxBars) {
        this.f108681b = maxBars;
    }

    public int f() {
        int size;
        synchronized (this.f108680a) {
            size = this.f108680a.size();
        }
        return size;
    }
}
