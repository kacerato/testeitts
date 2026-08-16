package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;

public class ContentFrameLayout extends FrameLayout {
    private OnAttachListener mAttachListener;
    private final Rect mDecorPadding;
    private TypedValue mFixedHeightMajor;
    private TypedValue mFixedHeightMinor;
    private TypedValue mFixedWidthMajor;
    private TypedValue mFixedWidthMinor;
    private TypedValue mMinWidthMajor;
    private TypedValue mMinWidthMinor;

    public interface OnAttachListener {
        void onAttachedFromWindow();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    public TypedValue getMinWidthMajor() {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new TypedValue();
        }
        return this.mMinWidthMajor;
    }

    public TypedValue getMinWidthMinor() {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new TypedValue();
        }
        return this.mMinWidthMinor;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        OnAttachListener onAttachListener = this.mAttachListener;
        if (onAttachListener != null) {
            onAttachListener.onAttachedFromWindow();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        OnAttachListener onAttachListener = this.mAttachListener;
        if (onAttachListener != null) {
            onAttachListener.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) {
        boolean z10;
        int measuredWidth;
        TypedValue typedValue;
        int i12;
        int i13;
        float fraction;
        int i14;
        int i15;
        float fraction2;
        int i16;
        int i17;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z11 = true;
        boolean z12 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z12 ? this.mFixedWidthMinor : this.mFixedWidthMajor;
            if (typedValue2 != null && (i16 = typedValue2.type) != 0) {
                if (i16 == 5) {
                    fraction3 = typedValue2.getDimension(displayMetrics);
                } else if (i16 == 6) {
                    int i18 = displayMetrics.widthPixels;
                    fraction3 = typedValue2.getFraction(i18, i18);
                } else {
                    i17 = 0;
                    if (i17 > 0) {
                        Rect rect = this.mDecorPadding;
                        i10 = View.MeasureSpec.makeMeasureSpec(Math.min(i17 - (rect.left + rect.right), View.MeasureSpec.getSize(i10)), 1073741824);
                        z10 = true;
                        if (mode2 == Integer.MIN_VALUE) {
                            TypedValue typedValue3 = z12 ? this.mFixedHeightMajor : this.mFixedHeightMinor;
                            if (typedValue3 != null && (i14 = typedValue3.type) != 0) {
                                if (i14 == 5) {
                                    fraction2 = typedValue3.getDimension(displayMetrics);
                                } else if (i14 == 6) {
                                    int i19 = displayMetrics.heightPixels;
                                    fraction2 = typedValue3.getFraction(i19, i19);
                                } else {
                                    i15 = 0;
                                    if (i15 > 0) {
                                        Rect rect2 = this.mDecorPadding;
                                        i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect2.top + rect2.bottom), View.MeasureSpec.getSize(i11)), 1073741824);
                                    }
                                }
                                i15 = (int) fraction2;
                                if (i15 > 0) {
                                }
                            }
                        }
                        super.onMeasure(i10, i11);
                        measuredWidth = getMeasuredWidth();
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                        if (!z10 && mode == Integer.MIN_VALUE) {
                            typedValue = !z12 ? this.mMinWidthMinor : this.mMinWidthMajor;
                            if (typedValue != null && (i12 = typedValue.type) != 0) {
                                if (i12 != 5) {
                                    fraction = typedValue.getDimension(displayMetrics);
                                } else if (i12 == 6) {
                                    int i20 = displayMetrics.widthPixels;
                                    fraction = typedValue.getFraction(i20, i20);
                                } else {
                                    i13 = 0;
                                    if (i13 > 0) {
                                        Rect rect3 = this.mDecorPadding;
                                        i13 -= rect3.left + rect3.right;
                                    }
                                    if (measuredWidth < i13) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                                        if (z11) {
                                            super.onMeasure(makeMeasureSpec, i11);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                i13 = (int) fraction;
                                if (i13 > 0) {
                                }
                                if (measuredWidth < i13) {
                                }
                            }
                        }
                        z11 = false;
                        if (z11) {
                        }
                    }
                }
                i17 = (int) fraction3;
                if (i17 > 0) {
                }
            }
        }
        z10 = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        super.onMeasure(i10, i11);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (!z10) {
            if (!z12) {
            }
            if (typedValue != null) {
                if (i12 != 5) {
                }
                i13 = (int) fraction;
                if (i13 > 0) {
                }
                if (measuredWidth < i13) {
                }
            }
        }
        z11 = false;
        if (z11) {
        }
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.mAttachListener = onAttachListener;
    }

    public void setDecorPadding(int i10, int i11, int i12, int i13) {
        this.mDecorPadding.set(i10, i11, i12, i13);
        if (ViewCompat.isLaidOut(this)) {
            requestLayout();
        }
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mDecorPadding = new Rect();
    }
}
