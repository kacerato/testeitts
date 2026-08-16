package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import Z6.g;
import android.annotation.SuppressLint;
import android.net.Uri;
import android.provider.Telephony;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.u;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;
import s7.C15235a;
import s7.C15236b;
import w3.f;
import yd.C16181m;

public class s extends C15236b<i> {

    public static final Pattern f70384q0 = Pattern.compile("^[A-Za-z0-9._-]+$");

    public static final Pattern f70385r0 = Pattern.compile("^[A-Za-z]+$");

    public final u.h f70386l0;

    public final String f70387m0;

    public final String f70388n0;

    public final boolean f70389o0;

    public final f f70390p0;

    public class a implements g.c {

        public final StoreGitHubPublisher.q f70391a;

        public class RunnableC1069a implements Runnable {

            public final Z6.g f70393b;

            public class C1070a implements StoreGitHubPublisher.o {

                public class RunnableC1071a implements Runnable {

                    public final StoreGitHubPublisher.p f70396b;

                    public final int f70397c;

                    public final int f70398d;

                    public RunnableC1071a(final StoreGitHubPublisher.p val$stage, final int val$current, final int val$total) {
                        this.f70396b = val$stage;
                        this.f70397c = val$current;
                        this.f70398d = val$total;
                    }

                    @Override
                    public void run() {
                        RunnableC1069a runnableC1069a = RunnableC1069a.this;
                        runnableC1069a.f70393b.f1(s.this.Q1(this.f70396b, this.f70397c, this.f70398d));
                    }
                }

                public C1070a() {
                }

                @Override
                public void a(StoreGitHubPublisher.p stage, int current, int total) {
                    N7.c.j0(new RunnableC1071a(stage, current, total));
                }
            }

            public class b implements Runnable {

                public final StoreGitHubPublisher.r f70400b;

                public b(final StoreGitHubPublisher.r val$result) {
                    this.f70400b = val$result;
                }

                @Override
                public void run() {
                    RunnableC1069a.this.f70393b.q1();
                    s.this.R0();
                    Z6.h.y1(Lang.l(Lang.T.SUCCESS), Lang.l(Lang.T.STORE_GITHUB_PUBLISH_SUCCESS));
                    if (s.this.f70390p0 != null) {
                        s.this.f70390p0.a(this.f70400b);
                    }
                }
            }

            public class c implements Runnable {

                public final StoreGitHubPublisher.PublishException f70402b;

                public c(final StoreGitHubPublisher.PublishException val$e) {
                    this.f70402b = val$e;
                }

                @Override
                public void run() {
                    RunnableC1069a.this.f70393b.q1();
                    Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), s.this.W1(this.f70402b));
                }
            }

            public RunnableC1069a(final Z6.g val$popup) {
                this.f70393b = val$popup;
            }

            @Override
            public void run() {
                try {
                    N7.c.j0(new b(StoreGitHubPublisher.C(s.this.M(), a.this.f70391a, new C1070a())));
                } catch (StoreGitHubPublisher.PublishException e10) {
                    e10.printStackTrace();
                    N7.c.j0(new c(e10));
                }
            }
        }

        public a(final StoreGitHubPublisher.q val$request) {
            this.f70391a = val$request;
        }

        @Override
        public void a(Z6.g popup, FloatingPanelArea area) {
            new Thread(new RunnableC1069a(popup)).start();
        }
    }

    public static class b {

        public static final int[] f70404a;

        public static final int[] f70405b;

        static {
            int[] iArr = new int[StoreGitHubPublisher.b.values().length];
            f70405b = iArr;
            try {
                iArr[StoreGitHubPublisher.b.InvalidToken.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70405b[StoreGitHubPublisher.b.UserMismatch.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70405b[StoreGitHubPublisher.b.RepositoryAlreadyExists.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f70405b[StoreGitHubPublisher.b.PullRequestAlreadyExists.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f70405b[StoreGitHubPublisher.b.Network.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f70405b[StoreGitHubPublisher.b.Generic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[StoreGitHubPublisher.p.values().length];
            f70404a = iArr2;
            try {
                iArr2[StoreGitHubPublisher.p.Authenticating.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f70404a[StoreGitHubPublisher.p.CreatingRepository.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f70404a[StoreGitHubPublisher.p.UploadingProjectFiles.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f70404a[StoreGitHubPublisher.p.ForkingManifestRepository.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f70404a[StoreGitHubPublisher.p.UploadingManifestFiles.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f70404a[StoreGitHubPublisher.p.OpeningPullRequest.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public abstract class c extends s7.c<i> {
        public c() {
        }

        @SuppressLint({"InflateParams"})
        public View z(int layoutRes) {
            return this.f109288a.inflate(layoutRes, (ViewGroup) null);
        }

        public c(s sVar, a aVar) {
            this();
        }
    }

    public class d extends c {

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override
            public void onClick(View v10) {
                s.this.d2();
            }
        }

        public d() {
            super(s.this, null);
        }

        @Override
        public boolean c() {
            return false;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_PUBLISH_BUTTON);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_finish);
            TextView textView = (TextView) z10.findViewById(R.id.selectedFilesLabel);
            TextView textView2 = (TextView) z10.findViewById(R.id.selectedFilesValue);
            TextView textView3 = (TextView) z10.findViewById(R.id.titleLabel);
            TextView textView4 = (TextView) z10.findViewById(R.id.titleValue);
            TextView textView5 = (TextView) z10.findViewById(R.id.descriptionLabel);
            TextView textView6 = (TextView) z10.findViewById(R.id.descriptionValue);
            TextView textView7 = (TextView) z10.findViewById(R.id.licenseLabel);
            TextView textView8 = (TextView) z10.findViewById(R.id.licenseValue);
            TextView textView9 = (TextView) z10.findViewById(R.id.tagsLabel);
            TextView textView10 = (TextView) z10.findViewById(R.id.tagsValue);
            TextView textView11 = (TextView) z10.findViewById(R.id.repositoryLabel);
            TextView textView12 = (TextView) z10.findViewById(R.id.repositoryValue);
            Button button = (Button) z10.findViewById(R.id.publishButton);
            textView.setText(Lang.l(Lang.T.STORE_GITHUB_SELECTED_FILES));
            textView2.setText(s.this.S1());
            textView3.setText(Lang.l(Lang.T.TITLE));
            textView4.setText(s.this.Z1(i().f70426a));
            textView5.setText(Lang.l(Lang.T.STORE_GITHUB_DESCRIPTION));
            textView6.setText(s.this.Z1(i().f70427b));
            textView7.setText(Lang.l(Lang.T.STORE_GITHUB_LICENSE));
            textView8.setText(s.this.Z1(i().f70428c));
            textView9.setText(Lang.l(Lang.T.STORE_GITHUB_TAGS));
            textView10.setText(s.this.Z1(i().f70429d));
            textView11.setText(Lang.l(Lang.T.STORE_GITHUB_REPOSITORY_NAME));
            textView12.setText(s.this.Z1(i().f70430e));
            button.setText(Lang.l(Lang.T.STORE_GITHUB_PUBLISH_BUTTON));
            button.setOnClickListener(new a());
            return z10;
        }

        public d(s sVar, a aVar) {
            this();
        }
    }

    public interface f {
        void a(StoreGitHubPublisher.r result);
    }

    public static class i extends C15235a {

        public StoreGitHubPublisher.s f70431f;

        public String f70426a = "";

        public String f70427b = "";

        public String f70428c = "";

        public String f70429d = "";

        public String f70430e = "";

        public final List<StoreGitHubPublisher.s> f70432g = new SteppedArrayList();
    }

    public s(u.h importData, String projectRootPath, String defaultName, boolean isTemplate, f listener) {
        super(Lang.l(Lang.T.STORE_GITHUB_FORM_TITLE));
        this.f70386l0 = importData;
        this.f70387m0 = projectRootPath;
        String trim = defaultName == null ? "" : defaultName.trim();
        this.f70388n0 = trim;
        this.f70389o0 = isTemplate;
        this.f70390p0 = listener;
        i iVar = new i();
        iVar.f70426a = trim;
        super.B1(iVar);
        super.C1(new h(this, null));
    }

    public static s a2(u.h importData, String projectRootPath, String defaultName, boolean isTemplate, f listener) {
        s sVar = new s(importData, projectRootPath, defaultName, isTemplate, listener);
        C15147a.n(sVar, 0.1f, 0.05f, 0.8f, 0.9f).T();
        return sVar;
    }

    public final String P1(String base, StoreGitHubPublisher.PublishException error) {
        String message = error == null ? null : error.getMessage();
        if (message == null || message.trim().isEmpty()) {
            return base;
        }
        String trim = message.trim();
        if (base != null && base.trim().equals(trim)) {
            return base;
        }
        return base + "\n\n" + trim;
    }

    public final String Q1(StoreGitHubPublisher.p stage, int current, int total) {
        int i10 = b.f70404a[stage.ordinal()];
        if (i10 == 1) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_AUTHENTICATING);
        }
        if (i10 == 2) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_CREATING_REPOSITORY);
        }
        if (i10 == 3) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_UPLOADING_PROJECT_FILES) + " " + current + "/" + total;
        }
        if (i10 == 4) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_FORKING_MANIFEST);
        }
        if (i10 != 5) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_OPENING_PULL_REQUEST);
        }
        return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_UPLOADING_MANIFEST_FILES) + " " + current + "/" + total;
    }

    public final String R1(String value) {
        String replaceAll = Z1(value).trim().toLowerCase(Locale.ROOT).replaceAll("[^a-z0-9._-]+", "-").replaceAll("^-+", "").replaceAll("-+$", "");
        return replaceAll.isEmpty() ? Telephony.Sms.Intents.EXTRA_PACKAGE_NAME : replaceAll;
    }

    public final String S1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        T1(this.f70386l0, steppedArrayList);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(steppedArrayList.size());
        sb2.append(" ");
        sb2.append(Lang.l(Lang.T.STORE_GITHUB_SELECTED_FILES_COUNT));
        sb2.append("\n");
        int min = Math.min(steppedArrayList.size(), 5);
        for (int i10 = 0; i10 < min; i10++) {
            if (i10 > 0) {
                sb2.append("\n");
            }
            sb2.append(steppedArrayList.get(i10));
        }
        if (steppedArrayList.size() > min) {
            sb2.append("\n...");
        }
        return sb2.toString();
    }

    public final void T1(u.h importData, List<String> out) {
        if (importData == null || importData.a() == null) {
            return;
        }
        for (int i10 = 0; i10 < importData.a().size(); i10++) {
            U1(importData.a().get(i10), out);
        }
    }

    public final void U1(u.i importFile, List<String> out) {
        if (importFile == null) {
            return;
        }
        if (importFile.g()) {
            for (int i10 = 0; i10 < importFile.c(); i10++) {
                U1(importFile.b(i10), out);
            }
            return;
        }
        String e10 = importFile.e();
        String str = this.f70387m0;
        if (str != null) {
            String replace = str.replace(C16181m.f130232i, "/");
            String replace2 = e10.replace(C16181m.f130232i, "/");
            if (!replace.endsWith("/")) {
                replace = replace + "/";
            }
            if (replace2.startsWith(replace)) {
                e10 = replace2.substring(replace.length());
            }
        }
        out.add(e10);
    }

    public final boolean V1(String repository) {
        if (repository == null || repository.isEmpty() || repository.length() > 100 || !f70384q0.matcher(repository).matches() || repository.startsWith(".") || repository.endsWith(".") || ".git".equalsIgnoreCase(repository)) {
            return false;
        }
        return !repository.contains(ClasspathEntry.DOT_DOT);
    }

    public final String W1(StoreGitHubPublisher.PublishException error) {
        StoreGitHubPublisher.b reason = error == null ? null : error.getReason();
        if (reason == null) {
            return P1(Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC), error);
        }
        int i10 = b.f70405b[reason.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? P1(Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC), error) : P1(Lang.l(Lang.T.STORE_GITHUB_ERROR_NETWORK), error) : Lang.l(Lang.T.STORE_GITHUB_ERROR_PULL_REQUEST_EXISTS) : Lang.l(Lang.T.STORE_GITHUB_ERROR_REPOSITORY_EXISTS) : Lang.l(Lang.T.STORE_GITHUB_ERROR_USER_MISMATCH) : Lang.l(Lang.T.STORE_GITHUB_ERROR_INVALID_TOKEN);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String X1(String rawTags) {
        if (rawTags == null || rawTags.trim().isEmpty()) {
            return "";
        }
        String[] split = rawTags.split(DocLint.SEPARATOR);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : split) {
            String trim = str.trim();
            if (trim.isEmpty() || !f70385r0.matcher(trim).matches()) {
                return "";
            }
            steppedArrayList.add(trim.toLowerCase(Locale.ROOT));
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            if (i10 > 0) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append((String) steppedArrayList.get(i10));
        }
        return sb2.toString();
    }

    public final String Y1(EditText editText) {
        return (editText == null || editText.getText() == null) ? "" : editText.getText().toString().trim();
    }

    public final String Z1(String value) {
        return value == null ? "" : value;
    }

    public final void b2() {
        Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC));
    }

    public final void c2(String description) {
        t.d(description);
    }

    public final void d2() {
        String trim = EditorSettings.a().githubToken == null ? "" : EditorSettings.a().githubToken.trim();
        if (trim.isEmpty()) {
            c2(Lang.l(Lang.T.STORE_GITHUB_TOKEN_MISSING));
            return;
        }
        i v12 = v1();
        if (v12 == null) {
            b2();
            return;
        }
        if (Z1(v12.f70426a).trim().isEmpty()) {
            b2();
            return;
        }
        if (Z1(v12.f70427b).trim().isEmpty()) {
            b2();
            return;
        }
        if (v12.f70431f == null || v12.f70432g.isEmpty()) {
            b2();
            return;
        }
        if (!V1(Z1(v12.f70430e).trim())) {
            b2();
            return;
        }
        String X12 = X1(v12.f70429d);
        if (X12.isEmpty()) {
            b2();
            return;
        }
        StoreGitHubPublisher.q qVar = new StoreGitHubPublisher.q();
        qVar.f70145a = trim;
        qVar.f70146b = this.f70387m0;
        qVar.f70147c = Z1(v12.f70426a).trim();
        qVar.f70148d = Z1(v12.f70430e).trim();
        qVar.f70149e = Z1(EditorSettings.a().githubSelectedOrganization).trim();
        qVar.f70150f = Z1(v12.f70427b).trim();
        qVar.f70151g = Z1(v12.f70428c).trim();
        qVar.f70152h = X12;
        qVar.f70153i = this.f70389o0;
        qVar.f70154j = v12.f70431f;
        qVar.f70155k.addAll(v12.f70432g);
        qVar.f70156l = this.f70386l0;
        Z6.g.s1(Lang.l(Lang.T.STORE_GITHUB_PROGRESS_AUTHENTICATING), new a(qVar));
    }

    public class e extends c {

        public EditText f70409f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public e() {
            super(s.this, r0);
            a aVar = null;
            a(new k(s.this, aVar));
        }

        @Override
        public boolean b() {
            i().f70428c = s.this.Y1(this.f70409f);
            return true;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_LICENSE);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_license);
            TextView textView = (TextView) z10.findViewById(R.id.licenseLabel);
            this.f70409f = (EditText) z10.findViewById(R.id.licenseInput);
            Ac.b bVar = Lang.T.STORE_GITHUB_LICENSE;
            textView.setText(Lang.l(bVar));
            this.f70409f.setHint(Lang.l(bVar));
            this.f70409f.setText(i().f70428c);
            return z10;
        }

        @Override
        public void q() {
            i i10 = i();
            if (i10 != null) {
                i10.f70428c = s.this.Y1(this.f70409f);
            }
            super.q();
        }

        public e(s sVar, a aVar) {
            this();
        }
    }

    public class g extends c {

        public ImageView f70411f;

        public TextView f70412g;

        public TextView f70413h;

        public TextView f70414i;

        public LinearLayout f70415j;

        public class a implements View.OnClickListener {

            public class C1072a implements f.c {
                public C1072a() {
                }

                @Override
                public void onCancel() {
                }

                @Override
                public void onError(String error) {
                    s.this.b2();
                }

                @Override
                public void onSuccess(String imageName, File imageFile) {
                    g.this.i().f70431f = new StoreGitHubPublisher.s(imageName, imageFile);
                    g.this.E();
                }
            }

            public a() {
            }

            @Override
            public void onClick(View v10) {
                w3.f.e(new C1072a());
            }
        }

        public class b implements View.OnClickListener {

            public class a implements f.c {
                public a() {
                }

                @Override
                public void onCancel() {
                }

                @Override
                public void onError(String error) {
                    s.this.b2();
                }

                @Override
                public void onSuccess(String imageName, File imageFile) {
                    g.this.i().f70432g.add(new StoreGitHubPublisher.s(imageName, imageFile));
                    g.this.D();
                }
            }

            public b() {
            }

            @Override
            public void onClick(View v10) {
                if (g.this.i().f70432g.size() >= 8) {
                    Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_IMAGES_LIMIT_REACHED));
                } else {
                    w3.f.e(new a());
                }
            }
        }

        public class c implements View.OnClickListener {

            public final int f70421b;

            public c(final int val$index) {
                this.f70421b = val$index;
            }

            @Override
            public void onClick(View v10) {
                g.this.i().f70432g.remove(this.f70421b);
                g.this.D();
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public g() {
            super(s.this, r0);
            a aVar = null;
            a(new e(s.this, aVar));
        }

        public final void C(ImageView imageView, File imageFile) {
            if (imageView == null) {
                return;
            }
            if (imageFile == null || !imageFile.exists()) {
                imageView.setImageDrawable(null);
            } else {
                imageView.setImageURI(Uri.fromFile(imageFile));
            }
        }

        public final void D() {
            TextView textView = this.f70413h;
            if (textView == null || this.f70415j == null || this.f70414i == null) {
                return;
            }
            textView.setText(Lang.l(Lang.T.STORE_GITHUB_IMAGES_HINT) + " (" + i().f70432g.size() + "/8)");
            this.f70415j.removeAllViews();
            int i10 = 0;
            this.f70414i.setVisibility(i().f70432g.isEmpty() ? 0 : 8);
            this.f70415j.setVisibility(i().f70432g.isEmpty() ? 8 : 0);
            if (i().f70432g.isEmpty()) {
                return;
            }
            while (i10 < i().f70432g.size()) {
                View z10 = z(R.layout.store_github_publish_image_item);
                ImageView imageView = (ImageView) z10.findViewById(R.id.imagePreview);
                TextView textView2 = (TextView) z10.findViewById(R.id.imageIndex);
                Button button = (Button) z10.findViewById(R.id.deleteButton);
                C(imageView, i().f70432g.get(i10).f70162b);
                StringBuilder sb2 = new StringBuilder();
                int i11 = i10 + 1;
                sb2.append(i11);
                sb2.append("");
                textView2.setText(sb2.toString());
                button.setText(Lang.l(Lang.T.DELETE));
                button.setOnClickListener(new c(i10));
                this.f70415j.addView(z10);
                i10 = i11;
            }
        }

        public final void E() {
            if (this.f70411f == null || this.f70412g == null) {
                return;
            }
            if (i().f70431f == null) {
                this.f70411f.setImageDrawable(null);
                this.f70412g.setText(Lang.l(Lang.T.STORE_GITHUB_NO_THUMBNAIL_SELECTED));
            } else {
                C(this.f70411f, i().f70431f.f70162b);
                this.f70412g.setText("");
            }
        }

        @Override
        public boolean b() {
            if (i().f70431f == null) {
                Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_THUMBNAIL_REQUIRED));
                return false;
            }
            if (i().f70432g.isEmpty()) {
                Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_IMAGES_REQUIRED));
                return false;
            }
            if (i().f70432g.size() <= 8) {
                return true;
            }
            Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_IMAGES_LIMIT_REACHED));
            return false;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_IMAGES);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_media);
            TextView textView = (TextView) z10.findViewById(R.id.thumbnailLabel);
            TextView textView2 = (TextView) z10.findViewById(R.id.imagesLabel);
            Button button = (Button) z10.findViewById(R.id.selectThumbnailButton);
            Button button2 = (Button) z10.findViewById(R.id.addImageButton);
            this.f70411f = (ImageView) z10.findViewById(R.id.thumbnailPreview);
            this.f70412g = (TextView) z10.findViewById(R.id.thumbnailHint);
            this.f70413h = (TextView) z10.findViewById(R.id.imagesHint);
            this.f70414i = (TextView) z10.findViewById(R.id.imagesEmpty);
            this.f70415j = (LinearLayout) z10.findViewById(R.id.imagesContainer);
            textView.setText(Lang.l(Lang.T.STORE_GITHUB_THUMBNAIL));
            textView2.setText(Lang.l(Lang.T.STORE_GITHUB_IMAGES));
            button.setText(Lang.l(Lang.T.STORE_GITHUB_SELECT_THUMBNAIL));
            button2.setText(Lang.l(Lang.T.STORE_GITHUB_ADD_IMAGE));
            this.f70414i.setText(Lang.l(Lang.T.STORE_GITHUB_NO_IMAGES_SELECTED));
            button.setOnClickListener(new a());
            button2.setOnClickListener(new b());
            E();
            D();
            return z10;
        }

        public g(s sVar, a aVar) {
            this();
        }
    }

    public class h extends c {

        public EditText f70423f;

        public EditText f70424g;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public h() {
            super(s.this, r0);
            a aVar = null;
            a(new g(s.this, aVar));
        }

        @Override
        public boolean b() {
            i i10 = i();
            i10.f70426a = s.this.Y1(this.f70423f);
            i10.f70427b = s.this.Y1(this.f70424g);
            if (i10.f70426a.isEmpty()) {
                this.f70423f.setError(Lang.l(Lang.T.STORE_GITHUB_REQUIRED_FIELD));
                return false;
            }
            if (!i10.f70427b.isEmpty()) {
                return true;
            }
            this.f70424g.setError(Lang.l(Lang.T.STORE_GITHUB_REQUIRED_FIELD));
            return false;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_FORM_TITLE);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_product_info);
            i i10 = i();
            TextView textView = (TextView) z10.findViewById(R.id.titleLabel);
            TextView textView2 = (TextView) z10.findViewById(R.id.descriptionLabel);
            this.f70423f = (EditText) z10.findViewById(R.id.titleInput);
            this.f70424g = (EditText) z10.findViewById(R.id.descriptionInput);
            Ac.b bVar = Lang.T.TITLE;
            textView.setText(Lang.l(bVar));
            Ac.b bVar2 = Lang.T.STORE_GITHUB_DESCRIPTION;
            textView2.setText(Lang.l(bVar2));
            this.f70423f.setHint(Lang.l(bVar));
            this.f70424g.setHint(Lang.l(bVar2));
            this.f70423f.setText(i10.f70426a);
            this.f70424g.setText(i10.f70427b);
            return z10;
        }

        @Override
        public void q() {
            i i10 = i();
            if (i10 != null) {
                i10.f70426a = s.this.Y1(this.f70423f);
                i10.f70427b = s.this.Y1(this.f70424g);
            }
            super.q();
        }

        public h(s sVar, a aVar) {
            this();
        }
    }

    public class j extends c {

        public EditText f70433f;

        public class a implements TextWatcher {
            public a() {
            }

            @Override
            public void afterTextChanged(Editable s10) {
                j.this.i().f70430e = s10 == null ? "" : s10.toString().trim();
            }

            @Override
            public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s10, int start, int before, int count) {
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public j() {
            super(s.this, r0);
            a aVar = null;
            a(new d(s.this, aVar));
        }

        @Override
        public boolean b() {
            String Y12 = s.this.Y1(this.f70433f);
            if (s.this.V1(Y12)) {
                i().f70430e = Y12;
                return true;
            }
            this.f70433f.setError(Lang.l(Lang.T.STORE_GITHUB_INVALID_REPOSITORY));
            return false;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_REPOSITORY_NAME);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_repository);
            TextView textView = (TextView) z10.findViewById(R.id.repositoryLabel);
            this.f70433f = (EditText) z10.findViewById(R.id.repositoryInput);
            Ac.b bVar = Lang.T.STORE_GITHUB_REPOSITORY_NAME;
            textView.setText(Lang.l(bVar));
            this.f70433f.setHint(Lang.l(bVar));
            this.f70433f.setText(i().f70430e);
            this.f70433f.addTextChangedListener(new a());
            return z10;
        }

        @Override
        public void r() {
            super.r();
            i i10 = i();
            if (i10 != null) {
                i10.f70430e = s.this.R1(i10.f70426a);
            }
        }

        public j(s sVar, a aVar) {
            this();
        }
    }

    public class k extends c {

        public EditText f70436f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public k() {
            super(s.this, r0);
            a aVar = null;
            a(new j(s.this, aVar));
        }

        @Override
        public boolean b() {
            s sVar = s.this;
            String X12 = sVar.X1(sVar.Y1(this.f70436f));
            if (X12.isEmpty()) {
                this.f70436f.setError(Lang.l(Lang.T.STORE_GITHUB_INVALID_TAGS));
                return false;
            }
            i().f70429d = X12;
            return true;
        }

        @Override
        public String m() {
            return Lang.l(Lang.T.STORE_GITHUB_TAGS);
        }

        @Override
        public View p() {
            View z10 = z(R.layout.store_github_publish_stage_tags);
            TextView textView = (TextView) z10.findViewById(R.id.tagsLabel);
            this.f70436f = (EditText) z10.findViewById(R.id.tagsInput);
            textView.setText(Lang.l(Lang.T.STORE_GITHUB_TAGS));
            this.f70436f.setHint(Lang.l(Lang.T.STORE_GITHUB_TAGS_HINT));
            this.f70436f.setText(i().f70429d);
            return z10;
        }

        @Override
        public void q() {
            i i10 = i();
            if (i10 != null) {
                i10.f70429d = s.this.Y1(this.f70436f);
            }
            super.q();
        }

        public k(s sVar, a aVar) {
            this();
        }
    }
}
