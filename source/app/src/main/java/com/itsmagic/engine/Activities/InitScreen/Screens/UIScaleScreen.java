package com.itsmagic.engine.Activities.InitScreen.Screens;

import Ic.C2630i;
import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine2.R;
import w3.k;

public class UIScaleScreen extends com.itsmagic.engine.Activities.InitScreen.a {

    public static Settings f72375b;

    public static class Settings {

        @Expose
        boolean executed = false;
    }

    public class a implements TextView.OnEditorActionListener {

        public final TextInputEditText f72376b;

        public final Activity f72377c;

        public final LinearLayout f72378d;

        public a(final TextInputEditText val$textInputEditText, final Activity val$activity, final LinearLayout val$contentArea) {
            this.f72376b = val$textInputEditText;
            this.f72377c = val$activity;
            this.f72378d = val$contentArea;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 3 && actionId != 6) {
                if (event == null) {
                    return false;
                }
                try {
                    if (event.getAction() != 0 || event.getKeyCode() != 66) {
                        return false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
            try {
                EditorSettings.a().uiScale = Nc.b.E(0.1f, Nc.b.u1(v10.getText().toString()), 5.0f);
                this.f72376b.setText(Tc.b.p(EditorSettings.a().uiScale, 2) + "");
                EditorSettings.e();
                UIScaleScreen.r(this.f72377c, this.f72378d, EditorSettings.a().uiScale);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            C2630i.b();
            return true;
        }
    }

    public class b implements View.OnClickListener {

        public final Activity f72380b;

        public final LinearLayout f72381c;

        public final TextInputEditText f72382d;

        public b(final Activity val$activity, final LinearLayout val$contentArea, final TextInputEditText val$textInputEditText) {
            this.f72380b = val$activity;
            this.f72381c = val$contentArea;
            this.f72382d = val$textInputEditText;
        }

        @Override
        public void onClick(View view) {
            EditorSettings.a().uiScale -= 0.1f;
            EditorSettings.a().uiScale = Nc.b.E(0.1f, EditorSettings.a().uiScale, 5.0f);
            EditorSettings.e();
            UIScaleScreen.r(this.f72380b, this.f72381c, EditorSettings.a().uiScale);
            this.f72382d.setText(Tc.b.p(EditorSettings.a().uiScale, 2) + "");
        }
    }

    public class c implements View.OnClickListener {

        public final Activity f72384b;

        public final LinearLayout f72385c;

        public final TextInputEditText f72386d;

        public c(final Activity val$activity, final LinearLayout val$contentArea, final TextInputEditText val$textInputEditText) {
            this.f72384b = val$activity;
            this.f72385c = val$contentArea;
            this.f72386d = val$textInputEditText;
        }

        @Override
        public void onClick(View view) {
            EditorSettings.a().uiScale += 0.1f;
            EditorSettings.a().uiScale = Nc.b.E(0.1f, EditorSettings.a().uiScale, 5.0f);
            EditorSettings.e();
            UIScaleScreen.r(this.f72384b, this.f72385c, EditorSettings.a().uiScale);
            this.f72386d.setText(Tc.b.p(EditorSettings.a().uiScale, 2) + "");
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View v10) {
            UIScaleScreen.f72375b.executed = true;
            UIScaleScreen.this.t();
            UIScaleScreen.this.a();
        }
    }

    public static double o(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f10 = displayMetrics.widthPixels;
        float f11 = displayMetrics.heightPixels;
        return Math.sqrt(Math.pow(f10 / displayMetrics.xdpi, 2.0d) + Math.pow(f11 / displayMetrics.ydpi, 2.0d));
    }

    public static Settings p() {
        Settings settings = f72375b;
        return settings != null ? settings : q(N7.c.t());
    }

    public static Settings q(Context context) {
        Settings settings = f72375b;
        if (settings != null) {
            return settings;
        }
        try {
            f72375b = (Settings) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(X7.a.C("uiscale", "settings.config", context), Settings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (f72375b == null) {
            f72375b = new Settings();
        }
        return f72375b;
    }

    public static void r(Activity activity, LinearLayout contentArea, float scale) {
        contentArea.removeAllViews();
        LayoutInflater from = LayoutInflater.from(k.a(activity, Nc.b.E(0.1f, scale, 5.0f)));
        s(R.layout.editor_panel_tittle, from, contentArea);
        s(R.layout.inspector_component_sldropdown, from, contentArea);
        s(R.layout.inspector_component_slinputfile, from, contentArea);
        s(R.layout.inspector_component_slboolean, from, contentArea);
        s(R.layout.inspector_component_color, from, contentArea);
        s(R.layout.editor_topbar_button_disconnected, from, contentArea);
    }

    public static void s(int layout, LayoutInflater inflater, LinearLayout content) {
        View inflate = inflater.inflate(layout, (ViewGroup) null, false);
        content.addView(inflate);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        inflate.setLayoutParams(layoutParams);
    }

    @Override
    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.ui_scale_screen, (ViewGroup) null);
        double o10 = o(activity);
        if (o10 >= 9.5d) {
            EditorSettings.a().uiScale = 1.5f;
        } else if (o10 >= 6.5d) {
            EditorSettings.a().uiScale = 1.1f;
        } else {
            EditorSettings.a().uiScale = 1.0f;
        }
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.contentArea);
        TextInputEditText textInputEditText = (TextInputEditText) inflate.findViewById(R.id.textInputEditText);
        textInputEditText.setOnEditorActionListener(new a(textInputEditText, activity, linearLayout));
        textInputEditText.setText(Tc.b.p(EditorSettings.a().uiScale, 2) + "");
        View findViewById = inflate.findViewById(R.id.minus);
        View findViewById2 = inflate.findViewById(R.id.add);
        findViewById.setOnClickListener(new b(activity, linearLayout, textInputEditText));
        findViewById2.setOnClickListener(new c(activity, linearLayout, textInputEditText));
        Button button = (Button) inflate.findViewById(R.id.agree);
        button.setText(Lang.l(Lang.T.CONTINUE));
        button.setOnClickListener(new d());
        r(activity, linearLayout, EditorSettings.a().uiScale);
        return inflate;
    }

    @Override
    public boolean i(Activity activity) {
        Settings settings = f72375b;
        return settings == null || !settings.executed;
    }

    @Override
    public void k(Activity activity) {
        q(activity);
    }

    public void t() {
        X7.a.l("uiscale", "settings.config", new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(f72375b), b());
    }
}
