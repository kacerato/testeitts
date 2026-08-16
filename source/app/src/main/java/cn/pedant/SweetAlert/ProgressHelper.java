package cn.pedant.SweetAlert;

import android.content.Context;
import com.pnikosis.materialishprogress.ProgressWheel;

public class ProgressHelper {
    private int mBarColor;
    private int mBarWidth;
    private int mCircleRadius;
    private ProgressWheel mProgressWheel;
    private boolean mToSpin = true;
    private float mSpinSpeed = 0.75f;
    private int mRimWidth = 0;
    private int mRimColor = 0;
    private boolean mIsInstantProgress = false;
    private float mProgressVal = -1.0f;

    public ProgressHelper(Context context) {
        this.mBarWidth = context.getResources().getDimensionPixelSize(R.dimen.common_circle_width) + 1;
        this.mBarColor = context.getResources().getColor(R.color.success_stroke_color);
        this.mCircleRadius = context.getResources().getDimensionPixelOffset(R.dimen.progress_circle_radius);
    }

    private void updatePropsIfNeed() {
        ProgressWheel progressWheel = this.mProgressWheel;
        if (progressWheel != null) {
            if (!this.mToSpin && progressWheel.a()) {
                this.mProgressWheel.j();
            } else if (this.mToSpin && !this.mProgressWheel.a()) {
                this.mProgressWheel.i();
            }
            if (this.mSpinSpeed != this.mProgressWheel.getSpinSpeed()) {
                this.mProgressWheel.setSpinSpeed(this.mSpinSpeed);
            }
            if (this.mBarWidth != this.mProgressWheel.getBarWidth()) {
                this.mProgressWheel.setBarWidth(this.mBarWidth);
            }
            if (this.mBarColor != this.mProgressWheel.getBarColor()) {
                this.mProgressWheel.setBarColor(this.mBarColor);
            }
            if (this.mRimWidth != this.mProgressWheel.getRimWidth()) {
                this.mProgressWheel.setRimWidth(this.mRimWidth);
            }
            if (this.mRimColor != this.mProgressWheel.getRimColor()) {
                this.mProgressWheel.setRimColor(this.mRimColor);
            }
            if (this.mProgressVal != this.mProgressWheel.getProgress()) {
                if (this.mIsInstantProgress) {
                    this.mProgressWheel.setInstantProgress(this.mProgressVal);
                } else {
                    this.mProgressWheel.setProgress(this.mProgressVal);
                }
            }
            if (this.mCircleRadius != this.mProgressWheel.getCircleRadius()) {
                this.mProgressWheel.setCircleRadius(this.mCircleRadius);
            }
        }
    }

    public int getBarColor() {
        return this.mBarColor;
    }

    public int getBarWidth() {
        return this.mBarWidth;
    }

    public int getCircleRadius() {
        return this.mCircleRadius;
    }

    public float getProgress() {
        return this.mProgressVal;
    }

    public ProgressWheel getProgressWheel() {
        return this.mProgressWheel;
    }

    public int getRimColor() {
        return this.mRimColor;
    }

    public int getRimWidth() {
        return this.mRimWidth;
    }

    public float getSpinSpeed() {
        return this.mSpinSpeed;
    }

    public boolean isSpinning() {
        return this.mToSpin;
    }

    public void resetCount() {
        ProgressWheel progressWheel = this.mProgressWheel;
        if (progressWheel != null) {
            progressWheel.c();
        }
    }

    public void setBarColor(int i10) {
        this.mBarColor = i10;
        updatePropsIfNeed();
    }

    public void setBarWidth(int i10) {
        this.mBarWidth = i10;
        updatePropsIfNeed();
    }

    public void setCircleRadius(int i10) {
        this.mCircleRadius = i10;
        updatePropsIfNeed();
    }

    public void setInstantProgress(float f10) {
        this.mProgressVal = f10;
        this.mIsInstantProgress = true;
        updatePropsIfNeed();
    }

    public void setProgress(float f10) {
        this.mIsInstantProgress = false;
        this.mProgressVal = f10;
        updatePropsIfNeed();
    }

    public void setProgressWheel(ProgressWheel progressWheel) {
        this.mProgressWheel = progressWheel;
        updatePropsIfNeed();
    }

    public void setRimColor(int i10) {
        this.mRimColor = i10;
        updatePropsIfNeed();
    }

    public void setRimWidth(int i10) {
        this.mRimWidth = i10;
        updatePropsIfNeed();
    }

    public void setSpinSpeed(float f10) {
        this.mSpinSpeed = f10;
        updatePropsIfNeed();
    }

    public void spin() {
        this.mToSpin = true;
        updatePropsIfNeed();
    }

    public void stopSpinning() {
        this.mToSpin = false;
        updatePropsIfNeed();
    }
}
