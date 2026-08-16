package K7;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;

public class c {

    public final Context f10942a;

    public LinearLayout f10943b;

    public LinearLayout f10944c;

    public LinearLayout f10945d;

    public EditText f10946e;

    public CheckBox f10947f;

    public static class a {

        public View.OnClickListener f10948a;

        public Drawable f10949b;

        public EnumC0365a f10950c;

        public String f10951d;

        public ImageView f10952e;

        public enum EnumC0365a {
            LEFT,
            RIGHT
        }
    }

    public enum b {
        LEFT,
        RIGHT
    }

    public c(Context c10, boolean enableFreePackageFilter) {
        this.f10942a = c10;
        g();
        d();
        b();
        e();
    }

    public View a(a button, b padding) {
        if (button.f10950c == a.EnumC0365a.LEFT) {
            if (padding == b.LEFT) {
                this.f10944c.addView(new Space(this.f10942a), Nc.b.k0(16.0f), 0);
                View f10 = f(button, this.f10944c);
                this.f10944c.addView(new Space(this.f10942a), Nc.b.k0(8.0f), 0);
                return f10;
            }
            this.f10944c.addView(new Space(this.f10942a), Nc.b.k0(8.0f), 0);
            View f11 = f(button, this.f10944c);
            this.f10944c.addView(new Space(this.f10942a), Nc.b.k0(16.0f), 0);
            return f11;
        }
        if (padding == b.LEFT) {
            this.f10945d.addView(new Space(this.f10942a), Nc.b.k0(16.0f), 0);
            View f12 = f(button, this.f10945d);
            this.f10945d.addView(new Space(this.f10942a), Nc.b.k0(8.0f), 0);
            return f12;
        }
        this.f10945d.addView(new Space(this.f10942a), Nc.b.k0(8.0f), 0);
        View f13 = f(button, this.f10945d);
        this.f10945d.addView(new Space(this.f10942a), Nc.b.k0(16.0f), 0);
        return f13;
    }

    public final void b() {
        EditText editText = new EditText(this.f10942a);
        this.f10946e = editText;
        editText.setEms(10);
        this.f10946e.setHint(Lang.l(Lang.T.STORE_SEARCH));
        this.f10946e.setInputType(1);
        this.f10946e.setImeOptions(268435462);
        this.f10946e.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        this.f10946e.setHintTextColor(Theme.i(Theme.T.MID_TEXT_COLOR));
        this.f10946e.setTextSize(14.0f);
        this.f10943b.addView(this.f10946e);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f10946e.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = Nc.b.k0(38.0f);
        layoutParams.weight = 1.0f;
        this.f10946e.setLayoutParams(layoutParams);
    }

    public final void c() {
        CheckBox checkBox = new CheckBox(this.f10942a);
        this.f10947f = checkBox;
        checkBox.setText(Lang.l(Lang.T.STORE_FILTER_ONLY_FREE));
        this.f10947f.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        this.f10947f.setButtonTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
        this.f10947f.setTextSize(14.0f);
        this.f10947f.setTypeface(ResourcesCompat.getFont(this.f10942a, R.font.base_bold));
        this.f10943b.addView(this.f10947f);
        this.f10943b.addView(new Space(this.f10942a), Nc.b.k0(8.0f), 0);
    }

    public final void d() {
        LinearLayout linearLayout = new LinearLayout(this.f10942a);
        this.f10944c = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f10944c.setOrientation(0);
        this.f10943b.addView(this.f10944c);
    }

    public final void e() {
        LinearLayout linearLayout = new LinearLayout(this.f10942a);
        this.f10945d = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f10945d.setOrientation(0);
        this.f10943b.addView(this.f10945d);
    }

    public final View f(a b10, LinearLayout layoutButtons) {
        ImageView imageView = b10.f10952e;
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Nc.b.k0(18.0f), Nc.b.k0(18.0f)));
        imageView.setColorFilter(ContextCompat.getColor(this.f10942a, R.color.white));
        layoutButtons.addView(imageView);
        return imageView;
    }

    public final void g() {
        LinearLayout linearLayout = new LinearLayout(this.f10942a);
        this.f10943b = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f10943b.setGravity(16);
        this.f10943b.setOrientation(0);
    }

    public EditText h() {
        return this.f10946e;
    }

    public View i() {
        return this.f10943b;
    }

    public String j() {
        return this.f10946e.getText().toString();
    }

    public void k(EditText edit) {
        this.f10946e = edit;
    }

    public void l(TextView.OnEditorActionListener listener) {
        this.f10946e.setOnEditorActionListener(listener);
    }

    public void m(CompoundButton.OnCheckedChangeListener listener) {
        CheckBox checkBox = this.f10947f;
        if (checkBox != null) {
            checkBox.setOnCheckedChangeListener(listener);
        }
    }

    public void n(String s10) {
        this.f10946e.setText(s10);
    }
}
