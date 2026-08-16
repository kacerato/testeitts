package com.github.florent37.expansionpanel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class HorizontalExpansionLayout extends HorizontalScrollView {
    private Animator animator;
    private boolean expanded;
    private final List<IndicatorListener> indicatorListeners;
    private final List<Listener> listeners;
    public Boolean singleListener;

    public class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        final View val$childView;

        public AnonymousClass1(View view) {
            this.val$childView = view;
        }

        @Override
        public boolean onPreDraw() {
            this.val$childView.getViewTreeObserver().removeOnPreDrawListener(this);
            if (HorizontalExpansionLayout.this.expanded) {
                HorizontalExpansionLayout.this.expand(false);
            }
            this.val$childView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override
                public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    if (HorizontalExpansionLayout.this.expanded && HorizontalExpansionLayout.this.animator == null) {
                        final int i18 = i12 - i10;
                        HorizontalExpansionLayout.this.post(new Runnable() {
                            @Override
                            public void run() {
                                HorizontalExpansionLayout.this.setWidth(i18);
                            }
                        });
                    }
                }
            });
            return false;
        }
    }

    public interface IndicatorListener {
        void onStartedExpand(HorizontalExpansionLayout horizontalExpansionLayout, boolean z10);
    }

    public interface Listener {
        void onExpansionChanged(HorizontalExpansionLayout horizontalExpansionLayout, boolean z10);
    }

    public HorizontalExpansionLayout(Context context) {
        super(context);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.singleListener = Boolean.FALSE;
        this.expanded = false;
        init(context, null);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        requestDisallowInterceptTouchEvent(true);
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpansionLayout)) == null) {
            return;
        }
        this.expanded = obtainStyledAttributes.getBoolean(R.styleable.ExpansionLayout_expansion_expanded, this.expanded);
        obtainStyledAttributes.recycle();
    }

    private void onViewAdded() {
        if (getChildCount() != 0) {
            View childAt = getChildAt(0);
            childAt.getViewTreeObserver().addOnPreDrawListener(new AnonymousClass1(childAt));
        }
    }

    private void pingIndicatorListeners(boolean z10) {
        for (IndicatorListener indicatorListener : this.indicatorListeners) {
            if (indicatorListener != null) {
                indicatorListener.onStartedExpand(this, z10);
            }
        }
    }

    public void pingListeners() {
        for (Listener listener : this.listeners) {
            if (listener != null) {
                listener.onExpansionChanged(this, this.expanded);
            }
        }
    }

    public void setWidth(float f10) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) f10;
            setLayoutParams(layoutParams);
        }
    }

    public void addIndicatorListener(IndicatorListener indicatorListener) {
        if (indicatorListener == null || this.indicatorListeners.contains(indicatorListener)) {
            return;
        }
        this.indicatorListeners.add(indicatorListener);
    }

    public void addListener(Listener listener) {
        if (this.singleListener.booleanValue()) {
            this.listeners.clear();
            this.listeners.add(listener);
        } else {
            if (listener == null || this.listeners.contains(listener)) {
                return;
            }
            this.listeners.add(listener);
        }
    }

    @Override
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            onViewAdded();
            return;
        }
        throw new IllegalStateException("ExpansionLayout can host only one direct child");
    }

    public void collapse(boolean z10) {
        if (isEnabled() && this.expanded) {
            pingIndicatorListeners(false);
            if (!z10) {
                setWidth(0.0f);
                this.expanded = false;
                pingListeners();
            } else {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(getWidth() * 1.0f, 0.0f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        HorizontalExpansionLayout.this.setWidth(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
                ofFloat.addListener(new AnimatorListenerAdapter() {
                    @Override
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        HorizontalExpansionLayout.this.animator = null;
                        HorizontalExpansionLayout.this.pingListeners();
                    }
                });
                this.expanded = false;
                this.animator = ofFloat;
                ofFloat.start();
            }
        }
    }

    public void expand(boolean z10) {
        if (!isEnabled() || this.expanded) {
            return;
        }
        pingIndicatorListeners(true);
        if (!z10) {
            setWidth(getChildAt(0).getWidth());
            this.expanded = true;
            pingListeners();
        } else {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, getChildAt(0).getWidth());
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    HorizontalExpansionLayout.this.setWidth(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    HorizontalExpansionLayout.this.animator = null;
                    HorizontalExpansionLayout.this.pingListeners();
                }
            });
            this.expanded = true;
            this.animator = ofFloat;
            ofFloat.start();
        }
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.expanded) {
            return;
        }
        setWidth(0.0f);
    }

    public void removeIndicatorListener(IndicatorListener indicatorListener) {
        if (indicatorListener != null) {
            this.indicatorListeners.remove(indicatorListener);
        }
    }

    public void removeListener(Listener listener) {
        if (listener != null) {
            this.listeners.remove(listener);
        }
    }

    public void toggle(boolean z10) {
        if (this.expanded) {
            collapse(z10);
        } else {
            expand(z10);
        }
    }

    @Override
    public void addView(View view, int i10) {
        if (getChildCount() <= 0) {
            super.addView(view, i10);
            onViewAdded();
            return;
        }
        throw new IllegalStateException("ExpansionLayout can host only one direct child");
    }

    public HorizontalExpansionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.singleListener = Boolean.FALSE;
        this.expanded = false;
        init(context, attributeSet);
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            onViewAdded();
            return;
        }
        throw new IllegalStateException("ExpansionLayout can host only one direct child");
    }

    public HorizontalExpansionLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.singleListener = Boolean.FALSE;
        this.expanded = false;
        init(context, attributeSet);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i10, layoutParams);
            onViewAdded();
            return;
        }
        throw new IllegalStateException("ExpansionLayout can host only one direct child");
    }
}
