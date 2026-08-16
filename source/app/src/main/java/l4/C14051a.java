package l4;

import Ic.A;
import K8.d;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.itsmagic.engine2.R;
import i4.C13580a;
import p4.InterfaceC14926a;
import rc.C15169a;
import tc.h;

public class C14051a {

    public float f96114a;

    public float f96115b;

    public float f96116c;

    public float f96117d;

    public float f96118e;

    public float f96119f;

    public float f96120g;

    public float f96121h;

    public float f96122i;

    public float f96123j;

    public float f96124k;

    public float f96125l;

    public int f96126m;

    public int f96127n;

    public EnumC1861a f96128o = null;

    public View f96129p = null;

    public final Rect f96130q = new Rect();

    public final Rect f96131r = new Rect();

    public InterfaceC14926a f96132s;

    public b f96133t;

    public h f96134u;

    public enum EnumC1861a {
        Horizontal,
        Vertical
    }

    public C14051a(InterfaceC14926a divisionAreaToSplitArea) {
        this.f96132s = divisionAreaToSplitArea;
    }

    public void a(FrameLayout screenArea) {
        View view = this.f96129p;
        if (view != null) {
            screenArea.removeView(view);
            this.f96129p = null;
        }
    }

    public void b(FrameLayout screenArea) {
        View view = this.f96129p;
        if (view != null) {
            screenArea.removeView(view);
            this.f96129p = null;
        }
    }

    public void c() {
        h n10;
        Context t10 = N7.c.t();
        if (this.f96133t != null) {
            h hVar = this.f96134u;
            if (hVar == null) {
                this.f96133t = null;
            } else if (hVar == null || !hVar.q() || this.f96134u.t() || this.f96134u.k()) {
                this.f96133t = null;
                this.f96134u = null;
            } else if (this.f96134u.s()) {
                int i10 = (int) this.f96134u.g().f79838x;
                int i11 = (int) this.f96134u.g().f79839y;
                b bVar = this.f96133t;
                int i12 = i10 - bVar.f96135a;
                int i13 = i11 - bVar.f96136b;
                EnumC1861a enumC1861a = this.f96128o;
                if (enumC1861a == EnumC1861a.Horizontal) {
                    this.f96132s.a(Nc.b.I(this.f96133t.f96137c + (i12 / this.f96132s.c())), t10);
                } else if (enumC1861a == EnumC1861a.Vertical) {
                    this.f96132s.a(Nc.b.I(this.f96133t.f96137c + (i13 / this.f96132s.d())), t10);
                }
            }
        }
        synchronized (this.f96130q) {
            try {
                if (this.f96129p != null && this.f96133t == null && this.f96134u == null && (n10 = C15169a.n(0)) != null && n10.k() && !this.f96132s.b().c(n10)) {
                    int i14 = (int) n10.g().f79838x;
                    int i15 = (int) n10.g().f79839y;
                    Rect rect = this.f96130q;
                    if (i14 >= rect.left && i14 <= rect.right && i15 >= rect.top && i15 <= rect.bottom) {
                        this.f96134u = n10;
                        b bVar2 = new b();
                        this.f96133t = bVar2;
                        bVar2.f96135a = i14;
                        bVar2.f96136b = i15;
                        bVar2.f96137c = this.f96132s.e();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d() {
        View view = this.f96129p;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void e(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        if (this.f96128o == EnumC1861a.Horizontal) {
            this.f96129p = layoutInflater.inflate(R.layout.editor_split_division_horizontal, (ViewGroup) null);
        } else {
            this.f96129p = layoutInflater.inflate(R.layout.editor_split_division_vertical, (ViewGroup) null);
        }
        screenArea.addView(this.f96129p);
        j(editor3DScreen);
    }

    public void f(k4.c listener) {
        View view = this.f96129p;
        if (view != null) {
            listener.a(view);
        }
    }

    public void g() {
        View view = this.f96129p;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void h() {
        float f10 = this.f96118e;
        this.f96122i = f10;
        float f11 = this.f96119f;
        this.f96123j = f11;
        float f12 = this.f96120g;
        this.f96124k = f12;
        float f13 = this.f96121h;
        this.f96125l = f13;
        this.f96114a = f10;
        this.f96115b = f11;
        this.f96116c = f12;
        this.f96117d = f13;
    }

    public void i(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float x10, float y10, float w10, float h10, EnumC1861a direction, C13580a editor3DScreen, boolean stepLerp) {
        this.f96118e = x10;
        this.f96119f = y10;
        this.f96120g = w10;
        this.f96121h = h10;
        if (stepLerp) {
            h();
        }
        synchronized (this.f96130q) {
            try {
                View view = this.f96129p;
                if (view != null && view.getGlobalVisibleRect(this.f96131r)) {
                    Rect rect = this.f96130q;
                    Rect rect2 = this.f96131r;
                    rect.left = rect2.left;
                    rect.top = rect2.top;
                    rect.right = rect2.right;
                    rect.bottom = rect2.bottom;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        View view2 = this.f96129p;
        if (view2 == null || this.f96128o != direction) {
            if (view2 != null) {
                screenArea.removeView(view2);
                this.f96129p = null;
            }
            this.f96128o = direction;
            e(screenArea, activity, context, layoutInflater, editor3DScreen);
        }
        j(editor3DScreen);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00e8 A[Catch: all -> 0x00c3, Exception -> 0x00c5, Merged into TryCatch #0 {all -> 0x00c3, Exception -> 0x00c5, blocks: (B:6:0x0007, B:8:0x0035, B:10:0x00a5, B:12:0x00ae, B:14:0x00b7, B:18:0x00c8, B:20:0x00e8, B:22:0x00f1, B:30:0x00ee), top: B:5:0x0007 }, TRY_LEAVE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(C13580a editor3DScreen) {
        FrameLayout.LayoutParams layoutParams;
        float f10;
        float f11;
        boolean z10;
        if (this.f96129p != null) {
            synchronized (this.f96130q) {
                try {
                    this.f96118e = A.b(this.f96118e);
                    this.f96119f = A.b(this.f96119f);
                    this.f96120g = A.b(this.f96120g);
                    float b10 = A.b(this.f96121h);
                    this.f96121h = b10;
                    float f12 = this.f96118e;
                    this.f96122i = f12;
                    this.f96123j = this.f96119f;
                    this.f96124k = this.f96120g;
                    this.f96125l = b10;
                    float f13 = this.f96114a;
                    this.f96114a = Nc.b.N0(f13, f12, (Nc.b.k(f12 - f13) + 0.01f) * 35.0f * d.d());
                    float f14 = this.f96115b;
                    float f15 = this.f96123j;
                    this.f96115b = Nc.b.N0(f14, f15, (Nc.b.k(f15 - f14) + 0.01f) * 35.0f * d.d());
                    float f16 = this.f96116c;
                    float f17 = this.f96124k;
                    this.f96116c = Nc.b.N0(f16, f17, (Nc.b.k(f17 - f16) + 0.01f) * 35.0f * d.d());
                    float f18 = this.f96117d;
                    float f19 = this.f96125l;
                    this.f96117d = Nc.b.N0(f18, f19, (Nc.b.k(f19 - f18) + 0.01f) * 35.0f * d.d());
                    layoutParams = (FrameLayout.LayoutParams) this.f96129p.getLayoutParams();
                    f10 = layoutParams.width;
                    f11 = this.f96116c;
                } catch (Exception e10) {
                    e10.printStackTrace();
                } finally {
                }
                if (f10 == f11 && layoutParams.height == this.f96117d && layoutParams.leftMargin == this.f96114a && layoutParams.topMargin == this.f96115b) {
                    z10 = false;
                    int i10 = editor3DScreen.f91407a;
                    layoutParams.width = (int) (f11 * i10);
                    float f20 = this.f96117d;
                    int i11 = editor3DScreen.f91408b;
                    layoutParams.height = (int) (f20 * i11);
                    layoutParams.leftMargin = (int) (this.f96114a * i10);
                    layoutParams.topMargin = (int) (this.f96115b * i11);
                    if (z10) {
                        this.f96129p.setLayoutParams(layoutParams);
                    }
                }
                z10 = true;
                int i102 = editor3DScreen.f91407a;
                layoutParams.width = (int) (f11 * i102);
                float f202 = this.f96117d;
                int i112 = editor3DScreen.f91408b;
                layoutParams.height = (int) (f202 * i112);
                layoutParams.leftMargin = (int) (this.f96114a * i102);
                layoutParams.topMargin = (int) (this.f96115b * i112);
                if (z10) {
                }
            }
        }
    }
}
