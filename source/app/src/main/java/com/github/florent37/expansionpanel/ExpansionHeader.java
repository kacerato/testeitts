package com.github.florent37.expansionpanel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.florent37.expansionpanel.ExpansionLayout;

public class ExpansionHeader extends FrameLayout {

    @Nullable
    ExpansionLayout expansionLayout;
    int expansionLayoutId;
    private boolean expansionLayoutInitialised;

    @Nullable
    View headerIndicator;
    int headerIndicatorId;
    private int headerRotationCollapsed;
    private int headerRotationExpanded;

    @Nullable
    Animator indicatorAnimator;
    boolean toggleOnClick;

    public ExpansionHeader(@NonNull Context context) {
        super(context);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, null);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpansionHeader)) == null) {
            return;
        }
        setHeaderRotationExpanded(obtainStyledAttributes.getInt(R.styleable.ExpansionHeader_expansion_headerIndicatorRotationExpanded, this.headerRotationExpanded));
        setHeaderRotationCollapsed(obtainStyledAttributes.getInt(R.styleable.ExpansionHeader_expansion_headerIndicatorRotationCollapsed, this.headerRotationCollapsed));
        setHeaderIndicatorId(obtainStyledAttributes.getResourceId(R.styleable.ExpansionHeader_expansion_headerIndicator, this.headerIndicatorId));
        setExpansionLayoutId(obtainStyledAttributes.getResourceId(R.styleable.ExpansionHeader_expansion_layout, this.expansionLayoutId));
        setToggleOnClick(obtainStyledAttributes.getBoolean(R.styleable.ExpansionHeader_expansion_toggleOnClick, this.toggleOnClick));
        obtainStyledAttributes.recycle();
    }

    private void setup() {
        ExpansionLayout expansionLayout = this.expansionLayout;
        if (expansionLayout == null || this.expansionLayoutInitialised) {
            return;
        }
        expansionLayout.addIndicatorListener(new ExpansionLayout.IndicatorListener() {
            @Override
            public void onStartedExpand(ExpansionLayout expansionLayout2, boolean z10) {
                ExpansionHeader.this.onExpansionModifyView(z10);
            }
        });
        setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ExpansionHeader expansionHeader = ExpansionHeader.this;
                if (expansionHeader.toggleOnClick) {
                    expansionHeader.expansionLayout.toggle(true);
                }
            }
        });
        initialiseView(this.expansionLayout.isExpanded());
        this.expansionLayoutInitialised = true;
    }

    public void addListener(ExpansionLayout.Listener listener) {
        ExpansionLayout expansionLayout = this.expansionLayout;
        if (expansionLayout != null) {
            expansionLayout.addListener(listener);
        }
    }

    @Nullable
    public View getHeaderIndicator() {
        return this.headerIndicator;
    }

    public void initialiseView(boolean z10) {
        View view = this.headerIndicator;
        if (view != null) {
            view.setRotation(z10 ? this.headerRotationExpanded : this.headerRotationCollapsed);
        }
    }

    public boolean isExpanded() {
        ExpansionLayout expansionLayout = this.expansionLayout;
        return expansionLayout != null && expansionLayout.isExpanded();
    }

    public boolean isToggleOnClick() {
        return this.toggleOnClick;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setHeaderIndicatorId(this.headerIndicatorId);
        setExpansionLayoutId(this.expansionLayoutId);
        setup();
    }

    public void onExpansionModifyView(boolean z10) {
        setSelected(z10);
        if (this.headerIndicator != null) {
            Animator animator = this.indicatorAnimator;
            if (animator != null) {
                animator.cancel();
            }
            if (z10) {
                this.indicatorAnimator = ObjectAnimator.ofFloat(this.headerIndicator, View.ROTATION, this.headerRotationExpanded);
            } else {
                this.indicatorAnimator = ObjectAnimator.ofFloat(this.headerIndicator, View.ROTATION, this.headerRotationCollapsed);
            }
            this.indicatorAnimator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator2, boolean z11) {
                    ExpansionHeader.this.indicatorAnimator = null;
                }
            });
            Animator animator2 = this.indicatorAnimator;
            if (animator2 != null) {
                animator2.start();
            }
        }
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.headerIndicatorId = bundle.getInt("headerIndicatorId");
        this.expansionLayoutId = bundle.getInt("expansionLayoutId");
        setToggleOnClick(bundle.getBoolean("toggleOnClick"));
        setHeaderRotationExpanded(bundle.getInt("headerRotationExpanded"));
        setHeaderRotationCollapsed(bundle.getInt("headerRotationCollapsed"));
        this.expansionLayoutInitialised = false;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
    }

    @Override
    @Nullable
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", super.onSaveInstanceState());
        bundle.putInt("headerIndicatorId", this.headerIndicatorId);
        bundle.putInt("expansionLayoutId", this.expansionLayoutId);
        bundle.putBoolean("toggleOnClick", this.toggleOnClick);
        bundle.putInt("headerRotationExpanded", this.headerRotationExpanded);
        bundle.putInt("headerRotationCollapsed", this.headerRotationCollapsed);
        return bundle;
    }

    public void removeListener(ExpansionLayout.Listener listener) {
        ExpansionLayout expansionLayout = this.expansionLayout;
        if (expansionLayout != null) {
            expansionLayout.removeListener(listener);
        }
    }

    public void setExpansionHeaderIndicator(@Nullable View view) {
        this.headerIndicator = view;
        if (view != null) {
            view.setLayerType(1, null);
        }
        setup();
    }

    public void setExpansionLayout(@Nullable ExpansionLayout expansionLayout) {
        this.expansionLayout = expansionLayout;
        setup();
    }

    public void setExpansionLayoutId(int i10) {
        this.expansionLayoutId = i10;
        if (i10 != 0) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                View findViewById = ((ViewGroup) parent).findViewById(i10);
                if (findViewById instanceof ExpansionLayout) {
                    setExpansionLayout((ExpansionLayout) findViewById);
                }
            }
        }
    }

    public void setHeaderIndicatorId(int i10) {
        this.headerIndicatorId = i10;
        if (i10 != 0) {
            View findViewById = findViewById(i10);
            this.headerIndicator = findViewById;
            setExpansionHeaderIndicator(findViewById);
        }
    }

    public void setHeaderRotationCollapsed(int i10) {
        this.headerRotationCollapsed = i10;
    }

    public void setHeaderRotationExpanded(int i10) {
        this.headerRotationExpanded = i10;
    }

    public void setToggleOnClick(boolean z10) {
        this.toggleOnClick = z10;
    }

    public ExpansionHeader(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, attributeSet);
    }

    public ExpansionHeader(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, attributeSet);
    }
}
