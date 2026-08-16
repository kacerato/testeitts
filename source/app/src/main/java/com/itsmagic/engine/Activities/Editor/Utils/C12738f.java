package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

public class C12738f extends GridView {

    public boolean f72118b;

    public C12738f(Context context) {
        super(context);
        this.f72118b = false;
    }

    public boolean a() {
        return this.f72118b;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (!a()) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    public void setExpanded(boolean expanded) {
        this.f72118b = expanded;
    }

    public C12738f(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72118b = false;
    }

    public C12738f(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f72118b = false;
    }
}
