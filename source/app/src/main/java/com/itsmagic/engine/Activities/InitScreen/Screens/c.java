package com.itsmagic.engine.Activities.InitScreen.Screens;

import android.app.Activity;
import android.content.Context;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine2.R;
import java.util.Iterator;
import p.C14917a;
import t3.C15377a;

public class c extends com.itsmagic.engine.Activities.InitScreen.a {
    @Override
    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        return layoutInflater.inflate(R.layout.user_terms_consent_screen, (ViewGroup) null);
    }

    @Override
    public boolean i(Activity activity) {
        return false;
    }

    @Override
    public void k(Activity activity) {
        m(activity);
    }

    public boolean m(final Context context) {
        String charsString;
        SigningInfo signingInfo;
        boolean hasMultipleSigners;
        Signature[] signingCertificateHistory;
        Signature[] apkContentsSigners;
        if (!C15377a.f109719g.booleanValue()) {
            W7.b.f27306f.h(C14917a.f103371d.get(0));
            return true;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                signingInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 134217728).signingInfo;
                hasMultipleSigners = signingInfo.hasMultipleSigners();
                if (hasMultipleSigners) {
                    apkContentsSigners = signingInfo.getApkContentsSigners();
                    charsString = apkContentsSigners[0].toCharsString();
                    W7.b.f27306f.h(charsString);
                } else {
                    signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                    charsString = signingCertificateHistory[0].toCharsString();
                    W7.b.f27306f.h(charsString);
                }
            } else {
                charsString = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toCharsString();
                W7.b.f27306f.h(charsString);
            }
            Iterator<String> it = C14917a.f103371d.iterator();
            while (it.hasNext()) {
                if (charsString.equals(it.next())) {
                    return true;
                }
            }
        } catch (Error | Exception unused) {
        }
        return false;
    }
}
