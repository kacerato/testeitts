package com.itsmagic.engine.Activities.Editor.Utils;

import Ic.C2630i;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import com.itsmagic.engine2.R;
import t3.b;

public class GenericSearchView extends LinearLayout {

    public final LayoutInflater f72016b;

    public final boolean f72017c;

    public ImageView f72018d;

    public FrameLayout f72019e;

    public AppCompatEditText f72020f;

    public boolean f72021g;

    public b f72022h;

    public View.OnClickListener f72023i;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            GenericSearchView.this.l();
            if (GenericSearchView.this.f72023i != null) {
                GenericSearchView.this.f72023i.onClick(v10);
            }
        }
    }

    public interface b {
        void a(GenericSearchView view, String query);

        void b(GenericSearchView view);

        void c(GenericSearchView view);
    }

    public GenericSearchView(Context context) {
        this(context, null);
    }

    public void c(TextWatcher watcher) {
        this.f72020f.addTextChangedListener(watcher);
    }

    public final void d() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.width = -2;
            layoutParams2.weight = 0.0f;
            setLayoutParams(layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = this.f72019e.getLayoutParams();
            if (layoutParams3 instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
                layoutParams4.width = 0;
                layoutParams4.weight = 1.0f;
                this.f72019e.setLayoutParams(layoutParams4);
            }
        }
    }

    public final void e() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.width = 0;
            layoutParams2.weight = 1.0f;
            setLayoutParams(layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = this.f72019e.getLayoutParams();
            if (layoutParams3 instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
                layoutParams4.width = 0;
                layoutParams4.weight = 1.0f;
                this.f72019e.setLayoutParams(layoutParams4);
            }
        }
    }

    public void f() {
        if (this.f72021g) {
            this.f72021g = false;
            d();
            this.f72019e.setVisibility(8);
            this.f72020f.clearFocus();
            C2630i.b();
            b bVar = this.f72022h;
            if (bVar != null) {
                bVar.b(this);
            }
        }
    }

    public void g() {
        if (this.f72021g) {
            return;
        }
        this.f72021g = true;
        e();
        this.f72019e.setVisibility(0);
        this.f72020f.setVisibility(0);
        this.f72020f.requestFocus();
        b bVar = this.f72022h;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    public EditText getEditText() {
        return this.f72020f;
    }

    public ImageView getSearchButton() {
        return this.f72018d;
    }

    public String getText() {
        Editable text = this.f72020f.getText();
        return text == null ? "" : text.toString();
    }

    public final void h() {
        this.f72016b.inflate(R.layout.generic_search_view, (ViewGroup) this, true);
        this.f72018d = (ImageView) findViewById(R.id.searchBtn);
        this.f72019e = (FrameLayout) findViewById(R.id.searchFieldContainer);
        this.f72020f = (AppCompatEditText) findViewById(R.id.searchEdit);
        if (this.f72017c) {
            setBackgroundResource(R.drawable.projects_panel_button_background);
            setTag(com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.f70702a);
        } else {
            setBackground(null);
            setTag(null);
        }
        d();
        this.f72019e.setVisibility(8);
        this.f72018d.setOnClickListener(new a());
        this.f72020f.setImeOptions(3);
        this.f72020f.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean j10;
                j10 = GenericSearchView.this.j(textView, i10, keyEvent);
                return j10;
            }
        });
    }

    public boolean i() {
        return this.f72021g;
    }

    public final boolean j(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 3 && i10 != 6) {
            return false;
        }
        b bVar = this.f72022h;
        if (bVar != null) {
            bVar.a(this, getText());
        }
        this.f72020f.clearFocus();
        C2630i.b();
        if (getText() != null && !getText().isEmpty()) {
            return true;
        }
        f();
        return true;
    }

    public final boolean k(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, b.s.f116280Yl, defStyleAttr, 0);
        try {
            return obtainStyledAttributes.getBoolean(0, true);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void l() {
        if (this.f72021g) {
            f();
        } else {
            g();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f72021g) {
            e();
        } else {
            d();
        }
    }

    public void setHint(CharSequence hint) {
        this.f72020f.setHint(hint);
    }

    public void setOnSearchActionListener(b listener) {
        this.f72022h = listener;
    }

    public void setOnSearchButtonClickListener(View.OnClickListener listener) {
        this.f72023i = listener;
    }

    public void setText(CharSequence text) {
        this.f72020f.setText(text);
    }

    public GenericSearchView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GenericSearchView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setOrientation(0);
        setGravity(16);
        this.f72016b = LayoutInflater.from(context);
        this.f72017c = k(context, attrs, defStyleAttr);
        h();
    }
}
