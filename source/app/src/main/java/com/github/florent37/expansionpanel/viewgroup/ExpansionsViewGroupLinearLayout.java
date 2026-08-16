package com.github.florent37.expansionpanel.viewgroup;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.florent37.expansionpanel.R;

public class ExpansionsViewGroupLinearLayout extends LinearLayout {
    private final ExpansionViewGroupManager expansionViewGroupManager;

    public ExpansionsViewGroupLinearLayout(Context context) {
        super(context);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, null);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpansionsViewGroupLinearLayout)) == null) {
            return;
        }
        this.expansionViewGroupManager.setOpenOnlyOne(obtainStyledAttributes.getBoolean(R.styleable.ExpansionsViewGroupLinearLayout_expansion_openOnlyOne, false));
        obtainStyledAttributes.recycle();
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        this.expansionViewGroupManager.onViewAdded();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.expansionViewGroupManager.onViewAdded();
    }

    public ExpansionsViewGroupLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, attributeSet);
    }

    public ExpansionsViewGroupLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.expansionViewGroupManager = new ExpansionViewGroupManager(this);
        init(context, attributeSet);
    }
}
