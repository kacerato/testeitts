package com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText;

import Nc.b;
import Vc.e;
import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;

public class PasswordEditText extends FrameLayout {

    public EditText f72104b;

    public ImageView f72105c;

    public boolean f72106d;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            PasswordEditText.this.f();
        }
    }

    public PasswordEditText(Context context) {
        super(context);
        b(context, null);
    }

    public void a(TextWatcher textWatcher) {
        this.f72104b.addTextChangedListener(textWatcher);
    }

    @SuppressLint({"UseCompatLoadingForColorStateLists"})
    public final void b(Context context, AttributeSet attrs) {
        EditText editText = new EditText(context, attrs);
        this.f72104b = editText;
        addView(editText);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f72104b.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f72104b.setLayoutParams(layoutParams);
        ImageView imageView = new ImageView(context);
        this.f72105c = imageView;
        addView(imageView);
        this.f72105c.setImageResource(R.drawable.vision_off);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f72105c.getLayoutParams();
        layoutParams2.width = b.l0(26.0f, context);
        layoutParams2.height = b.l0(26.0f, context);
        layoutParams2.gravity = 53;
        this.f72105c.setLayoutParams(layoutParams2);
        int l02 = b.l0(4.0f, context);
        this.f72105c.setPadding(l02, l02, l02, l02);
        this.f72105c.setOnClickListener(new a());
        d();
    }

    public boolean c() {
        return this.f72106d;
    }

    public void d() {
        if (this.f72106d) {
            this.f72104b.setInputType(129);
            this.f72104b.setSelection(getTextLength());
            e.V(this.f72105c, R.drawable.vision_off, getContext());
            this.f72106d = false;
        }
    }

    public void e() {
        if (this.f72106d) {
            return;
        }
        this.f72104b.setInputType(1);
        this.f72104b.setSelection(getTextLength());
        e.V(this.f72105c, R.drawable.vision, getContext());
        this.f72106d = true;
    }

    public void f() {
        if (this.f72106d) {
            d();
        } else {
            e();
        }
    }

    public String getText() {
        if (this.f72104b.getText() == null) {
            return null;
        }
        return this.f72104b.getText().toString();
    }

    public int getTextLength() {
        if (this.f72104b.getText() == null) {
            return 0;
        }
        return this.f72104b.getText().toString().length();
    }

    public void setError(CharSequence o10) {
        this.f72104b.setError(o10);
    }

    public void setOnEditorActionListener(TextView.OnEditorActionListener listener) {
        this.f72104b.setOnEditorActionListener(listener);
    }

    public void setText(String s10) {
        this.f72104b.setText(s10);
    }

    public PasswordEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        b(context, attrs);
    }

    public PasswordEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        b(context, attrs);
    }

    public PasswordEditText(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        b(context, attrs);
    }
}
