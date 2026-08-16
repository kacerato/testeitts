package com.karumi.dexter.listener;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.View;

public class SettingsClickListener implements View.OnClickListener {
    @Override
    public void onClick(View view) {
        Context context = view.getContext();
        Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:" + context.getPackageName()));
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }
}
