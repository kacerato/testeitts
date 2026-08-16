package com.google.android.gms.common;

import B0.C2324i;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public final class GooglePlayServicesIncorrectManifestValueException extends GooglePlayServicesManifestException {
    public GooglePlayServicesIncorrectManifestValueException(int i10) {
        super(i10, "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + C2324i.f1242a + " but found " + i10 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
    }
}
