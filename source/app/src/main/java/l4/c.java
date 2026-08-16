package l4;

import Ic.A;
import K8.d;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import i4.C13580a;
import p4.InterfaceC14926a;

public class c {

    public float f96138a;

    public float f96139b;

    public float f96140c;

    public float f96141d;

    public float f96142e;

    public float f96143f;

    public float f96144g;

    public float f96145h;

    public float f96146i;

    public float f96147j;

    public float f96148k;

    public float f96149l;

    public int f96150m;

    public int f96151n;

    public a f96152o = null;

    public View f96153p = null;

    public InterfaceC14926a f96154q;

    public enum a {
        Horizontal,
        Vertical
    }

    public c(InterfaceC14926a divisionAreaToSplitArea) {
        this.f96154q = divisionAreaToSplitArea;
    }

    public void a(FrameLayout screenArea) {
        View view = this.f96153p;
        if (view != null) {
            screenArea.removeView(view);
            this.f96153p = null;
        }
    }

    public void b(FrameLayout screenArea) {
        View view = this.f96153p;
        if (view != null) {
            screenArea.removeView(view);
            this.f96153p = null;
        }
    }

    public void c() {
        View view = this.f96153p;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void d(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        if (this.f96152o == a.Horizontal) {
            this.f96153p = layoutInflater.inflate(R.layout.editor_split_division_horizontal_arrow, (ViewGroup) null);
        } else {
            this.f96153p = layoutInflater.inflate(R.layout.editor_split_division_vertical_arrow, (ViewGroup) null);
        }
        this.f96153p.setBackgroundColor(Theme.i(Theme.T.PANELS_SPACING));
        screenArea.addView(this.f96153p);
        j(editor3DScreen);
    }

    public void e() {
        View view = this.f96153p;
        if (view != null) {
            view.setBackgroundColor(Theme.i(Theme.T.PANELS_SPACING));
        }
    }

    public void f(k4.c listener) {
        View view = this.f96153p;
        if (view != null) {
            listener.a(view);
        }
    }

    public void g() {
        View view = this.f96153p;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void h() {
        float f10 = this.f96142e;
        this.f96146i = f10;
        float f11 = this.f96143f;
        this.f96147j = f11;
        float f12 = this.f96144g;
        this.f96148k = f12;
        float f13 = this.f96145h;
        this.f96149l = f13;
        this.f96138a = f10;
        this.f96139b = f11;
        this.f96140c = f12;
        this.f96141d = f13;
    }

    public void i(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float x10, float y10, float w10, float h10, a direction, C13580a editor3DScreen, boolean stepLerp) {
        this.f96142e = x10;
        this.f96143f = y10;
        this.f96144g = w10;
        this.f96145h = h10;
        if (stepLerp) {
            h();
        }
        View view = this.f96153p;
        if (view == null || this.f96152o != direction) {
            if (view != null) {
                screenArea.removeView(view);
                this.f96153p = null;
            }
            this.f96152o = direction;
            d(screenArea, activity, context, layoutInflater, editor3DScreen);
        }
        j(editor3DScreen);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00df A[Catch: Exception -> 0x00bc, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bc, blocks: (B:3:0x002e, B:5:0x009e, B:7:0x00a7, B:9:0x00b0, B:13:0x00bf, B:15:0x00df), top: B:2:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(C13580a editor3DScreen) {
        boolean z10;
        this.f96142e = A.b(this.f96142e);
        this.f96143f = A.b(this.f96143f);
        this.f96144g = A.b(this.f96144g);
        float b10 = A.b(this.f96145h);
        this.f96145h = b10;
        float f10 = this.f96142e;
        this.f96146i = f10;
        this.f96147j = this.f96143f;
        this.f96148k = this.f96144g;
        this.f96149l = b10;
        try {
            float f11 = this.f96138a;
            this.f96138a = Nc.b.N0(f11, f10, (Nc.b.k(f10 - f11) + 0.01f) * 35.0f * d.d());
            float f12 = this.f96139b;
            float f13 = this.f96147j;
            this.f96139b = Nc.b.N0(f12, f13, (Nc.b.k(f13 - f12) + 0.01f) * 35.0f * d.d());
            float f14 = this.f96140c;
            float f15 = this.f96148k;
            this.f96140c = Nc.b.N0(f14, f15, (Nc.b.k(f15 - f14) + 0.01f) * 35.0f * d.d());
            float f16 = this.f96141d;
            float f17 = this.f96149l;
            this.f96141d = Nc.b.N0(f16, f17, (Nc.b.k(f17 - f16) + 0.01f) * 35.0f * d.d());
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f96153p.getLayoutParams();
            float f18 = layoutParams.width;
            float f19 = this.f96140c;
            if (f18 == f19 && layoutParams.height == this.f96141d && layoutParams.leftMargin == this.f96138a && layoutParams.topMargin == this.f96139b) {
                z10 = false;
                int i10 = editor3DScreen.f91407a;
                layoutParams.width = (int) (f19 * i10);
                float f20 = this.f96141d;
                int i11 = editor3DScreen.f91408b;
                layoutParams.height = (int) (f20 * i11);
                layoutParams.leftMargin = (int) (this.f96138a * i10);
                layoutParams.topMargin = (int) (this.f96139b * i11);
                if (z10) {
                    return;
                }
                this.f96153p.setLayoutParams(layoutParams);
                return;
            }
            z10 = true;
            int i102 = editor3DScreen.f91407a;
            layoutParams.width = (int) (f19 * i102);
            float f202 = this.f96141d;
            int i112 = editor3DScreen.f91408b;
            layoutParams.height = (int) (f202 * i112);
            layoutParams.leftMargin = (int) (this.f96138a * i102);
            layoutParams.topMargin = (int) (this.f96139b * i112);
            if (z10) {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
