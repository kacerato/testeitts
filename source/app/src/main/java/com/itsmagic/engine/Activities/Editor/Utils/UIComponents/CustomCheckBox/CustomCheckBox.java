package com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import t3.b;

public class CustomCheckBox extends FrameLayout {

    public ImageView f72094b;

    public ImageView f72095c;

    public ImageView f72096d;

    public boolean f72097e;

    @Nullable
    public a f72098f;

    public interface a {
        void a(CustomCheckBox view, boolean checked);
    }

    public CustomCheckBox(Context context) {
        super(context);
        b(context, null, 0);
    }

    public final void a() {
        ImageView imageView = this.f72094b;
        if (imageView != null) {
            imageView.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_OUTLINE)));
        }
        ImageView imageView2 = this.f72095c;
        if (imageView2 != null) {
            imageView2.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_BACKGROUND)));
        }
        ImageView imageView3 = this.f72096d;
        if (imageView3 != null) {
            imageView3.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_CHECKMARK)));
        }
    }

    public final void b(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        LayoutInflater.from(context).inflate(R.layout.custom_checkbox, (ViewGroup) this, true);
        this.f72094b = (ImageView) findViewById(R.id.outline);
        this.f72095c = (ImageView) findViewById(R.id.background);
        this.f72096d = (ImageView) findViewById(R.id.checkmark);
        setClickable(true);
        setFocusable(true);
        a();
        boolean z10 = false;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, b.s.f116061Pi, defStyleAttr, 0);
            z10 = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }
        setChecked(z10);
    }

    public boolean c() {
        return this.f72097e;
    }

    public void d() {
        setChecked(!this.f72097e);
    }

    @Override
    public boolean performClick() {
        d();
        return super.performClick();
    }

    public void setChecked(boolean checked) {
        boolean z10 = this.f72097e;
        if (z10 == checked) {
            ImageView imageView = this.f72096d;
            if (imageView != null) {
                imageView.setVisibility(z10 ? 0 : 8);
                return;
            }
            return;
        }
        this.f72097e = checked;
        ImageView imageView2 = this.f72096d;
        if (imageView2 != null) {
            imageView2.setVisibility(checked ? 0 : 8);
        }
        a aVar = this.f72098f;
        if (aVar != null) {
            aVar.a(this, checked);
        }
    }

    public void setOnCheckedChangeListener(@Nullable a onCheckedChangeListener) {
        this.f72098f = onCheckedChangeListener;
    }

    public CustomCheckBox(Context context, AttributeSet attrs) {
        super(context, attrs);
        b(context, attrs, 0);
    }

    public CustomCheckBox(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        b(context, attrs, defStyleAttr);
    }
}
