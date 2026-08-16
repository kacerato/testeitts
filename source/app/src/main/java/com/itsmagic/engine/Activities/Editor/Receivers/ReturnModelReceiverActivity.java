package com.itsmagic.engine.Activities.Editor.Receivers;

import Tc.b;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.itsmagic.engine.Core.Components.ProjectController.a;
import id.C13696a;
import java.io.File;
import java.io.FileNotFoundException;

public class ReturnModelReceiverActivity extends AppCompatActivity {
    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent == null || !Intent.ACTION_SEND.equals(intent.getAction()) || !intent.hasExtra(Intent.EXTRA_STREAM)) {
            finish();
            return;
        }
        try {
            Uri uri = (Uri) intent.getParcelableExtra(Intent.EXTRA_STREAM);
            String stringExtra = intent.getStringExtra("folder");
            intent.getStringExtra("path");
            String stringExtra2 = intent.getStringExtra("project");
            String stringExtra3 = intent.getStringExtra("format");
            String stringExtra4 = intent.getStringExtra("name");
            intent.getStringExtra("objectName");
            String str = b.w(stringExtra4, true) + "." + stringExtra3;
            C13696a.d(getContentResolver().openInputStream(uri), new File(b.o(a.Z(stringExtra2, this) + "/" + stringExtra + "/" + str)));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" received");
            Toast.makeText(this, sb2.toString(), 0).show();
            finish();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            Toast.makeText(this, "Failed to import file at itsmagic", 0).show();
            finish();
        }
    }
}
