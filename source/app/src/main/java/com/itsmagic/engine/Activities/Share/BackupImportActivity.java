package com.itsmagic.engine.Activities.Share;

import O7.c;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import w3.k;

public class BackupImportActivity extends AppCompatActivity {

    public final List<Uri> f72437b = new SteppedArrayList();

    public SweetAlertDialog f72438c;

    public class a implements Runnable {

        public class RunnableC1166a implements Runnable {

            public final int f72440b;

            public RunnableC1166a(final int val$progress) {
                this.f72440b = val$progress;
            }

            @Override
            public void run() {
                BackupImportActivity backupImportActivity = BackupImportActivity.this;
                backupImportActivity.o(this.f72440b, backupImportActivity.f72437b.size());
            }
        }

        public class b implements Runnable {

            public final int f72442b;

            public final int f72443c;

            public b(final int val$finalImported, final int val$finalFailed) {
                this.f72442b = val$finalImported;
                this.f72443c = val$finalFailed;
            }

            @Override
            public void run() {
                BackupImportActivity.this.m(this.f72442b, this.f72443c);
            }
        }

        public a() {
        }

        @Override
        public void run() {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i10 < BackupImportActivity.this.f72437b.size()) {
                BackupImportActivity backupImportActivity = BackupImportActivity.this;
                if (Vc.a.c(backupImportActivity, (Uri) backupImportActivity.f72437b.get(i10)).d()) {
                    i11++;
                } else {
                    i12++;
                }
                i10++;
                BackupImportActivity.this.runOnUiThread(new RunnableC1166a(i10));
            }
            BackupImportActivity.this.runOnUiThread(new b(i11, i12));
        }
    }

    public class b implements SweetAlertDialog.OnSweetClickListener {
        public b() {
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            sweetAlertDialog.dismissWithAnimation();
            BackupImportActivity.this.finish();
        }
    }

    @Override
    public void attachBaseContext(Context newBase) {
        super.attachBaseContext(k.a(newBase, newBase.getSharedPreferences("ui_config", 0).getFloat("scale_factor", 1.0f) * 1.2f));
    }

    public final String j(int imported, int failed) {
        int size = this.f72437b.size();
        if (size == 1) {
            return imported == 1 ? "Backup imported to Backups" : "Failed to import backup";
        }
        if (imported == size) {
            return "Imported " + imported + " backup(s) to Backups";
        }
        if (imported <= 0) {
            return failed == size ? "Failed to import backups" : "No backups were imported";
        }
        return "Imported " + imported + " of " + size + " backup(s)";
    }

    public final String k(int current, int total) {
        if (total <= 1) {
            return current <= 0 ? "Preparing backup import..." : "Finalizing backup import...";
        }
        if (current <= 0) {
            return "Preparing " + total + " backups...";
        }
        return "Imported " + current + " of " + total + " backups";
    }

    public final boolean l(Intent intent) {
        this.f72437b.clear();
        for (Uri uri : c.a(intent)) {
            if (Vc.a.e(this, uri)) {
                this.f72437b.add(uri);
            }
        }
        return !this.f72437b.isEmpty();
    }

    public final void m(int imported, int failed) {
        SweetAlertDialog sweetAlertDialog = this.f72438c;
        if (sweetAlertDialog == null) {
            finish();
            return;
        }
        if (failed == 0) {
            sweetAlertDialog.changeAlertType(2);
            this.f72438c.setTitleText("Import complete");
            this.f72438c.setContentText(j(imported, failed));
        } else {
            sweetAlertDialog.changeAlertType(3);
            this.f72438c.setTitleText("Import finished");
            this.f72438c.setContentText(j(imported, failed));
        }
        this.f72438c.setConfirmText("OK");
        this.f72438c.setConfirmClickListener(new b());
        this.f72438c.setCancelClickListener(null);
    }

    public final void n() {
        new Thread(new a()).start();
    }

    public final void o(int current, int total) {
        SweetAlertDialog sweetAlertDialog = this.f72438c;
        if (sweetAlertDialog == null) {
            return;
        }
        sweetAlertDialog.setContentText(k(current, total));
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(new View(this));
        if (!l(getIntent())) {
            Toast.makeText(this, "No backup files found", 0).show();
            finish();
            return;
        }
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this, 5);
        this.f72438c = sweetAlertDialog;
        sweetAlertDialog.setTitleText("Importing backups");
        this.f72438c.setContentText(k(0, this.f72437b.size()));
        this.f72438c.setCancelable(false);
        this.f72438c.setCanceledOnTouchOutside(false);
        this.f72438c.show();
        n();
    }

    @Override
    public void onDestroy() {
        SweetAlertDialog sweetAlertDialog = this.f72438c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.dismissWithAnimation();
            } catch (Exception unused) {
            }
            this.f72438c = null;
        }
        super.onDestroy();
    }
}
