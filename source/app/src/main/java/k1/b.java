package K1;

import a2.C3567j;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import h2.C13421a;
import w1.C15879a;

public class b extends AlertDialog.Builder {

    @AttrRes
    public static final int f10702c = C15879a.c.f122021L;

    @StyleRes
    public static final int f10703d = C15879a.n.f124838y3;

    @AttrRes
    public static final int f10704e = C15879a.c.f121959H9;

    @Nullable
    public Drawable f10705a;

    @NonNull
    @Dimension
    public final Rect f10706b;

    public b(@NonNull Context context) {
        this(context, 0);
    }

    public static Context a(@NonNull Context context) {
        int c10 = c(context);
        Context c11 = C13421a.c(context, null, f10702c, f10703d);
        return c10 == 0 ? c11 : new ContextThemeWrapper(c11, c10);
    }

    public static int c(@NonNull Context context) {
        TypedValue a10 = X1.b.a(context, f10704e);
        if (a10 == null) {
            return 0;
        }
        return a10.data;
    }

    public static int d(@NonNull Context context, int i10) {
        return i10 == 0 ? c(context) : i10;
    }

    @Override
    @NonNull
    public b setNeutralButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNeutralButton(i10, onClickListener);
    }

    @Override
    @NonNull
    public b setNeutralButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNeutralButton(charSequence, onClickListener);
    }

    @Override
    @NonNull
    public b setNeutralButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setNeutralButtonIcon(drawable);
    }

    @Override
    @NonNull
    public b setOnCancelListener(@Nullable DialogInterface.OnCancelListener onCancelListener) {
        return (b) super.setOnCancelListener(onCancelListener);
    }

    @Override
    @NonNull
    public b setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        return (b) super.setOnDismissListener(onDismissListener);
    }

    @Override
    @NonNull
    public b setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        return (b) super.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override
    @NonNull
    public b setOnKeyListener(@Nullable DialogInterface.OnKeyListener onKeyListener) {
        return (b) super.setOnKeyListener(onKeyListener);
    }

    @Override
    @NonNull
    public b setPositiveButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setPositiveButton(i10, onClickListener);
    }

    @Override
    @NonNull
    public b setPositiveButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setPositiveButton(charSequence, onClickListener);
    }

    @Override
    @NonNull
    public b setPositiveButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setPositiveButtonIcon(drawable);
    }

    @Override
    @NonNull
    public b setSingleChoiceItems(@ArrayRes int i10, int i11, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(i10, i11, onClickListener);
    }

    @Override
    @NonNull
    public b setSingleChoiceItems(@Nullable Cursor cursor, int i10, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(cursor, i10, str, onClickListener);
    }

    @Override
    @NonNull
    public b setSingleChoiceItems(@Nullable ListAdapter listAdapter, int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(listAdapter, i10, onClickListener);
    }

    @Override
    @NonNull
    public b setSingleChoiceItems(@Nullable CharSequence[] charSequenceArr, int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(charSequenceArr, i10, onClickListener);
    }

    @Override
    @NonNull
    public b setTitle(@StringRes int i10) {
        return (b) super.setTitle(i10);
    }

    @Override
    @NonNull
    public b setTitle(@Nullable CharSequence charSequence) {
        return (b) super.setTitle(charSequence);
    }

    @Override
    @NonNull
    public b setView(int i10) {
        return (b) super.setView(i10);
    }

    @Override
    @NonNull
    public b setView(@Nullable View view) {
        return (b) super.setView(view);
    }

    @Nullable
    public Drawable b() {
        return this.f10705a;
    }

    @Override
    @NonNull
    public AlertDialog create() {
        AlertDialog create = super.create();
        Window window = create.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.f10705a;
        if (drawable instanceof C3567j) {
            ((C3567j) drawable).m0(ViewCompat.getElevation(decorView));
        }
        window.setBackgroundDrawable(c.b(this.f10705a, this.f10706b));
        decorView.setOnTouchListener(new a(create, this.f10706b));
        return create;
    }

    @Override
    @NonNull
    public b setAdapter(@Nullable ListAdapter listAdapter, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setAdapter(listAdapter, onClickListener);
    }

    @NonNull
    public b f(@Nullable Drawable drawable) {
        this.f10705a = drawable;
        return this;
    }

    @NonNull
    public b g(@Px int i10) {
        this.f10706b.bottom = i10;
        return this;
    }

    @NonNull
    public b h(@Px int i10) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.f10706b.left = i10;
        } else {
            this.f10706b.right = i10;
        }
        return this;
    }

    @NonNull
    public b i(@Px int i10) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.f10706b.right = i10;
        } else {
            this.f10706b.left = i10;
        }
        return this;
    }

    @NonNull
    public b j(@Px int i10) {
        this.f10706b.top = i10;
        return this;
    }

    @Override
    @NonNull
    public b setCancelable(boolean z10) {
        return (b) super.setCancelable(z10);
    }

    @Override
    @NonNull
    public b setCursor(@Nullable Cursor cursor, @Nullable DialogInterface.OnClickListener onClickListener, @NonNull String str) {
        return (b) super.setCursor(cursor, onClickListener, str);
    }

    @Override
    @NonNull
    public b setCustomTitle(@Nullable View view) {
        return (b) super.setCustomTitle(view);
    }

    @Override
    @NonNull
    public b setIcon(@DrawableRes int i10) {
        return (b) super.setIcon(i10);
    }

    @Override
    @NonNull
    public b setIcon(@Nullable Drawable drawable) {
        return (b) super.setIcon(drawable);
    }

    @Override
    @NonNull
    public b setIconAttribute(@AttrRes int i10) {
        return (b) super.setIconAttribute(i10);
    }

    @Override
    @NonNull
    public b setItems(@ArrayRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setItems(i10, onClickListener);
    }

    @Override
    @NonNull
    public b setItems(@Nullable CharSequence[] charSequenceArr, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setItems(charSequenceArr, onClickListener);
    }

    @Override
    @NonNull
    public b setMessage(@StringRes int i10) {
        return (b) super.setMessage(i10);
    }

    @Override
    @NonNull
    public b setMessage(@Nullable CharSequence charSequence) {
        return (b) super.setMessage(charSequence);
    }

    @Override
    @NonNull
    public b setMultiChoiceItems(@ArrayRes int i10, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(i10, zArr, onMultiChoiceClickListener);
    }

    @Override
    @NonNull
    public b setMultiChoiceItems(@Nullable Cursor cursor, @NonNull String str, @NonNull String str2, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(cursor, str, str2, onMultiChoiceClickListener);
    }

    @Override
    @NonNull
    public b setMultiChoiceItems(@Nullable CharSequence[] charSequenceArr, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    @Override
    @NonNull
    public b setNegativeButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNegativeButton(i10, onClickListener);
    }

    @Override
    @NonNull
    public b setNegativeButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNegativeButton(charSequence, onClickListener);
    }

    @Override
    @NonNull
    public b setNegativeButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setNegativeButtonIcon(drawable);
    }

    public b(@NonNull Context context, int i10) {
        super(a(context), d(context, i10));
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        int i11 = f10702c;
        int i12 = f10703d;
        this.f10706b = c.a(context2, i11, i12);
        int c10 = J1.a.c(context2, C15879a.c.f122164T2, getClass().getCanonicalName());
        C3567j c3567j = new C3567j(context2, null, i11, i12);
        c3567j.Y(context2);
        c3567j.n0(ColorStateList.valueOf(c10));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(16844145, typedValue, true);
            float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                c3567j.j0(dimension);
            }
        }
        this.f10705a = c3567j;
    }
}
