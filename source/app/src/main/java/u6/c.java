package u6;

import android.graphics.Bitmap;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.util.Arrays;
import java.util.LinkedList;

public class c {

    public static final int f118526m = 2131034437;

    public static final int f118528o = 2131034353;

    public final LinkedList<b> f118529a = new LinkedList<>();

    public int f118530b = 60;

    public int[] f118531c = null;

    public int f118532d;

    public int f118533e;

    public int f118534f;

    public int f118535g;

    public int f118536h;

    public int f118537i;

    public float f118538j;

    public static final Ac.b f118524k = Theme.T.PRIMARY_DARK;

    public static final Ac.b f118525l = Theme.T.ACCENT;

    public static final Ac.b f118527n = Theme.T.ACCENT_GREEN;

    public b a(int index) {
        b bVar;
        synchronized (this.f118529a) {
            bVar = this.f118529a.get(index);
        }
        return bVar;
    }

    public int b() {
        return this.f118530b;
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
        int[] iArr = this.f118531c;
        if (iArr == null || iArr.length != i12) {
            this.f118531c = new int[i12];
            this.f118532d = Theme.i(f118524k);
            this.f118534f = Theme.i(f118525l);
            this.f118535g = N7.c.t().getColor(R.color.snackbar_red);
            this.f118536h = Theme.i(f118527n);
            this.f118537i = N7.c.t().getColor(R.color.monokia_pro_pink);
        }
        int i13 = Theme.i(Theme.T.PANEL);
        this.f118533e = i13;
        Arrays.fill(this.f118531c, i13);
        int floor = (int) Math.floor(width / this.f118530b);
        if (floor <= 0) {
            floor = 1;
        }
        int floor2 = (int) Math.floor((width - (this.f118530b * floor)) / 2.0f);
        synchronized (this.f118529a) {
            bVarArr = (b[]) this.f118529a.toArray(new b[0]);
        }
        int min = Math.min(this.f118530b, bVarArr.length);
        if (min <= 0) {
            bitmap.setPixels(this.f118531c, 0, width, 0, 0, width, height);
            return;
        }
        float f10 = 0.01f;
        for (int i14 = 0; i14 < this.f118529a.size(); i14++) {
            f10 = Nc.b.S0(this.f118529a.get(i14).a(), f10);
        }
        float f11 = this.f118538j;
        float f12 = 1.0f;
        if (f10 > f11) {
            this.f118538j = f10;
        } else {
            this.f118538j = Nc.b.z(f11, f10, K8.d.d() * 1.0f);
        }
        b bVar = null;
        b bVar2 = null;
        for (int i15 = 0; i15 < this.f118529a.size(); i15++) {
            b bVar3 = this.f118529a.get(i15);
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
            float a10 = bVar4.a() / this.f118538j;
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
                            this.f118531c[i20 + i21] = this.f118534f;
                            bVarArr2 = bVarArr;
                        } else {
                            i10 = floor2;
                            i11 = min;
                            if (bVar6.e()) {
                                bVarArr2 = bVarArr;
                                this.f118531c[i20 + i21] = this.f118537i;
                            } else {
                                bVarArr2 = bVarArr;
                                if (bVar6 == bVar2) {
                                    this.f118531c[i20 + i21] = this.f118536h;
                                } else if (bVar6 == bVar) {
                                    this.f118531c[i20 + i21] = this.f118535g;
                                } else {
                                    this.f118531c[i20 + i21] = this.f118532d;
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
        bitmap.setPixels(this.f118531c, 0, width, 0, 0, width, height);
    }

    public void d(b frameHistory) {
        synchronized (this.f118529a) {
            try {
                this.f118529a.addLast(frameHistory);
                while (this.f118529a.size() > this.f118530b) {
                    this.f118529a.removeFirst().f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int max) {
        this.f118530b = max;
    }

    public int f() {
        int size;
        synchronized (this.f118529a) {
            size = this.f118529a.size();
        }
        return size;
    }
}
