package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import Z6.g;
import Z6.i;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.s;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.u;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class t {

    public class a implements u.j {

        public final String f70438a;

        public final ProjectVersion f70439b;

        public a(final String val$projectRootPath, final ProjectVersion val$projectVersion) {
            this.f70438a = val$projectRootPath;
            this.f70439b = val$projectVersion;
        }

        @Override
        public void a(u.h data) {
            t.i(this.f70438a, this.f70439b, data);
        }

        @Override
        public void onCancel() {
        }
    }

    public class b implements u.j {

        public final String f70440a;

        public final String f70441b;

        public final boolean f70442c;

        public final ProjectVersion f70443d;

        public class a implements s.f {
            public a() {
            }

            @Override
            public void a(StoreGitHubPublisher.r result) {
                b bVar = b.this;
                ProjectVersion projectVersion = bVar.f70443d;
                if (projectVersion == null || result == null) {
                    return;
                }
                projectVersion.storeGitHubRepositoryUrl = result.f70159c;
                projectVersion.storeGitHubRepositoryOwner = result.f70157a;
                projectVersion.storeGitHubRepositoryName = result.f70158b;
                x8.c.e(bVar.f70441b, projectVersion, N7.c.t());
            }
        }

        public b(final String val$projectRootPath, final String val$defaultName, final boolean val$isTemplate, final ProjectVersion val$projectVersion) {
            this.f70440a = val$projectRootPath;
            this.f70441b = val$defaultName;
            this.f70442c = val$isTemplate;
            this.f70443d = val$projectVersion;
        }

        @Override
        public void a(u.h data) {
            s.a2(data, this.f70440a, this.f70441b, this.f70442c, new a());
        }

        @Override
        public void onCancel() {
        }
    }

    public class c implements g.c {

        public final StoreGitHubPublisher.u f70445a;

        public class a implements Runnable {

            public final Z6.g f70446b;

            public class C1073a implements StoreGitHubPublisher.o {

                public class RunnableC1074a implements Runnable {

                    public final StoreGitHubPublisher.p f70449b;

                    public final int f70450c;

                    public final int f70451d;

                    public RunnableC1074a(final StoreGitHubPublisher.p val$stage, final int val$current, final int val$total) {
                        this.f70449b = val$stage;
                        this.f70450c = val$current;
                        this.f70451d = val$total;
                    }

                    @Override
                    public void run() {
                        a.this.f70446b.f1(t.c(this.f70449b, this.f70450c, this.f70451d));
                    }
                }

                public C1073a() {
                }

                @Override
                public void a(StoreGitHubPublisher.p stage, int current, int total) {
                    N7.c.j0(new RunnableC1074a(stage, current, total));
                }
            }

            public class b implements Runnable {
                public b() {
                }

                @Override
                public void run() {
                    a.this.f70446b.q1();
                    Z6.h.y1(Lang.l(Lang.T.SUCCESS), Lang.l(Lang.T.STORE_GITHUB_UPDATE_SUCCESS));
                }
            }

            public class RunnableC1075c implements Runnable {

                public final StoreGitHubPublisher.PublishException f70454b;

                public RunnableC1075c(final StoreGitHubPublisher.PublishException val$e) {
                    this.f70454b = val$e;
                }

                @Override
                public void run() {
                    a.this.f70446b.q1();
                    Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), (this.f70454b.getMessage() == null || this.f70454b.getMessage().trim().isEmpty()) ? Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC) : this.f70454b.getMessage().trim());
                }
            }

            public a(final Z6.g val$popup) {
                this.f70446b = val$popup;
            }

            @Override
            public void run() {
                try {
                    StoreGitHubPublisher.K(N7.c.t(), c.this.f70445a, new C1073a());
                    N7.c.j0(new b());
                } catch (StoreGitHubPublisher.PublishException e10) {
                    e10.printStackTrace();
                    N7.c.j0(new RunnableC1075c(e10));
                }
            }
        }

        public c(final StoreGitHubPublisher.u val$request) {
            this.f70445a = val$request;
        }

        @Override
        public void a(Z6.g popup, FloatingPanelArea area) {
            new Thread(new a(popup)).start();
        }
    }

    public class d implements i.h {
        @Override
        public void a(i.f dialog) {
            dialog.dismiss();
            M3.a.w1(Lang.l(Lang.T.GITHUB));
        }
    }

    public static class e {

        public static final int[] f70456a;

        static {
            int[] iArr = new int[StoreGitHubPublisher.p.values().length];
            f70456a = iArr;
            try {
                iArr[StoreGitHubPublisher.p.Authenticating.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70456a[StoreGitHubPublisher.p.UploadingProjectFiles.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static String c(StoreGitHubPublisher.p stage, int current, int total) {
        if (e.f70456a[stage.ordinal()] == 1) {
            return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_AUTHENTICATING);
        }
        return Lang.l(Lang.T.STORE_GITHUB_PROGRESS_UPLOADING_PROJECT_FILES) + " " + current + "/" + total;
    }

    public static void d(String description) {
        Z6.i.z1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), description, new d());
    }

    public static void e(String projectRootPath, String defaultName, List<String> initialSelectedPaths, boolean isTemplate, ProjectVersion projectVersion) {
        if ((EditorSettings.a().githubToken == null ? "" : EditorSettings.a().githubToken.trim()).isEmpty()) {
            d(Lang.l(Lang.T.STORE_GITHUB_TOKEN_MISSING));
        } else {
            u.P1(null, projectRootPath, initialSelectedPaths, new b(projectRootPath, defaultName, isTemplate, projectVersion));
        }
    }

    public static void f(String projectRootPath, String defaultName, ProjectVersion projectVersion) {
        e(projectRootPath, defaultName, new SteppedArrayList(), true, projectVersion);
    }

    public static void g(String projectRootPath, String defaultName, ProjectVersion projectVersion) {
        if ((EditorSettings.a().githubToken == null ? "" : EditorSettings.a().githubToken.trim()).isEmpty()) {
            d(Lang.l(Lang.T.STORE_GITHUB_TOKEN_MISSING));
        } else if (projectVersion == null || !projectVersion.e()) {
            Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC));
        } else {
            u.P1(null, projectRootPath, new SteppedArrayList(), new a(projectRootPath, projectVersion));
        }
    }

    public static void h(String projectRootPath, String defaultName, List<String> initialSelectedPaths) {
        e(projectRootPath, defaultName, initialSelectedPaths, false, null);
    }

    public static void i(String projectRootPath, ProjectVersion projectVersion, u.h data) {
        String trim = EditorSettings.a().githubToken == null ? "" : EditorSettings.a().githubToken.trim();
        StoreGitHubPublisher.u uVar = new StoreGitHubPublisher.u();
        uVar.f70165a = trim;
        uVar.f70166b = projectRootPath;
        uVar.f70169e = projectVersion.storeGitHubRepositoryUrl;
        uVar.f70167c = projectVersion.storeGitHubRepositoryOwner;
        uVar.f70168d = projectVersion.storeGitHubRepositoryName;
        uVar.f70170f = data;
        Z6.g.s1(Lang.l(Lang.T.STORE_GITHUB_PROGRESS_AUTHENTICATING), new c(uVar));
    }
}
