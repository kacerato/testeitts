package cn.pedant.SweetAlert;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Html;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.pnikosis.materialishprogress.ProgressWheel;

public class SweetAlertDialog extends Dialog implements View.OnClickListener {
    public static final int BUTTON_CANCEL = -2;
    public static final int BUTTON_CONFIRM = -1;
    public static final int CUSTOM_IMAGE_TYPE = 4;
    public static boolean DARK_STYLE = false;
    public static final int ERROR_TYPE = 1;
    public static final int NORMAL_TYPE = 0;
    public static final int PROGRESS_TYPE = 5;
    public static final int SUCCESS_TYPE = 2;
    public static final int WARNING_TYPE = 3;
    private int contentTextSize;
    private final float defStrokeWidth;
    private int mAlertType;
    private LinearLayout mButtonsContainer;
    private Button mCancelButton;
    private Integer mCancelButtonBackgroundColor;
    private Integer mCancelButtonTextColor;
    private OnSweetClickListener mCancelClickListener;
    private String mCancelText;
    private boolean mCloseFromCancel;
    private Button mConfirmButton;
    private Integer mConfirmButtonBackgroundColor;
    private Integer mConfirmButtonTextColor;
    private OnSweetClickListener mConfirmClickListener;
    private String mConfirmText;
    private String mContentText;
    private TextView mContentTextView;
    private ImageView mCustomImage;
    private Drawable mCustomImgDrawable;
    private View mCustomView;
    private FrameLayout mCustomViewContainer;
    private View mDialogView;
    private FrameLayout mErrorFrame;
    private Animation mErrorInAnim;
    private ImageView mErrorX;
    private AnimationSet mErrorXInAnim;
    private boolean mHideConfirmButton;
    private boolean mHideKeyBoardOnDismiss;
    private AnimationSet mModalInAnim;
    private AnimationSet mModalOutAnim;
    private Button mNeutralButton;
    private Integer mNeutralButtonBackgroundColor;
    private Integer mNeutralButtonTextColor;
    private OnSweetClickListener mNeutralClickListener;
    private String mNeutralText;
    private Animation mOverlayOutAnim;
    private FrameLayout mProgressFrame;
    private ProgressHelper mProgressHelper;
    private boolean mShowCancel;
    private boolean mShowContent;
    private Animation mSuccessBowAnim;
    private FrameLayout mSuccessFrame;
    private AnimationSet mSuccessLayoutAnimSet;
    private View mSuccessLeftMask;
    private View mSuccessRightMask;
    private SuccessTickView mSuccessTick;
    private String mTitleText;
    private TextView mTitleTextView;
    private FrameLayout mWarningFrame;
    private float strokeWidth;

    public interface OnSweetClickListener {
        void onClick(SweetAlertDialog sweetAlertDialog);
    }

    public SweetAlertDialog(Context context) {
        this(context, 0);
    }

    private void adjustButtonContainerVisibility() {
        boolean z10;
        int i10 = 0;
        while (true) {
            if (i10 >= this.mButtonsContainer.getChildCount()) {
                z10 = false;
                break;
            }
            View childAt = this.mButtonsContainer.getChildAt(i10);
            if ((childAt instanceof Button) && childAt.getVisibility() == 0) {
                z10 = true;
                break;
            }
            i10++;
        }
        this.mButtonsContainer.setVisibility(z10 ? 0 : 8);
    }

    private void applyStroke() {
        if (Float.compare(this.defStrokeWidth, this.strokeWidth) != 0) {
            Resources resources = getContext().getResources();
            setButtonBackgroundColor(this.mConfirmButton, Integer.valueOf(resources.getColor(R.color.main_green_color)));
            setButtonBackgroundColor(this.mNeutralButton, Integer.valueOf(resources.getColor(R.color.main_disabled_color)));
            setButtonBackgroundColor(this.mCancelButton, Integer.valueOf(resources.getColor(R.color.red_btn_bg_color)));
        }
    }

    private void changeAlertType(int i10, boolean z10) {
        this.mAlertType = i10;
        if (this.mDialogView != null) {
            if (!z10) {
                restore();
            }
            this.mConfirmButton.setVisibility(this.mHideConfirmButton ? 8 : 0);
            int i11 = this.mAlertType;
            if (i11 == 1) {
                this.mErrorFrame.setVisibility(0);
            } else if (i11 == 2) {
                this.mSuccessFrame.setVisibility(0);
                this.mSuccessLeftMask.startAnimation(this.mSuccessLayoutAnimSet.getAnimations().get(0));
                this.mSuccessRightMask.startAnimation(this.mSuccessLayoutAnimSet.getAnimations().get(1));
            } else if (i11 == 3) {
                this.mWarningFrame.setVisibility(0);
            } else if (i11 == 4) {
                setCustomImage(this.mCustomImgDrawable);
            } else if (i11 == 5) {
                this.mProgressFrame.setVisibility(0);
                this.mConfirmButton.setVisibility(8);
            }
            adjustButtonContainerVisibility();
            if (z10) {
                return;
            }
            playAnimation();
        }
    }

    private int genStrokeColor(int i10) {
        Color.colorToHSV(i10, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * 0.7f};
        return Color.HSVToColor(fArr);
    }

    public void hideSoftKeyboard() {
        InputMethodManager inputMethodManager;
        Activity ownerActivity = getOwnerActivity();
        if (ownerActivity == null || (inputMethodManager = (InputMethodManager) ownerActivity.getSystemService(Context.INPUT_METHOD_SERVICE)) == null || ownerActivity.getCurrentFocus() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(ownerActivity.getCurrentFocus().getWindowToken(), 0);
    }

    private void playAnimation() {
        int i10 = this.mAlertType;
        if (i10 == 1) {
            this.mErrorFrame.startAnimation(this.mErrorInAnim);
            this.mErrorX.startAnimation(this.mErrorXInAnim);
        } else if (i10 == 2) {
            this.mSuccessTick.startTickAnim();
            this.mSuccessRightMask.startAnimation(this.mSuccessBowAnim);
        }
    }

    private void restore() {
        this.mCustomImage.setVisibility(8);
        this.mErrorFrame.setVisibility(8);
        this.mSuccessFrame.setVisibility(8);
        this.mWarningFrame.setVisibility(8);
        this.mProgressFrame.setVisibility(8);
        this.mConfirmButton.setVisibility(this.mHideConfirmButton ? 8 : 0);
        adjustButtonContainerVisibility();
        this.mConfirmButton.setBackgroundResource(R.drawable.green_button_background);
        this.mErrorFrame.clearAnimation();
        this.mErrorX.clearAnimation();
        this.mSuccessTick.clearAnimation();
        this.mSuccessLeftMask.clearAnimation();
        this.mSuccessRightMask.clearAnimation();
    }

    private void setButtonBackgroundColor(Button button, Integer num) {
        Drawable[] drawable;
        if (button == null || num == null || (drawable = ViewUtils.getDrawable(button)) == null) {
            return;
        }
        GradientDrawable gradientDrawable = (GradientDrawable) drawable[1];
        gradientDrawable.setColor(num.intValue());
        gradientDrawable.setStroke((int) this.strokeWidth, genStrokeColor(num.intValue()));
    }

    public static int spToPx(float f10, Context context) {
        return (int) TypedValue.applyDimension(2, f10, context.getResources().getDisplayMetrics());
    }

    @Override
    public void cancel() {
        dismissWithAnimation(true);
    }

    public void dismissWithAnimation() {
        dismissWithAnimation(false);
    }

    public int getAlertType() {
        return this.mAlertType;
    }

    public Button getButton(int i10) {
        return i10 != -3 ? i10 != -2 ? this.mConfirmButton : this.mCancelButton : this.mNeutralButton;
    }

    public Integer getCancelButtonBackgroundColor() {
        return this.mCancelButtonBackgroundColor;
    }

    public Integer getCancelButtonTextColor() {
        return this.mCancelButtonTextColor;
    }

    public String getCancelText() {
        return this.mCancelText;
    }

    public Integer getConfirmButtonBackgroundColor() {
        return this.mConfirmButtonBackgroundColor;
    }

    public Integer getConfirmButtonTextColor() {
        return this.mConfirmButtonTextColor;
    }

    public String getConfirmText() {
        return this.mConfirmText;
    }

    public String getContentText() {
        return this.mContentText;
    }

    public int getContentTextSize() {
        return this.contentTextSize;
    }

    public Integer getNeutralButtonBackgroundColor() {
        return this.mNeutralButtonBackgroundColor;
    }

    public Integer getNeutralButtonTextColor() {
        return this.mNeutralButtonTextColor;
    }

    public ProgressHelper getProgressHelper() {
        return this.mProgressHelper;
    }

    public String getTitleText() {
        return this.mTitleText;
    }

    public SweetAlertDialog hideConfirmButton() {
        this.mHideConfirmButton = true;
        return this;
    }

    public boolean isHideKeyBoardOnDismiss() {
        return this.mHideKeyBoardOnDismiss;
    }

    public boolean isShowCancelButton() {
        return this.mShowCancel;
    }

    public boolean isShowContentText() {
        return this.mShowContent;
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.cancel_button) {
            OnSweetClickListener onSweetClickListener = this.mCancelClickListener;
            if (onSweetClickListener != null) {
                onSweetClickListener.onClick(this);
                return;
            } else {
                dismissWithAnimation();
                return;
            }
        }
        if (view.getId() == R.id.confirm_button) {
            OnSweetClickListener onSweetClickListener2 = this.mConfirmClickListener;
            if (onSweetClickListener2 != null) {
                onSweetClickListener2.onClick(this);
                return;
            } else {
                dismissWithAnimation();
                return;
            }
        }
        if (view.getId() == R.id.neutral_button) {
            OnSweetClickListener onSweetClickListener3 = this.mNeutralClickListener;
            if (onSweetClickListener3 != null) {
                onSweetClickListener3.onClick(this);
            } else {
                dismissWithAnimation();
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.alert_dialog);
        this.mDialogView = getWindow().getDecorView().findViewById(16908290);
        this.mTitleTextView = (TextView) findViewById(R.id.title_text);
        this.mContentTextView = (TextView) findViewById(R.id.content_text);
        this.mCustomViewContainer = (FrameLayout) findViewById(R.id.custom_view_container);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.error_frame);
        this.mErrorFrame = frameLayout;
        this.mErrorX = (ImageView) frameLayout.findViewById(R.id.error_x);
        this.mSuccessFrame = (FrameLayout) findViewById(R.id.success_frame);
        this.mProgressFrame = (FrameLayout) findViewById(R.id.progress_dialog);
        this.mSuccessTick = (SuccessTickView) this.mSuccessFrame.findViewById(R.id.success_tick);
        this.mSuccessLeftMask = this.mSuccessFrame.findViewById(R.id.mask_left);
        this.mSuccessRightMask = this.mSuccessFrame.findViewById(R.id.mask_right);
        this.mCustomImage = (ImageView) findViewById(R.id.custom_image);
        this.mWarningFrame = (FrameLayout) findViewById(R.id.warning_frame);
        this.mButtonsContainer = (LinearLayout) findViewById(R.id.buttons_container);
        Button button = (Button) findViewById(R.id.confirm_button);
        this.mConfirmButton = button;
        button.setOnClickListener(this);
        Button button2 = this.mConfirmButton;
        View.OnTouchListener onTouchListener = Constants.FOCUS_TOUCH_LISTENER;
        button2.setOnTouchListener(onTouchListener);
        Button button3 = (Button) findViewById(R.id.cancel_button);
        this.mCancelButton = button3;
        button3.setOnClickListener(this);
        this.mCancelButton.setOnTouchListener(onTouchListener);
        Button button4 = (Button) findViewById(R.id.neutral_button);
        this.mNeutralButton = button4;
        button4.setOnClickListener(this);
        this.mNeutralButton.setOnTouchListener(onTouchListener);
        this.mProgressHelper.setProgressWheel((ProgressWheel) findViewById(R.id.progressWheel));
        setTitleText(this.mTitleText);
        setContentText(this.mContentText);
        setCustomView(this.mCustomView);
        setCancelText(this.mCancelText);
        setConfirmText(this.mConfirmText);
        setNeutralText(this.mNeutralText);
        applyStroke();
        setConfirmButtonBackgroundColor(this.mConfirmButtonBackgroundColor);
        setConfirmButtonTextColor(this.mConfirmButtonTextColor);
        setCancelButtonBackgroundColor(this.mCancelButtonBackgroundColor);
        setCancelButtonTextColor(this.mCancelButtonTextColor);
        setNeutralButtonBackgroundColor(this.mNeutralButtonBackgroundColor);
        setNeutralButtonTextColor(this.mNeutralButtonTextColor);
        changeAlertType(this.mAlertType, true);
    }

    @Override
    public void onStart() {
        this.mDialogView.startAnimation(this.mModalInAnim);
        playAnimation();
    }

    public SweetAlertDialog setCancelButton(String str, OnSweetClickListener onSweetClickListener) {
        setCancelText(str);
        setCancelClickListener(onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setCancelButtonBackgroundColor(Integer num) {
        this.mCancelButtonBackgroundColor = num;
        setButtonBackgroundColor(this.mCancelButton, num);
        return this;
    }

    public SweetAlertDialog setCancelButtonTextColor(Integer num) {
        this.mCancelButtonTextColor = num;
        Button button = this.mCancelButton;
        if (button != null && num != null) {
            button.setTextColor(num.intValue());
        }
        return this;
    }

    public SweetAlertDialog setCancelClickListener(OnSweetClickListener onSweetClickListener) {
        this.mCancelClickListener = onSweetClickListener;
        return this;
    }

    public SweetAlertDialog setCancelText(String str) {
        this.mCancelText = str;
        if (this.mCancelButton != null && str != null) {
            showCancelButton(true);
            this.mCancelButton.setText(this.mCancelText);
        }
        return this;
    }

    public SweetAlertDialog setConfirmButton(String str, OnSweetClickListener onSweetClickListener) {
        setConfirmText(str);
        setConfirmClickListener(onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setConfirmButtonBackgroundColor(Integer num) {
        this.mConfirmButtonBackgroundColor = num;
        setButtonBackgroundColor(this.mConfirmButton, num);
        return this;
    }

    public SweetAlertDialog setConfirmButtonTextColor(Integer num) {
        this.mConfirmButtonTextColor = num;
        Button button = this.mConfirmButton;
        if (button != null && num != null) {
            button.setTextColor(num.intValue());
        }
        return this;
    }

    public SweetAlertDialog setConfirmClickListener(OnSweetClickListener onSweetClickListener) {
        this.mConfirmClickListener = onSweetClickListener;
        return this;
    }

    public SweetAlertDialog setConfirmText(String str) {
        this.mConfirmText = str;
        Button button = this.mConfirmButton;
        if (button != null && str != null) {
            button.setText(str);
        }
        return this;
    }

    public SweetAlertDialog setContentText(String str) {
        this.mContentText = str;
        if (this.mContentTextView != null && str != null) {
            showContentText(true);
            if (this.contentTextSize != 0) {
                this.mContentTextView.setTextSize(0, spToPx(r4, getContext()));
            }
            this.mContentTextView.setText(Html.fromHtml(this.mContentText));
            this.mContentTextView.setVisibility(0);
            this.mCustomViewContainer.setVisibility(8);
        }
        return this;
    }

    public SweetAlertDialog setContentTextSize(int i10) {
        this.contentTextSize = i10;
        return this;
    }

    public SweetAlertDialog setCustomImage(Drawable drawable) {
        this.mCustomImgDrawable = drawable;
        ImageView imageView = this.mCustomImage;
        if (imageView != null && drawable != null) {
            imageView.setVisibility(0);
            this.mCustomImage.setImageDrawable(this.mCustomImgDrawable);
        }
        return this;
    }

    public SweetAlertDialog setCustomView(View view) {
        FrameLayout frameLayout;
        this.mCustomView = view;
        if (view != null && (frameLayout = this.mCustomViewContainer) != null) {
            frameLayout.addView(view);
            this.mCustomViewContainer.setVisibility(0);
            this.mContentTextView.setVisibility(8);
        }
        return this;
    }

    public SweetAlertDialog setHideKeyBoardOnDismiss(boolean z10) {
        this.mHideKeyBoardOnDismiss = z10;
        return this;
    }

    public SweetAlertDialog setNeutralButton(String str, OnSweetClickListener onSweetClickListener) {
        setNeutralText(str);
        setNeutralClickListener(onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setNeutralButtonBackgroundColor(Integer num) {
        this.mNeutralButtonBackgroundColor = num;
        setButtonBackgroundColor(this.mNeutralButton, num);
        return this;
    }

    public SweetAlertDialog setNeutralButtonTextColor(Integer num) {
        this.mNeutralButtonTextColor = num;
        Button button = this.mNeutralButton;
        if (button != null && num != null) {
            button.setTextColor(num.intValue());
        }
        return this;
    }

    public SweetAlertDialog setNeutralClickListener(OnSweetClickListener onSweetClickListener) {
        this.mNeutralClickListener = onSweetClickListener;
        return this;
    }

    public SweetAlertDialog setNeutralText(String str) {
        this.mNeutralText = str;
        if (this.mNeutralButton != null && str != null && !str.isEmpty()) {
            this.mNeutralButton.setVisibility(0);
            this.mNeutralButton.setText(this.mNeutralText);
        }
        return this;
    }

    public SweetAlertDialog setStrokeWidth(float f10) {
        this.strokeWidth = spToPx(f10, getContext());
        return this;
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        setTitleText(charSequence.toString());
    }

    public SweetAlertDialog setTitleText(String str) {
        this.mTitleText = str;
        if (this.mTitleTextView != null && str != null) {
            if (str.isEmpty()) {
                this.mTitleTextView.setVisibility(8);
            } else {
                this.mTitleTextView.setVisibility(0);
                this.mTitleTextView.setText(Html.fromHtml(this.mTitleText));
            }
        }
        return this;
    }

    public SweetAlertDialog showCancelButton(boolean z10) {
        this.mShowCancel = z10;
        Button button = this.mCancelButton;
        if (button != null) {
            button.setVisibility(z10 ? 0 : 8);
        }
        return this;
    }

    public SweetAlertDialog showContentText(boolean z10) {
        this.mShowContent = z10;
        TextView textView = this.mContentTextView;
        if (textView != null) {
            textView.setVisibility(z10 ? 0 : 8);
        }
        return this;
    }

    public SweetAlertDialog(Context context, int i10) {
        super(context, DARK_STYLE ? R.style.alert_dialog_dark : R.style.alert_dialog_light);
        this.mHideConfirmButton = false;
        this.mHideKeyBoardOnDismiss = true;
        this.contentTextSize = 0;
        this.strokeWidth = 0.0f;
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        float dimension = getContext().getResources().getDimension(R.dimen.buttons_stroke_width);
        this.defStrokeWidth = dimension;
        this.strokeWidth = dimension;
        this.mProgressHelper = new ProgressHelper(context);
        this.mAlertType = i10;
        this.mErrorInAnim = OptAnimationLoader.loadAnimation(getContext(), R.anim.error_frame_in);
        this.mErrorXInAnim = (AnimationSet) OptAnimationLoader.loadAnimation(getContext(), R.anim.error_x_in);
        this.mSuccessBowAnim = OptAnimationLoader.loadAnimation(getContext(), R.anim.success_bow_roate);
        this.mSuccessLayoutAnimSet = (AnimationSet) OptAnimationLoader.loadAnimation(getContext(), R.anim.success_mask_layout);
        this.mModalInAnim = (AnimationSet) OptAnimationLoader.loadAnimation(getContext(), R.anim.modal_in);
        AnimationSet animationSet = (AnimationSet) OptAnimationLoader.loadAnimation(getContext(), R.anim.modal_out);
        this.mModalOutAnim = animationSet;
        animationSet.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                SweetAlertDialog.this.mDialogView.setVisibility(8);
                if (SweetAlertDialog.this.mHideKeyBoardOnDismiss) {
                    SweetAlertDialog.this.hideSoftKeyboard();
                }
                SweetAlertDialog.this.mDialogView.post(new Runnable() {
                    @Override
                    public void run() {
                        if (SweetAlertDialog.this.mCloseFromCancel) {
                            SweetAlertDialog.super.cancel();
                        } else {
                            SweetAlertDialog.super.dismiss();
                        }
                    }
                });
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        });
        Animation animation = new Animation() {
            @Override
            public void applyTransformation(float f10, Transformation transformation) {
                WindowManager.LayoutParams attributes = SweetAlertDialog.this.getWindow().getAttributes();
                attributes.alpha = 1.0f - f10;
                SweetAlertDialog.this.getWindow().setAttributes(attributes);
            }
        };
        this.mOverlayOutAnim = animation;
        animation.setDuration(120L);
    }

    private void dismissWithAnimation(boolean z10) {
        this.mCloseFromCancel = z10;
        ((ViewGroup) this.mDialogView).getChildAt(0).startAnimation(this.mOverlayOutAnim);
        this.mDialogView.startAnimation(this.mModalOutAnim);
    }

    @Override
    public void setTitle(int i10) {
        setTitleText(getContext().getResources().getString(i10));
    }

    public SweetAlertDialog setCancelButton(int i10, OnSweetClickListener onSweetClickListener) {
        setCancelButton(getContext().getResources().getString(i10), onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setConfirmButton(int i10, OnSweetClickListener onSweetClickListener) {
        setConfirmButton(getContext().getResources().getString(i10), onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setNeutralButton(int i10, OnSweetClickListener onSweetClickListener) {
        setNeutralButton(getContext().getResources().getString(i10), onSweetClickListener);
        return this;
    }

    public SweetAlertDialog setCustomImage(int i10) {
        return setCustomImage(getContext().getResources().getDrawable(i10));
    }

    public SweetAlertDialog setTitleText(int i10) {
        return setTitleText(getContext().getResources().getString(i10));
    }

    public void changeAlertType(int i10) {
        changeAlertType(i10, false);
    }
}
