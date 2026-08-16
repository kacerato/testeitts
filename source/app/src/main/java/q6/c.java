package q6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class c {

    public static final int f105935m = 2131034437;

    public static final int f105937o = 2131034353;

    public final LinkedList<b> f105938a = new LinkedList<>();

    public int f105939b = 60;

    public int[] f105940c = null;

    public int f105941d;

    public int f105942e;

    public int f105943f;

    public int f105944g;

    public int f105945h;

    public int f105946i;

    public float f105947j;

    public static final Ac.b f105933k = Theme.T.PRIMARY_DARK;

    public static final Ac.b f105934l = Theme.T.ACCENT;

    public static final Ac.b f105936n = Theme.T.ACCENT_GREEN;

    public b a(int index) {
        b bVar;
        synchronized (this.f105938a) {
            bVar = this.f105938a.get(index);
        }
        return bVar;
    }

    public int b() {
        return this.f105939b;
    }

    public void c(Bitmap bitmap, b selected) {
        b[] bVarArr;
        int i10;
        int i11;
        b[] bVarArr2;
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i12 = width * height;
        int[] iArr = this.f105940c;
        if (iArr == null || iArr.length != i12) {
            this.f105940c = new int[i12];
            this.f105941d = Theme.i(f105933k);
            this.f105943f = Theme.i(f105934l);
            this.f105944g = N7.c.t().getColor(R.color.snackbar_red);
            this.f105945h = Theme.i(f105936n);
            this.f105946i = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f105942e = i13;
        Arrays.fill(this.f105940c, i13);
        int floor = (int) Math.floor(width / this.f105939b);
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f105939b * floor)) / 2.0f);
        synchronized (this.f105938a) {
            bVarArr = (b[]) this.f105938a.toArray(new b[0]);
        }
        int min = Math.min(this.f105939b, bVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f105940c, 0, width, 0, 0, width, height);
            return;
        }
        float f10 = 0.01f;
        for (int i14 = 0; i14 < this.f105938a.size(); i14++) {
            f10 = Nc.b.S0(this.f105938a.get(i14).a(), f10);
        }
        float f11 = this.f105947j;
        float f12 = 1.0f;
        if (f10 > f11) {
            this.f105947j = f10;
        } else {
            this.f105947j = Nc.b.z(f11, f10, K8.d.d() * 1.0f);
        }
        b bVar = null;
        b bVar2 = null;
        for (int i15 = 0; i15 < this.f105938a.size(); i15++) {
            b bVar3 = this.f105938a.get(i15);
            if (bVar == null || bVar.a() < bVar3.a()) {
                bVar = bVar3;
            }
            if (bVar2 == null || bVar2.a() > bVar3.a()) {
                bVar2 = bVar3;
            }
        }
        int i16 = 0;
        while (i16 < min) {
            b bVar4 = bVarArr[i16];
            float a10 = bVar4.a() / this.f105947j;
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
                b bVar5 = bVar4;
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
                        b bVar6 = bVar5;
                        int i22 = floor;
                        if (bVar6 == selected) {
                            i10 = floor2;
                            i11 = min;
                            this.f105940c[i20 + i21] = this.f105943f;
                            bVarArr2 = bVarArr;
                        } else {
                            i10 = floor2;
                            i11 = min;
                            if (bVar6.e()) {
                                bVarArr2 = bVarArr;
                                this.f105940c[i20 + i21] = this.f105946i;
                            } else {
                                bVarArr2 = bVarArr;
                                if (bVar6 == bVar2) {
                                    this.f105940c[i20 + i21] = this.f105945h;
                                } else if (bVar6 == bVar) {
                                    this.f105940c[i20 + i21] = this.f105944g;
                                } else {
                                    this.f105940c[i20 + i21] = this.f105941d;
                                }
                            }
                        }
                        i21++;
                        floor2 = i10;
                        bVarArr = bVarArr2;
                        min = i11;
                        bVar5 = bVar6;
                        floor = i22;
                    }
                    i19++;
                    bVar5 = bVar5;
                    floor = floor;
                }
            }
            i16++;
            floor = floor;
            floor2 = floor2;
            bVarArr = bVarArr;
            min = min;
            f12 = 1.0f;
        }
        bitmap.setPixels(this.f105940c, 0, width, 0, 0, width, height);
    }

    public void d(b frameHistory) {
        synchronized (this.f105938a) {
            try {
                this.f105938a.addLast(frameHistory);
                while (this.f105938a.size() > this.f105939b) {
                    this.f105938a.removeFirst().f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int max) {
        this.f105939b = max;
    }

    public int f() {
        int size;
        synchronized (this.f105938a) {
            size = this.f105938a.size();
        }
        return size;
    }
}
