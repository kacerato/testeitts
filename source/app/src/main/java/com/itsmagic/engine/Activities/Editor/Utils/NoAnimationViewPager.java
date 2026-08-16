package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.ViewPager;

public class NoAnimationViewPager extends ViewPager {

    public boolean f72061b;

    public boolean f72062c;

    public NoAnimationViewPager(@NonNull Context context) {
        super(context);
        this.f72061b = false;
        this.f72062c = false;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (this.f72061b) {
            return super.onInterceptTouchEvent(event);
        }
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (this.f72061b) {
            return super.onTouchEvent(event);
        }
        return false;
    }

    public void setAnimationEnabled(boolean animationEnabled) {
        this.f72062c = animationEnabled;
    }

    @Override
    public void setCurrentItem(int item) {
        super.setCurrentItem(item, this.f72062c);
    }

    public void setPagingEnabled(boolean enabled) {
        this.f72061b = enabled;
    }

    public NoAnimationViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72061b = false;
        this.f72062c = false;
    }
}
