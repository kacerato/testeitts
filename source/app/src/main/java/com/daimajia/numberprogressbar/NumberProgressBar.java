package com.daimajia.numberprogressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.timepicker.f;
import ve.j;

public class NumberProgressBar extends View {
    private static final String INSTANCE_MAX = "max";
    private static final String INSTANCE_PREFIX = "prefix";
    private static final String INSTANCE_PROGRESS = "progress";
    private static final String INSTANCE_REACHED_BAR_COLOR = "reached_bar_color";
    private static final String INSTANCE_REACHED_BAR_HEIGHT = "reached_bar_height";
    private static final String INSTANCE_STATE = "saved_instance";
    private static final String INSTANCE_SUFFIX = "suffix";
    private static final String INSTANCE_TEXT_COLOR = "text_color";
    private static final String INSTANCE_TEXT_SIZE = "text_size";
    private static final String INSTANCE_TEXT_VISIBILITY = "text_visibility";
    private static final String INSTANCE_UNREACHED_BAR_COLOR = "unreached_bar_color";
    private static final String INSTANCE_UNREACHED_BAR_HEIGHT = "unreached_bar_height";
    private static final int PROGRESS_TEXT_VISIBLE = 0;
    private final float default_progress_text_offset;
    private final float default_reached_bar_height;
    private final int default_reached_color;
    private final int default_text_color;
    private final float default_text_size;
    private final float default_unreached_bar_height;
    private final int default_unreached_color;
    private String mCurrentDrawText;
    private int mCurrentProgress;
    private boolean mDrawReachedBar;
    private float mDrawTextEnd;
    private float mDrawTextStart;
    private float mDrawTextWidth;
    private boolean mDrawUnreachedBar;
    private boolean mIfDrawText;
    private OnProgressBarListener mListener;
    private int mMaxProgress;
    private float mOffset;
    private String mPrefix;
    private int mReachedBarColor;
    private float mReachedBarHeight;
    private Paint mReachedBarPaint;
    private RectF mReachedRectF;
    private String mSuffix;
    private int mTextColor;
    private Paint mTextPaint;
    private float mTextSize;
    private int mUnreachedBarColor;
    private float mUnreachedBarHeight;
    private Paint mUnreachedBarPaint;
    private RectF mUnreachedRectF;

    public enum ProgressTextVisibility {
        Visible,
        Invisible
    }

    public NumberProgressBar(Context context) {
        this(context, null);
    }

    private void calculateDrawRectF() {
        this.mCurrentDrawText = String.format(f.f65291j, Integer.valueOf((getProgress() * 100) / getMax()));
        String str = this.mPrefix + this.mCurrentDrawText + this.mSuffix;
        this.mCurrentDrawText = str;
        this.mDrawTextWidth = this.mTextPaint.measureText(str);
        if (getProgress() == 0) {
            this.mDrawReachedBar = false;
            this.mDrawTextStart = getPaddingLeft();
        } else {
            this.mDrawReachedBar = true;
            this.mReachedRectF.left = getPaddingLeft();
            this.mReachedRectF.top = (getHeight() / 2.0f) - (this.mReachedBarHeight / 2.0f);
            this.mReachedRectF.right = (((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (getMax() * 1.0f)) * getProgress()) - this.mOffset) + getPaddingLeft();
            this.mReachedRectF.bottom = (getHeight() / 2.0f) + (this.mReachedBarHeight / 2.0f);
            this.mDrawTextStart = this.mReachedRectF.right + this.mOffset;
        }
        this.mDrawTextEnd = (int) ((getHeight() / 2.0f) - ((this.mTextPaint.descent() + this.mTextPaint.ascent()) / 2.0f));
        if (this.mDrawTextStart + this.mDrawTextWidth >= getWidth() - getPaddingRight()) {
            float width = (getWidth() - getPaddingRight()) - this.mDrawTextWidth;
            this.mDrawTextStart = width;
            this.mReachedRectF.right = width - this.mOffset;
        }
        float f10 = this.mDrawTextStart + this.mDrawTextWidth + this.mOffset;
        if (f10 >= getWidth() - getPaddingRight()) {
            this.mDrawUnreachedBar = false;
            return;
        }
        this.mDrawUnreachedBar = true;
        RectF rectF = this.mUnreachedRectF;
        rectF.left = f10;
        rectF.right = getWidth() - getPaddingRight();
        this.mUnreachedRectF.top = (getHeight() / 2.0f) + ((-this.mUnreachedBarHeight) / 2.0f);
        this.mUnreachedRectF.bottom = (getHeight() / 2.0f) + (this.mUnreachedBarHeight / 2.0f);
    }

    private void calculateDrawRectFWithoutProgressText() {
        this.mReachedRectF.left = getPaddingLeft();
        this.mReachedRectF.top = (getHeight() / 2.0f) - (this.mReachedBarHeight / 2.0f);
        this.mReachedRectF.right = ((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (getMax() * 1.0f)) * getProgress()) + getPaddingLeft();
        this.mReachedRectF.bottom = (getHeight() / 2.0f) + (this.mReachedBarHeight / 2.0f);
        RectF rectF = this.mUnreachedRectF;
        rectF.left = this.mReachedRectF.right;
        rectF.right = getWidth() - getPaddingRight();
        this.mUnreachedRectF.top = (getHeight() / 2.0f) + ((-this.mUnreachedBarHeight) / 2.0f);
        this.mUnreachedRectF.bottom = (getHeight() / 2.0f) + (this.mUnreachedBarHeight / 2.0f);
    }

    private void initializePainters() {
        Paint paint = new Paint(1);
        this.mReachedBarPaint = paint;
        paint.setColor(this.mReachedBarColor);
        Paint paint2 = new Paint(1);
        this.mUnreachedBarPaint = paint2;
        paint2.setColor(this.mUnreachedBarColor);
        Paint paint3 = new Paint(1);
        this.mTextPaint = paint3;
        paint3.setColor(this.mTextColor);
        this.mTextPaint.setTextSize(this.mTextSize);
    }

    private int measure(int i10, boolean z10) {
        int paddingTop;
        int paddingBottom;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (z10) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i11 = paddingTop + paddingBottom;
        if (mode == 1073741824) {
            return size;
        }
        int suggestedMinimumWidth = (z10 ? getSuggestedMinimumWidth() : getSuggestedMinimumHeight()) + i11;
        return mode == Integer.MIN_VALUE ? z10 ? Math.max(suggestedMinimumWidth, size) : Math.min(suggestedMinimumWidth, size) : suggestedMinimumWidth;
    }

    public float dp2px(float f10) {
        return (f10 * getResources().getDisplayMetrics().density) + 0.5f;
    }

    public int getMax() {
        return this.mMaxProgress;
    }

    public String getPrefix() {
        return this.mPrefix;
    }

    public int getProgress() {
        return this.mCurrentProgress;
    }

    public float getProgressTextSize() {
        return this.mTextSize;
    }

    public boolean getProgressTextVisibility() {
        return this.mIfDrawText;
    }

    public int getReachedBarColor() {
        return this.mReachedBarColor;
    }

    public float getReachedBarHeight() {
        return this.mReachedBarHeight;
    }

    public String getSuffix() {
        return this.mSuffix;
    }

    @Override
    public int getSuggestedMinimumHeight() {
        return Math.max((int) this.mTextSize, Math.max((int) this.mReachedBarHeight, (int) this.mUnreachedBarHeight));
    }

    @Override
    public int getSuggestedMinimumWidth() {
        return (int) this.mTextSize;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getUnreachedBarColor() {
        return this.mUnreachedBarColor;
    }

    public float getUnreachedBarHeight() {
        return this.mUnreachedBarHeight;
    }

    public void incrementProgressBy(int i10) {
        if (i10 > 0) {
            setProgress(getProgress() + i10);
        }
        OnProgressBarListener onProgressBarListener = this.mListener;
        if (onProgressBarListener != null) {
            onProgressBarListener.onProgressChange(getProgress(), getMax());
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.mIfDrawText) {
            calculateDrawRectF();
        } else {
            calculateDrawRectFWithoutProgressText();
        }
        if (this.mDrawReachedBar) {
            canvas.drawRect(this.mReachedRectF, this.mReachedBarPaint);
        }
        if (this.mDrawUnreachedBar) {
            canvas.drawRect(this.mUnreachedRectF, this.mUnreachedBarPaint);
        }
        if (this.mIfDrawText) {
            canvas.drawText(this.mCurrentDrawText, this.mDrawTextStart, this.mDrawTextEnd, this.mTextPaint);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(measure(i10, true), measure(i11, false));
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.mTextColor = bundle.getInt(INSTANCE_TEXT_COLOR);
        this.mTextSize = bundle.getFloat(INSTANCE_TEXT_SIZE);
        this.mReachedBarHeight = bundle.getFloat(INSTANCE_REACHED_BAR_HEIGHT);
        this.mUnreachedBarHeight = bundle.getFloat(INSTANCE_UNREACHED_BAR_HEIGHT);
        this.mReachedBarColor = bundle.getInt(INSTANCE_REACHED_BAR_COLOR);
        this.mUnreachedBarColor = bundle.getInt(INSTANCE_UNREACHED_BAR_COLOR);
        initializePainters();
        setMax(bundle.getInt(INSTANCE_MAX));
        setProgress(bundle.getInt("progress"));
        setPrefix(bundle.getString(INSTANCE_PREFIX));
        setSuffix(bundle.getString(INSTANCE_SUFFIX));
        setProgressTextVisibility(bundle.getBoolean(INSTANCE_TEXT_VISIBILITY) ? ProgressTextVisibility.Visible : ProgressTextVisibility.Invisible);
        super.onRestoreInstanceState(bundle.getParcelable(INSTANCE_STATE));
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(INSTANCE_STATE, super.onSaveInstanceState());
        bundle.putInt(INSTANCE_TEXT_COLOR, getTextColor());
        bundle.putFloat(INSTANCE_TEXT_SIZE, getProgressTextSize());
        bundle.putFloat(INSTANCE_REACHED_BAR_HEIGHT, getReachedBarHeight());
        bundle.putFloat(INSTANCE_UNREACHED_BAR_HEIGHT, getUnreachedBarHeight());
        bundle.putInt(INSTANCE_REACHED_BAR_COLOR, getReachedBarColor());
        bundle.putInt(INSTANCE_UNREACHED_BAR_COLOR, getUnreachedBarColor());
        bundle.putInt(INSTANCE_MAX, getMax());
        bundle.putInt("progress", getProgress());
        bundle.putString(INSTANCE_SUFFIX, getSuffix());
        bundle.putString(INSTANCE_PREFIX, getPrefix());
        bundle.putBoolean(INSTANCE_TEXT_VISIBILITY, getProgressTextVisibility());
        return bundle;
    }

    public void setMax(int i10) {
        if (i10 > 0) {
            this.mMaxProgress = i10;
            invalidate();
        }
    }

    public void setOnProgressBarListener(OnProgressBarListener onProgressBarListener) {
        this.mListener = onProgressBarListener;
    }

    public void setPrefix(String str) {
        if (str == null) {
            this.mPrefix = "";
        } else {
            this.mPrefix = str;
        }
    }

    public void setProgress(int i10) {
        if (i10 > getMax() || i10 < 0) {
            return;
        }
        this.mCurrentProgress = i10;
        invalidate();
    }

    public void setProgressTextColor(int i10) {
        this.mTextColor = i10;
        this.mTextPaint.setColor(i10);
        invalidate();
    }

    public void setProgressTextSize(float f10) {
        this.mTextSize = f10;
        this.mTextPaint.setTextSize(f10);
        invalidate();
    }

    public void setProgressTextVisibility(ProgressTextVisibility progressTextVisibility) {
        this.mIfDrawText = progressTextVisibility == ProgressTextVisibility.Visible;
        invalidate();
    }

    public void setReachedBarColor(int i10) {
        this.mReachedBarColor = i10;
        this.mReachedBarPaint.setColor(i10);
        invalidate();
    }

    public void setReachedBarHeight(float f10) {
        this.mReachedBarHeight = f10;
    }

    public void setSuffix(String str) {
        if (str == null) {
            this.mSuffix = "";
        } else {
            this.mSuffix = str;
        }
    }

    public void setUnreachedBarColor(int i10) {
        this.mUnreachedBarColor = i10;
        this.mUnreachedBarPaint.setColor(i10);
        invalidate();
    }

    public void setUnreachedBarHeight(float f10) {
        this.mUnreachedBarHeight = f10;
    }

    public float sp2px(float f10) {
        return f10 * getResources().getDisplayMetrics().scaledDensity;
    }

    public NumberProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NumberProgressBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mMaxProgress = 100;
        this.mCurrentProgress = 0;
        this.mSuffix = j.f121589a;
        this.mPrefix = "";
        int rgb = Color.rgb(66, 145, 241);
        this.default_text_color = rgb;
        int rgb2 = Color.rgb(66, 145, 241);
        this.default_reached_color = rgb2;
        int rgb3 = Color.rgb(204, 204, 204);
        this.default_unreached_color = rgb3;
        this.mUnreachedRectF = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.mReachedRectF = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.mDrawUnreachedBar = true;
        this.mDrawReachedBar = true;
        this.mIfDrawText = true;
        float dp2px = dp2px(1.5f);
        this.default_reached_bar_height = dp2px;
        float dp2px2 = dp2px(1.0f);
        this.default_unreached_bar_height = dp2px2;
        float sp2px = sp2px(10.0f);
        this.default_text_size = sp2px;
        float dp2px3 = dp2px(3.0f);
        this.default_progress_text_offset = dp2px3;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.NumberProgressBar, i10, 0);
        this.mReachedBarColor = obtainStyledAttributes.getColor(R.styleable.NumberProgressBar_progress_reached_color, rgb2);
        this.mUnreachedBarColor = obtainStyledAttributes.getColor(R.styleable.NumberProgressBar_progress_unreached_color, rgb3);
        this.mTextColor = obtainStyledAttributes.getColor(R.styleable.NumberProgressBar_progress_text_color, rgb);
        this.mTextSize = obtainStyledAttributes.getDimension(R.styleable.NumberProgressBar_progress_text_size, sp2px);
        this.mReachedBarHeight = obtainStyledAttributes.getDimension(R.styleable.NumberProgressBar_progress_reached_bar_height, dp2px);
        this.mUnreachedBarHeight = obtainStyledAttributes.getDimension(R.styleable.NumberProgressBar_progress_unreached_bar_height, dp2px2);
        this.mOffset = obtainStyledAttributes.getDimension(R.styleable.NumberProgressBar_progress_text_offset, dp2px3);
        if (obtainStyledAttributes.getInt(R.styleable.NumberProgressBar_progress_text_visibility, 0) != 0) {
            this.mIfDrawText = false;
        }
        setProgress(obtainStyledAttributes.getInt(R.styleable.NumberProgressBar_progress_current, 0));
        setMax(obtainStyledAttributes.getInt(R.styleable.NumberProgressBar_progress_max, 100));
        obtainStyledAttributes.recycle();
        initializePainters();
    }
}
