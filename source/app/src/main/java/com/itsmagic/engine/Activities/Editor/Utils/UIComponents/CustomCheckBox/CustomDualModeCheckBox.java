package com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox;

import Vc.e;
import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;

public class CustomDualModeCheckBox extends FrameLayout {

    public ImageView f72099b;

    public ImageView f72100c;

    public ImageView f72101d;

    public b f72102e;

    @Nullable
    public a f72103f;

    public interface a {
        void a(b state);
    }

    public enum b {
        Unselected,
        PartiallySelected,
        FullSelected
    }

    public CustomDualModeCheckBox(Context context) {
        super(context);
        this.f72102e = b.Unselected;
        b(context);
    }

    public final void a() {
        ImageView imageView = this.f72099b;
        if (imageView != null) {
            imageView.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_OUTLINE)));
        }
        ImageView imageView2 = this.f72100c;
        if (imageView2 != null) {
            imageView2.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_BACKGROUND)));
        }
        ImageView imageView3 = this.f72101d;
        if (imageView3 != null) {
            imageView3.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.CHECKBOX_CHECKMARK)));
        }
    }

    public final void b(Context context) {
        LayoutInflater.from(context).inflate(R.layout.custom_dual_mode_checkbox, (ViewGroup) this, true);
        this.f72099b = (ImageView) findViewById(R.id.outline);
        this.f72100c = (ImageView) findViewById(R.id.background);
        this.f72101d = (ImageView) findViewById(R.id.checkmark);
        setClickable(true);
        setFocusable(true);
        a();
        setState(b.Unselected);
    }

    public void c() {
        int ordinal = this.f72102e.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            setState(b.FullSelected);
        } else {
            if (ordinal != 2) {
                return;
            }
            setState(b.Unselected);
        }
    }

    public final void d() {
        if (this.f72101d == null) {
            return;
        }
        int ordinal = this.f72102e.ordinal();
        if (ordinal == 0) {
            this.f72101d.setVisibility(8);
            return;
        }
        if (ordinal == 1) {
            this.f72101d.setVisibility(0);
            e.V(this.f72101d, R.drawable.check_box_partial_v2, getContext());
        } else {
            if (ordinal != 2) {
                return;
            }
            this.f72101d.setVisibility(0);
            e.V(this.f72101d, R.drawable.check_mark, getContext());
        }
    }

    public b getState() {
        return this.f72102e;
    }

    @Override
    public boolean performClick() {
        c();
        return super.performClick();
    }

    public void setOnStateChangeListener(@Nullable a onStateChangeListener) {
        this.f72103f = onStateChangeListener;
    }

    public void setState(b state) {
        if (state == null) {
            state = b.Unselected;
        }
        this.f72102e = state;
        d();
        a aVar = this.f72103f;
        if (aVar != null) {
            aVar.a(this.f72102e);
        }
    }

    public CustomDualModeCheckBox(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72102e = b.Unselected;
        b(context);
    }

    public CustomDualModeCheckBox(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72102e = b.Unselected;
        b(context);
    }
}
