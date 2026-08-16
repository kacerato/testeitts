package com.pairip.application;

import android.content.Context;
import com.itsmagic.engine.Activities.App;
import com.pairip.licensecheck.LicenseClient;

public class Application extends App {
    @Override
    public void attachBaseContext(Context context) {
        LicenseClient.checkLicense(context);
        super.attachBaseContext(context);
    }
}
