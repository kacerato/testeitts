package W0;

import B0.C2323h;
import G0.T;
import W0.e;
import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.LinkedList;

@C0.a
public abstract class a<T extends e> {

    public e f27200a;

    @Nullable
    public Bundle f27201b;

    public LinkedList f27202c;

    public final g f27203d = new i(this);

    @C0.a
    public a() {
    }

    @C0.a
    public static void o(@NonNull FrameLayout frameLayout) {
        C2323h x10 = C2323h.x();
        Context context = frameLayout.getContext();
        int j10 = x10.j(context);
        String c10 = T.c(context, j10);
        String b10 = T.b(context, j10);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(c10);
        linearLayout.addView(textView);
        Intent e10 = x10.e(context, j10, null);
        if (e10 != null) {
            Button button = new Button(context);
            button.setId(R.id.button1);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(b10);
            linearLayout.addView(button);
            button.setOnClickListener(new m(context, e10));
        }
    }

    @C0.a
    public abstract void a(@NonNull g<T> gVar);

    @NonNull
    @C0.a
    public T b() {
        return (T) this.f27200a;
    }

    @C0.a
    public void c(@NonNull FrameLayout frameLayout) {
        o(frameLayout);
    }

    @C0.a
    public void d(@Nullable Bundle bundle) {
        u(bundle, new k(this, bundle));
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public View e(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        u(bundle, new l(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f27200a == null) {
            c(frameLayout);
        }
        return frameLayout;
    }

    @C0.a
    public void f() {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.b();
        } else {
            t(1);
        }
    }

    @C0.a
    public void g() {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.d();
        } else {
            t(2);
        }
    }

    @C0.a
    public void h(@NonNull Activity activity, @NonNull Bundle bundle, @Nullable Bundle bundle2) {
        u(bundle2, new j(this, activity, bundle, bundle2));
    }

    @C0.a
    public void i() {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.onLowMemory();
        }
    }

    @C0.a
    public void j() {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.a();
        } else {
            t(5);
        }
    }

    @C0.a
    public void k() {
        u(null, new o(this));
    }

    @C0.a
    public void l(@NonNull Bundle bundle) {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.h(bundle);
            return;
        }
        Bundle bundle2 = this.f27201b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    @C0.a
    public void m() {
        u(null, new n(this));
    }

    @C0.a
    public void n() {
        e eVar = this.f27200a;
        if (eVar != null) {
            eVar.c();
        } else {
            t(4);
        }
    }

    public final void t(int i10) {
        while (!this.f27202c.isEmpty() && ((p) this.f27202c.getLast()).c() >= i10) {
            this.f27202c.removeLast();
        }
    }

    public final void u(@Nullable Bundle bundle, p pVar) {
        e eVar = this.f27200a;
        if (eVar != null) {
            pVar.d(eVar);
            return;
        }
        if (this.f27202c == null) {
            this.f27202c = new LinkedList();
        }
        this.f27202c.add(pVar);
        if (bundle != null) {
            Bundle bundle2 = this.f27201b;
            if (bundle2 == null) {
                this.f27201b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        a(this.f27203d);
    }
}
