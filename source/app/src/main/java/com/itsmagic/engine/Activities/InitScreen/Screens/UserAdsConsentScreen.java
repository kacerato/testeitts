package com.itsmagic.engine.Activities.InitScreen.Screens;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine2.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UserAdsConsentScreen extends com.itsmagic.engine.Activities.InitScreen.a {

    public static final int f72389b = 1;

    public static Terms f72390c;

    public static class Terms {

        @Expose
        String acceptedAt;

        @Expose
        int version;

        @Expose
        a ads = a.Undefined;

        @Expose
        boolean termsAccepted = false;

        @Expose
        boolean doNotSell = false;

        public enum a {
            HasConsent,
            NoConsent,
            Undefined
        }

        public String a() {
            return this.acceptedAt;
        }

        public a b() {
            return this.ads;
        }

        public boolean c() {
            return this.doNotSell;
        }

        public boolean d() {
            return this.termsAccepted;
        }
    }

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            UserAdsConsentScreen.f72390c.doNotSell = !isChecked;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View v10) {
            UserAdsConsentScreen.f72390c.termsAccepted = true;
            UserAdsConsentScreen.f72390c.ads = Terms.a.HasConsent;
            Date time = Calendar.getInstance().getTime();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            UserAdsConsentScreen.f72390c.acceptedAt = simpleDateFormat.format(time);
            UserAdsConsentScreen.f72390c.version = 1;
            UserAdsConsentScreen.this.p();
            UserAdsConsentScreen.this.a();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View v10) {
            UserAdsConsentScreen.f72390c.termsAccepted = true;
            UserAdsConsentScreen.f72390c.ads = Terms.a.NoConsent;
            Date time = Calendar.getInstance().getTime();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            UserAdsConsentScreen.f72390c.acceptedAt = simpleDateFormat.format(time);
            UserAdsConsentScreen.f72390c.version = 1;
            UserAdsConsentScreen.this.p();
            UserAdsConsentScreen.this.a();
        }
    }

    public static Terms n() {
        Terms terms = f72390c;
        return terms != null ? terms : o(N7.c.t());
    }

    public static Terms o(Context context) {
        Terms terms = f72390c;
        if (terms != null) {
            return terms;
        }
        Gson create = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
        try {
            X7.a aVar = W7.b.f27305e;
            f72390c = (Terms) create.fromJson(X7.a.C("terms", "ads.config", context), Terms.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (f72390c == null) {
            f72390c = new Terms();
        }
        return f72390c;
    }

    @Override
    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.user_ads_consent_screen, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        textView.setText(Lang.l(Lang.T.USER_ADS_CONSENT_TITLE));
        textView2.setText(Lang.l(Lang.T.USER_ADS_CONSENT_TEXT));
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.dontSell);
        checkBox.setText(Lang.l(Lang.T.USER_ADS_CONSENT_DONT_SELL));
        checkBox.setOnCheckedChangeListener(new a());
        Button button = (Button) inflate.findViewById(R.id.agree);
        button.setText(Lang.l(Lang.T.USER_ADS_CONSENT_AGREE));
        button.setOnClickListener(new b());
        Button button2 = (Button) inflate.findViewById(R.id.disagree);
        button2.setText(Lang.l(Lang.T.USER_ADS_CONSENT_DISAGREE));
        button2.setOnClickListener(new c());
        return inflate;
    }

    @Override
    public boolean i(Activity activity) {
        Terms terms = f72390c;
        return terms == null || !terms.termsAccepted || terms.ads == Terms.a.Undefined || f72390c.version != 1;
    }

    @Override
    public void k(Activity activity) {
        o(activity);
    }

    public void p() {
        String json = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(f72390c);
        X7.a aVar = W7.b.f27305e;
        X7.a.l("terms", "ads.config", json, b());
    }
}
