package t6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class c {

    public static final int f117099m = 2131034437;

    public static final int f117101o = 2131034353;

    public final LinkedList<b> f117102a = new LinkedList<>();

    public int f117103b = 60;

    public int[] f117104c = null;

    public int f117105d;

    public int f117106e;

    public int f117107f;

    public int f117108g;

    public int f117109h;

    public int f117110i;

    public float f117111j;

    public static final Ac.b f117097k = Theme.T.PRIMARY_DARK;

    public static final Ac.b f117098l = Theme.T.ACCENT;

    public static final Ac.b f117100n = Theme.T.ACCENT_GREEN;

    public b a(int index) {
        b bVar;
        synchronized (this.f117102a) {
            bVar = this.f117102a.get(index);
        }
        return bVar;
    }

    public int b() {
        return this.f117103b;
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
        int[] iArr = this.f117104c;
        if (iArr == null || iArr.length != i12) {
            this.f117104c = new int[i12];
            this.f117105d = Theme.i(f117097k);
            this.f117107f = Theme.i(f117098l);
            this.f117108g = N7.c.t().getColor(R.color.snackbar_red);
            this.f117109h = Theme.i(f117100n);
            this.f117110i = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f117106e = i13;
        Arrays.fill(this.f117104c, i13);
        int floor = (int) Math.floor(width / this.f117103b);
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f117103b * floor)) / 2.0f);
        synchronized (this.f117102a) {
            bVarArr = (b[]) this.f117102a.toArray(new b[0]);
        }
        int min = Math.min(this.f117103b, bVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f117104c, 0, width, 0, 0, width, height);
            return;
        }
        float f10 = 0.01f;
        for (int i14 = 0; i14 < this.f117102a.size(); i14++) {
            f10 = Nc.b.S0(this.f117102a.get(i14).a(), f10);
        }
        float f11 = this.f117111j;
        float f12 = 1.0f;
        if (f10 > f11) {
            this.f117111j = f10;
        } else {
            this.f117111j = Nc.b.z(f11, f10, K8.d.d() * 1.0f);
        }
        b bVar = null;
        b bVar2 = null;
        for (int i15 = 0; i15 < this.f117102a.size(); i15++) {
            b bVar3 = this.f117102a.get(i15);
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
            float a10 = bVar4.a() / this.f117111j;
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
                            this.f117104c[i20 + i21] = this.f117107f;
                            bVarArr2 = bVarArr;
                        } else {
                            i10 = floor2;
                            i11 = min;
                            if (bVar6.e()) {
                                bVarArr2 = bVarArr;
                                this.f117104c[i20 + i21] = this.f117110i;
                            } else {
                                bVarArr2 = bVarArr;
                                if (bVar6 == bVar2) {
                                    this.f117104c[i20 + i21] = this.f117109h;
                                } else if (bVar6 == bVar) {
                                    this.f117104c[i20 + i21] = this.f117108g;
                                } else {
                                    this.f117104c[i20 + i21] = this.f117105d;
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
        bitmap.setPixels(this.f117104c, 0, width, 0, 0, width, height);
    }

    public void d(b frameHistory) {
        synchronized (this.f117102a) {
            try {
                this.f117102a.addLast(frameHistory);
                while (this.f117102a.size() > this.f117103b) {
                    this.f117102a.removeFirst().f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int max) {
        this.f117103b = max;
    }

    public int f() {
        int size;
        synchronized (this.f117102a) {
            size = this.f117102a.size();
        }
        return size;
    }
}
