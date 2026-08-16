package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertController;

public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    public static class Builder {

        private final AlertController.AlertParams f32524P;
        private final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f32524P.mContext, this.mTheme);
            this.f32524P.apply(alertDialog.mAlert);
            alertDialog.setCancelable(this.f32524P.mCancelable);
            if (this.f32524P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f32524P.mOnCancelListener);
            alertDialog.setOnDismissListener(this.f32524P.mOnDismissListener);
            DialogInterface.OnKeyListener onKeyListener = this.f32524P.mOnKeyListener;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        public Context getContext() {
            return this.f32524P.mContext;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mAdapter = listAdapter;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z10) {
            this.f32524P.mCancelable = z10;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mCursor = cursor;
            alertParams.mLabelColumn = str;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.f32524P.mCustomTitleView = view;
            return this;
        }

        public Builder setIcon(int i10) {
            this.f32524P.mIconId = i10;
            return this;
        }

        public Builder setIconAttribute(int i10) {
            TypedValue typedValue = new TypedValue();
            this.f32524P.mContext.getTheme().resolveAttribute(i10, typedValue, true);
            this.f32524P.mIconId = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public Builder setInverseBackgroundForced(boolean z10) {
            this.f32524P.mForceInverseBackground = z10;
            return this;
        }

        public Builder setItems(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i10);
            this.f32524P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMessage(int i10) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mMessage = alertParams.mContext.getText(i10);
            return this;
        }

        public Builder setMultiChoiceItems(int i10, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i10);
            AlertController.AlertParams alertParams2 = this.f32524P;
            alertParams2.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams2.mCheckedItems = zArr;
            alertParams2.mIsMultiChoice = true;
            return this;
        }

        public Builder setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mNegativeButtonText = alertParams.mContext.getText(i10);
            this.f32524P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButtonIcon(Drawable drawable) {
            this.f32524P.mNegativeButtonIcon = drawable;
            return this;
        }

        public Builder setNeutralButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mNeutralButtonText = alertParams.mContext.getText(i10);
            this.f32524P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButtonIcon(Drawable drawable) {
            this.f32524P.mNeutralButtonIcon = drawable;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.f32524P.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.f32524P.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f32524P.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.f32524P.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mPositiveButtonText = alertParams.mContext.getText(i10);
            this.f32524P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButtonIcon(Drawable drawable) {
            this.f32524P.mPositiveButtonIcon = drawable;
            return this;
        }

        public Builder setRecycleOnMeasureEnabled(boolean z10) {
            this.f32524P.mRecycleOnMeasure = z10;
            return this;
        }

        public Builder setSingleChoiceItems(int i10, int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(i10);
            AlertController.AlertParams alertParams2 = this.f32524P;
            alertParams2.mOnClickListener = onClickListener;
            alertParams2.mCheckedItem = i11;
            alertParams2.mIsSingleChoice = true;
            return this;
        }

        public Builder setTitle(int i10) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mTitle = alertParams.mContext.getText(i10);
            return this;
        }

        public Builder setView(int i10) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mView = null;
            alertParams.mViewLayoutResId = i10;
            alertParams.mViewSpacingSpecified = false;
            return this;
        }

        public AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }

        public Builder(Context context, int i10) {
            this.f32524P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i10)));
            this.mTheme = i10;
        }

        public Builder setIcon(Drawable drawable) {
            this.f32524P.mIcon = drawable;
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.f32524P.mMessage = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.f32524P.mTitle = charSequence;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mNegativeButtonText = charSequence;
            alertParams.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mNeutralButtonText = charSequence;
            alertParams.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mPositiveButtonText = charSequence;
            alertParams.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setView(View view) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
            alertParams.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams.mCheckedItems = zArr;
            alertParams.mIsMultiChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i10, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mCursor = cursor;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i10;
            alertParams.mLabelColumn = str;
            alertParams.mIsSingleChoice = true;
            return this;
        }

        @Deprecated
        public Builder setView(View view, int i10, int i11, int i12, int i13) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
            alertParams.mViewSpacingSpecified = true;
            alertParams.mViewSpacingLeft = i10;
            alertParams.mViewSpacingTop = i11;
            alertParams.mViewSpacingRight = i12;
            alertParams.mViewSpacingBottom = i13;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mCursor = cursor;
            alertParams.mOnCheckboxClickListener = onMultiChoiceClickListener;
            alertParams.mIsCheckedColumn = str;
            alertParams.mLabelColumn = str2;
            alertParams.mIsMultiChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i10;
            alertParams.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f32524P;
            alertParams.mAdapter = listAdapter;
            alertParams.mOnClickListener = onClickListener;
            alertParams.mCheckedItem = i10;
            alertParams.mIsSingleChoice = true;
            return this;
        }
    }

    public AlertDialog(Context context) {
        this(context, 0);
    }

    public static int resolveDialogTheme(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i10) {
        return this.mAlert.getButton(i10);
    }

    public ListView getListView() {
        return this.mAlert.getListView();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    public void setButton(int i10, CharSequence charSequence, Message message) {
        this.mAlert.setButton(i10, charSequence, null, message, null);
    }

    public void setButtonPanelLayoutHint(int i10) {
        this.mAlert.setButtonPanelLayoutHint(i10);
    }

    public void setCustomTitle(View view) {
        this.mAlert.setCustomTitle(view);
    }

    public void setIcon(int i10) {
        this.mAlert.setIcon(i10);
    }

    public void setIconAttribute(int i10) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i10, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    public void setMessage(CharSequence charSequence) {
        this.mAlert.setMessage(charSequence);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    public void setView(View view) {
        this.mAlert.setView(view);
    }

    public AlertDialog(Context context, int i10) {
        super(context, resolveDialogTheme(context, i10));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    public void setButton(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i10, charSequence, onClickListener, null, null);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.setIcon(drawable);
    }

    public void setView(View view, int i10, int i11, int i12, int i13) {
        this.mAlert.setView(view, i10, i11, i12, i13);
    }

    public void setButton(int i10, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i10, charSequence, onClickListener, null, drawable);
    }

    public AlertDialog(Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z10);
        setOnCancelListener(onCancelListener);
    }
}
