package B0;

import A0.a;
import G0.C2587q0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class ViewOnClickListenerC2334t extends FrameLayout implements View.OnClickListener {

    public static final int f1292f = 0;

    public static final int f1293g = 1;

    public static final int f1294h = 2;

    public static final int f1295i = 0;

    public static final int f1296j = 1;

    public static final int f1297k = 2;

    public int f1298b;

    public int f1299c;

    public View f1300d;

    @Nullable
    public View.OnClickListener f1301e;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public ViewOnClickListenerC2334t(@NonNull Context context) {
        this(context, null);
    }

    public void a(int i10, int i11) {
        this.f1298b = i10;
        this.f1299c = i11;
        c(getContext());
    }

    @I2.l(replacement = "this.setStyle(buttonSize, colorScheme)")
    @Deprecated
    public void b(int i10, int i11, @NonNull Scope[] scopeArr) {
        a(i10, i11);
    }

    public final void c(Context context) {
        View view = this.f1300d;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f1300d = C2587q0.c(context, this.f1298b, this.f1299c);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i10 = this.f1298b;
            int i11 = this.f1299c;
            G0.N n10 = new G0.N(context, null);
            n10.a(context.getResources(), i10, i11);
            this.f1300d = n10;
        }
        addView(this.f1300d);
        this.f1300d.setEnabled(isEnabled());
        this.f1300d.setOnClickListener(this);
    }

    @Override
    public void onClick(@NonNull View view) {
        View.OnClickListener onClickListener = this.f1301e;
        if (onClickListener == null || view != this.f1300d) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i10) {
        a(this.f1298b, i10);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f1300d.setEnabled(z10);
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f1301e = onClickListener;
        View view = this.f1300d;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@NonNull Scope[] scopeArr) {
        a(this.f1298b, this.f1299c);
    }

    public void setSize(int i10) {
        a(i10, this.f1299c);
    }

    public ViewOnClickListenerC2334t(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewOnClickListenerC2334t(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1301e = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.f.f125e, 0, 0);
        try {
            this.f1298b = obtainStyledAttributes.getInt(a.f.f126f, 0);
            this.f1299c = obtainStyledAttributes.getInt(a.f.f127g, 2);
            obtainStyledAttributes.recycle();
            a(this.f1298b, this.f1299c);
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}
