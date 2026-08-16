package com.itsmagic.engine.Activities.Share;

import F7.j;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.itsmagic.engine.Activities.Share.ShareImportActivity;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.constant.ConstantDescs;
import java.util.List;
import w3.k;

public class ShareImportActivity extends AppCompatActivity {

    public static final long f72450j = 100;

    public P7.c f72452c;

    public TextView f72453d;

    public Button f72454e;

    public String f72455f;

    public final List<Uri> f72451b = new SteppedArrayList();

    public boolean f72456g = false;

    public final Handler f72457h = new Handler(Looper.getMainLooper());

    public final Runnable f72458i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (ShareImportActivity.this.f72452c != null) {
                ShareImportActivity.this.f72452c.H();
            }
            ShareImportActivity.this.f72457h.postDelayed(this, 100L);
        }
    }

    public class b extends N7.b {
        public b() {
        }

        @Override
        public Activity a() {
            return ShareImportActivity.this;
        }

        @Override
        public Context getContext() {
            return ShareImportActivity.this;
        }
    }

    public class c implements OnBackInvokedCallback {
        public c() {
        }

        public void onBackInvoked() {
            if (ShareImportActivity.this.f72452c != null) {
                ShareImportActivity.this.f72452c.m();
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View v10) {
            ShareImportActivity.this.finish();
        }
    }

    public class e extends P7.c {
        public e(Activity activity, V7.d explorerDataProvider, V7.c filter) {
            super(activity, explorerDataProvider, filter);
        }

        @Override
        public void q(String openFolder, View v10) {
        }

        @Override
        public void r(String openFolder) {
            ShareImportActivity.this.D();
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(File file, View v10) {
            ShareImportActivity.this.D();
        }

        @Override
        public void u(File file, View v10) {
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View v10) {
            ShareImportActivity.this.A();
        }
    }

    public class g implements Runnable {

        public final File f72465b;

        public class a implements Runnable {

            public final int f72467b;

            public final int f72468c;

            public a(final int val$finalSuccess, final int val$total) {
                this.f72467b = val$finalSuccess;
                this.f72468c = val$total;
            }

            @Override
            public void run() {
                String str;
                if (this.f72467b == this.f72468c) {
                    str = "Imported " + this.f72467b + " file(s)";
                } else {
                    str = "Imported " + this.f72467b + " of " + this.f72468c + " file(s)";
                }
                Toast.makeText(ShareImportActivity.this, str, 0).show();
                ShareImportActivity.this.finish();
            }
        }

        public g(final File val$destination) {
            this.f72465b = val$destination;
        }

        @Override
        public void run() {
            int i10 = 0;
            for (int i11 = 0; i11 < ShareImportActivity.this.f72451b.size(); i11++) {
                if (ShareImportActivity.this.t((Uri) ShareImportActivity.this.f72451b.get(i11), this.f72465b)) {
                    i10++;
                }
            }
            ShareImportActivity.this.runOnUiThread(new a(i10, ShareImportActivity.this.f72451b.size()));
        }
    }

    public static class h implements V7.c {
        public h() {
        }

        @Override
        public boolean a(File file) {
            String name;
            return (file == null || (name = file.getName()) == null || name.isEmpty() || name.startsWith(ConstantDescs.DEFAULT_NAME) || name.equals("JAVARuntime") || name.equals("javaRTImportPack.zip") || name.endsWith(".meta")) ? false : true;
        }

        public h(a aVar) {
            this();
        }
    }

    public static class i extends V7.d {

        public final String f72470a;

        public final String f72471b;

        public i(String projectsRoot) {
            projectsRoot = projectsRoot == null ? "" : projectsRoot;
            if (!projectsRoot.endsWith("/")) {
                projectsRoot = projectsRoot + "/";
            }
            this.f72470a = projectsRoot;
            this.f72471b = m(projectsRoot);
        }

        public static boolean l(File folder) {
            String name = folder.getName();
            return (name == null || name.isEmpty() || name.startsWith(ConstantDescs.DEFAULT_NAME) || name.equals("JAVARuntime") || name.equals("Files")) ? false : true;
        }

        public static String m(String path) {
            String o10 = Tc.b.o(path);
            if (o10 == null) {
                o10 = "";
            }
            if (o10.endsWith("/")) {
                return o10;
            }
            return o10 + "/";
        }

        @Override
        public boolean a(File file) {
            return file != null && file.exists();
        }

        @Override
        public String c(boolean isSearching, File file, String ipp) {
            return null;
        }

        @Override
        public j e(File file, String ipp, boolean isGrid) {
            return (file == null || !file.isDirectory()) ? new U7.a() : new U7.b();
        }

        @Override
        public String f() {
            return this.f72470a;
        }

        @Override
        public boolean h(File file) {
            return file != null && file.isDirectory();
        }

        @Override
        public List<File> i(File parent) {
            File[] listFiles;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            if (parent == null || (listFiles = parent.listFiles()) == null) {
                return steppedArrayList;
            }
            boolean equals = m(parent.getAbsolutePath()).equals(this.f72471b);
            for (File file : listFiles) {
                if (file != null) {
                    if (!equals) {
                        steppedArrayList.add(file);
                    } else if (file.isDirectory() && l(file)) {
                        steppedArrayList.add(file);
                    }
                }
            }
            return steppedArrayList;
        }
    }

    public static File o(File destinationFolder, String fileName) {
        String str;
        String str2;
        if (destinationFolder == null) {
            return null;
        }
        int lastIndexOf = fileName.lastIndexOf(46);
        if (lastIndexOf > 0) {
            str2 = fileName.substring(0, lastIndexOf);
            str = fileName.substring(lastIndexOf);
        } else {
            str = "";
            str2 = fileName;
        }
        File file = new File(destinationFolder, fileName);
        int i10 = 1;
        while (file.exists()) {
            file = new File(destinationFolder, str2 + " (" + i10 + ")" + str);
            i10++;
        }
        return file;
    }

    public static boolean s(InputStream in2, File file) {
        FileOutputStream fileOutputStream;
        if (in2 == null || file == null) {
            return false;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = in2.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            }
            fileOutputStream.close();
            try {
                in2.close();
                return true;
            } catch (Exception unused2) {
                return true;
            }
        } catch (Exception e11) {
            e = e11;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused3) {
                }
            }
            try {
                in2.close();
            } catch (Exception unused4) {
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused5) {
                }
            }
            try {
                in2.close();
                throw th;
            } catch (Exception unused6) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r1.trim().isEmpty() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        return r9.getLastPathSegment();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003b, code lost:
    
        if (r8 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
    
        if (r8 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
    
        if (r1 == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String u(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        int columnIndex;
        Cursor cursor2 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        String str = null;
        if (contentResolver == null || uri == null) {
            return null;
        }
        try {
            cursor = contentResolver.query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst() && (columnIndex = cursor.getColumnIndex("_display_name")) >= 0) {
                        str = cursor.getString(columnIndex);
                    }
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static WindowInsetsCompat v(int i10, int i11, int i12, int i13, View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        view.setPaddingRelative(i10 + insets.left, i11 + insets.top, i12 + insets.right, i13 + insets.bottom);
        return windowInsetsCompat;
    }

    public static String y(String name) {
        int i10;
        int i11;
        if (name == null) {
            return "shared_file";
        }
        String trim = name.trim();
        int max = Math.max(trim.lastIndexOf(47), trim.lastIndexOf(92));
        if (max >= 0 && (i11 = max + 1) < trim.length()) {
            trim = trim.substring(i11);
        }
        int lastIndexOf = trim.lastIndexOf(58);
        if (lastIndexOf >= 0 && (i10 = lastIndexOf + 1) < trim.length()) {
            trim = trim.substring(i10);
        }
        String replaceAll = trim.replaceAll("[\\\\/:*?\"<>|]", ConstantDescs.DEFAULT_NAME);
        return replaceAll.isEmpty() ? "shared_file" : replaceAll;
    }

    public final void A() {
        P7.c cVar = this.f72452c;
        if (cVar == null) {
            return;
        }
        String k10 = cVar.k();
        if (!p(k10)) {
            Toast.makeText(this, "Select a project folder", 0).show();
            return;
        }
        this.f72454e.setEnabled(false);
        this.f72454e.setText("Importing...");
        File file = new File(this.f72455f + w(k10));
        if (!file.exists()) {
            file.mkdirs();
        }
        new Thread(new g(file)).start();
    }

    public final void B() {
        this.f72457h.removeCallbacks(this.f72458i);
        this.f72457h.postDelayed(this.f72458i, 100L);
    }

    public final void C() {
        this.f72457h.removeCallbacks(this.f72458i);
    }

    public final void D() {
        P7.c cVar;
        if (this.f72453d == null || (cVar = this.f72452c) == null) {
            return;
        }
        String k10 = cVar.k();
        this.f72453d.setText(w(k10));
        this.f72454e.setEnabled(p(k10));
    }

    @Override
    public void attachBaseContext(Context newBase) {
        super.attachBaseContext(k.a(newBase, newBase.getSharedPreferences("ui_config", 0).getFloat("scale_factor", 1.0f) * 1.2f));
    }

    public final void n() {
        View x10 = x();
        if (x10 == null) {
            return;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(x10, this);
    }

    @Override
    public void onBackPressed() {
        P7.c cVar = this.f72452c;
        if (cVar != null) {
            cVar.m();
        }
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(savedInstanceState);
        N7.f.f(new b());
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, new c());
        }
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        setContentView(R.layout.activity_share_import);
        z();
        n();
        String n10 = W7.b.f27306f.f2458a.n(this);
        this.f72455f = n10;
        if (n10 == null) {
            this.f72455f = "";
        }
        if (!this.f72455f.endsWith("/")) {
            this.f72455f += "/";
        }
        Intent intent = getIntent();
        if (!r(intent)) {
            if (q(intent).isEmpty()) {
                Toast.makeText(this, "No shared files found", 0).show();
                finish();
                return;
            } else {
                Intent intent2 = new Intent(intent);
                intent2.setClass(this, BackupImportActivity.class);
                startActivity(intent2);
                finish();
                return;
            }
        }
        ((ImageView) findViewById(R.id.closeX)).setOnClickListener(new d());
        ((TextView) findViewById(R.id.formatTitle)).setText("Select destination\n(" + this.f72451b.size() + " files)");
        this.f72453d = (TextView) findViewById(R.id.selectedFolder);
        Button button = (Button) findViewById(R.id.selectFolder);
        this.f72454e = button;
        button.setEnabled(false);
        e eVar = new e(this, new i(this.f72455f), new h(null));
        this.f72452c = eVar;
        eVar.h((ViewGroup) findViewById(R.id.filesContent));
        this.f72452c.x(this.f72456g);
        this.f72452c.n("");
        n();
        this.f72454e.setOnClickListener(new f());
        D();
    }

    @Override
    public void onDestroy() {
        C();
        N7.f.g();
        super.onDestroy();
    }

    @Override
    public void onPause() {
        C();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.f72452c != null) {
            B();
        }
    }

    public final boolean p(String openFolder) {
        String o10 = Tc.b.o(openFolder);
        return (o10 == null || o10.trim().isEmpty()) ? false : true;
    }

    public final List<Uri> q(Intent intent) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Uri uri : O7.c.a(intent)) {
            if (Vc.a.e(this, uri)) {
                steppedArrayList.add(uri);
            }
        }
        return steppedArrayList;
    }

    public final boolean r(Intent intent) {
        this.f72451b.clear();
        for (Uri uri : O7.c.a(intent)) {
            if (!Vc.a.e(this, uri)) {
                this.f72451b.add(uri);
            }
        }
        return !this.f72451b.isEmpty();
    }

    public final boolean t(Uri uri, File destinationFolder) {
        if (uri != null && destinationFolder != null) {
            try {
                File o10 = o(destinationFolder, y(u(getContentResolver(), uri)));
                InputStream openInputStream = getContentResolver().openInputStream(uri);
                if (openInputStream == null) {
                    return false;
                }
                return s(openInputStream, o10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public final String w(String openFolder) {
        String o10 = Tc.b.o(openFolder);
        if (o10 == null || o10.isEmpty()) {
            return "Projects/";
        }
        if (o10.endsWith("/")) {
            return o10;
        }
        return o10 + "/";
    }

    public final View x() {
        View findViewById = findViewById(16908290);
        if (!(findViewById instanceof ViewGroup)) {
            return findViewById;
        }
        ViewGroup viewGroup = (ViewGroup) findViewById;
        return (viewGroup.getChildCount() <= 0 || viewGroup.getChildAt(0) == null) ? findViewById : viewGroup.getChildAt(0);
    }

    public final void z() {
        View x10 = x();
        if (x10 == null) {
            return;
        }
        final int paddingStart = x10.getPaddingStart();
        final int paddingTop = x10.getPaddingTop();
        final int paddingEnd = x10.getPaddingEnd();
        final int paddingBottom = x10.getPaddingBottom();
        ViewCompat.setOnApplyWindowInsetsListener(x10, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat v10;
                v10 = ShareImportActivity.v(paddingStart, paddingTop, paddingEnd, paddingBottom, view, windowInsetsCompat);
                return v10;
            }
        });
        ViewCompat.requestApplyInsets(x10);
    }
}
