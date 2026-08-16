package com.itsmagic.engine.Activities.InitScreen.Screens;

import Ic.C2630i;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine2.R;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class UserTermsConsentScreen extends com.itsmagic.engine.Activities.InitScreen.a {

    public static final int f72394b = 1;

    public static Terms f72395c;

    public static class Terms {

        @Expose
        String acceptedAt;

        @Expose
        int age;

        @Expose
        int version;

        @Expose
        int day = -1;

        @Expose
        int month = -1;

        @Expose
        int year = -1;

        @Expose
        boolean configured = false;

        @Expose
        boolean termsAccepted = false;

        public String a() {
            return this.acceptedAt;
        }

        public int b() {
            return this.age;
        }

        public int c() {
            return this.day;
        }

        public int d() {
            return this.month;
        }

        public int e() {
            return this.year;
        }

        public boolean f() {
            return this.age <= 13;
        }

        public boolean g() {
            return this.configured;
        }

        public boolean h() {
            return this.termsAccepted;
        }

        public void i(int day, int month, int year) {
            this.day = day;
            this.month = month;
            this.year = year;
            this.configured = true;
        }
    }

    public class a implements View.OnClickListener {

        public final Activity f72396b;

        public a(final Activity val$activity) {
            this.f72396b = val$activity;
        }

        @Override
        public void onClick(View v10) {
            C2630i.p("https://itsmagic.com.br/privacy-policy.html", this.f72396b);
        }
    }

    public class b implements View.OnClickListener {

        public final Activity f72398b;

        public b(final Activity val$activity) {
            this.f72398b = val$activity;
        }

        @Override
        public void onClick(View v10) {
            C2630i.p("https://itsmagic.com.br/terms-and-conditions.html", this.f72398b);
        }
    }

    public class c implements DatePickerDialog.OnDateSetListener {

        public final Calendar f72400a;

        public final AppCompatEditText f72401b;

        public c(final Calendar val$myCalendar, final AppCompatEditText val$editText) {
            this.f72400a = val$myCalendar;
            this.f72401b = val$editText;
        }

        @Override
        public void onDateSet(DatePicker view, int year, int month, int day) {
            this.f72400a.set(1, year);
            this.f72400a.set(2, month);
            this.f72400a.set(5, day);
            UserTermsConsentScreen.f72395c.i(day, month + 1, year);
            this.f72401b.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.US).format(this.f72400a.getTime()));
        }
    }

    public class d implements View.OnClickListener {

        public final Activity f72403b;

        public final DatePickerDialog.OnDateSetListener f72404c;

        public final Calendar f72405d;

        public d(final Activity val$activity, final DatePickerDialog.OnDateSetListener val$dateListener, final Calendar val$myCalendar) {
            this.f72403b = val$activity;
            this.f72404c = val$dateListener;
            this.f72405d = val$myCalendar;
        }

        @Override
        public void onClick(View view) {
            if (UserTermsConsentScreen.f72395c.configured) {
                new DatePickerDialog(this.f72403b, this.f72404c, UserTermsConsentScreen.f72395c.year, UserTermsConsentScreen.f72395c.month, UserTermsConsentScreen.f72395c.day).show();
            } else {
                new DatePickerDialog(this.f72403b, this.f72404c, 2000, this.f72405d.get(2), this.f72405d.get(5)).show();
            }
        }
    }

    public class e implements View.OnClickListener {

        public final Activity f72407b;

        public e(final Activity val$activity) {
            this.f72407b = val$activity;
        }

        @Override
        public void onClick(View v10) {
            if (!UserTermsConsentScreen.f72395c.configured) {
                Toast.makeText(this.f72407b, Lang.l(Lang.T.FILL_BIRTHDAY_WARNING), 0).show();
                return;
            }
            Date time = Calendar.getInstance().getTime();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            UserTermsConsentScreen.f72395c.acceptedAt = simpleDateFormat.format(time);
            if (UserTermsConsentScreen.f72395c.month <= 0 || UserTermsConsentScreen.f72395c.month > 12) {
                Toast.makeText(this.f72407b, "Invalid date month", 0).show();
                return;
            }
            try {
                LocalDate of2 = LocalDate.of(UserTermsConsentScreen.f72395c.year, UserTermsConsentScreen.f72395c.month, UserTermsConsentScreen.f72395c.day);
                LocalDate now = LocalDate.now();
                UserTermsConsentScreen.f72395c.age = UserTermsConsentScreen.n(of2, now);
                UserTermsConsentScreen.f72395c.termsAccepted = true;
                UserTermsConsentScreen.f72395c.version = 1;
                UserTermsConsentScreen.this.q();
                UserTermsConsentScreen.this.a();
            } catch (Exception e10) {
                e10.printStackTrace();
                Toast.makeText(this.f72407b, e10.getMessage(), 0).show();
            }
        }
    }

    public static int n(LocalDate birthDate, LocalDate currentDate) {
        if (birthDate == null || currentDate == null) {
            return 0;
        }
        return Period.between(birthDate, currentDate).getYears();
    }

    public static Terms o() {
        Terms terms = f72395c;
        return terms != null ? terms : p(N7.c.t());
    }

    public static Terms p(Context context) {
        Terms terms = f72395c;
        if (terms != null) {
            return terms;
        }
        try {
            f72395c = (Terms) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(X7.a.C("terms", "terms.config", context), Terms.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (f72395c == null) {
            f72395c = new Terms();
        }
        return f72395c;
    }

    @Override
    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.user_terms_consent_screen, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        textView.setText(Lang.l(Lang.T.USER_TERMS_CONSENT_TITLE));
        textView2.setText(Lang.l(Lang.T.USER_TERMS_CONSENT_TEXT));
        Calendar calendar = Calendar.getInstance();
        TextView textView3 = (TextView) inflate.findViewById(R.id.readPrivacyPolicy);
        textView3.setText(Lang.l(Lang.T.USER_TERMS_CONSENT_PRIVACY_POLICY_TEXT));
        SpannableString spannableString = new SpannableString(textView3.getText());
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView3.setText(spannableString);
        textView3.setOnClickListener(new a(activity));
        TextView textView4 = (TextView) inflate.findViewById(R.id.readTerms);
        textView4.setText(Lang.l(Lang.T.USER_TERMS_CONSENT_TERMS_AND_CONDITIONS_TEXT));
        SpannableString spannableString2 = new SpannableString(textView4.getText());
        spannableString2.setSpan(new UnderlineSpan(), 0, spannableString2.length(), 0);
        textView4.setText(spannableString2);
        textView4.setOnClickListener(new b(activity));
        AppCompatEditText appCompatEditText = (AppCompatEditText) inflate.findViewById(R.id.birthday);
        appCompatEditText.setHint(Lang.l(Lang.T.USER_TERMS_INFORM_BIRTHDAY));
        c cVar = new c(calendar, appCompatEditText);
        Terms terms = f72395c;
        if (terms.configured) {
            calendar.set(1, terms.year);
            calendar.set(2, f72395c.month);
            calendar.set(5, f72395c.day);
            appCompatEditText.setText(new SimpleDateFormat("dd/MM/yyyy", Locale.US).format(calendar.getTime()));
        }
        appCompatEditText.setOnClickListener(new d(activity, cVar, calendar));
        Button button = (Button) inflate.findViewById(R.id.continueButton);
        button.setText(Lang.l(Lang.T.CONTINUE));
        button.setOnClickListener(new e(activity));
        return inflate;
    }

    @Override
    public boolean i(Activity activity) {
        Terms terms = f72395c;
        return (terms != null && terms.termsAccepted && terms.version == 1) ? false : true;
    }

    @Override
    public void k(Activity activity) {
        p(activity);
    }

    public void q() {
        X7.a.l("terms", "terms.config", new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(f72395c), b());
    }
}
