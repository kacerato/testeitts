package P3;

import C5.b;
import D5.h;
import Z6.g;
import Z6.i;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class b extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {
        public a() {
        }

        @Override
        public Variable get() {
            String str = EditorSettings.a().githubToken;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            String str;
            EditorSettings.a().githubToken = (variable == null || (str = variable.str_value) == null) ? "" : str.trim();
            b.this.B();
        }
    }

    public class C0501b implements D5.a {
        public C0501b() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            b.this.I();
        }
    }

    public class c implements h {

        public final List f20669a;

        public c(final List val$organizations) {
            this.f20669a = val$organizations;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            int i10 = variable == null ? -1 : variable.int_value;
            if (i10 <= 0 || i10 >= this.f20669a.size()) {
                EditorSettings.a().githubSelectedOrganization = "";
            } else {
                EditorSettings.a().githubSelectedOrganization = (String) this.f20669a.get(i10);
            }
            b.this.B();
        }
    }

    public class d implements g.c {

        public final String f20671a;

        public class a implements Runnable {

            public final g f20673b;

            public class RunnableC0502a implements Runnable {
                public RunnableC0502a() {
                }

                @Override
                public void run() {
                    a.this.f20673b.q1();
                    b.this.A();
                    Z6.h.y1(Lang.l(Lang.T.SUCCESS), Lang.l(Lang.T.STORE_GITHUB_ORGANIZATIONS_REFRESHED));
                }
            }

            public class RunnableC0503b implements Runnable {

                public final StoreGitHubPublisher.PublishException f20676b;

                public RunnableC0503b(final StoreGitHubPublisher.PublishException val$e) {
                    this.f20676b = val$e;
                }

                @Override
                public void run() {
                    a.this.f20673b.q1();
                    i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), (this.f20676b.getMessage() == null || this.f20676b.getMessage().trim().isEmpty()) ? Lang.l(Lang.T.STORE_GITHUB_ERROR_GENERIC) : this.f20676b.getMessage().trim());
                }
            }

            public a(final g val$popup) {
                this.f20673b = val$popup;
            }

            @Override
            public void run() {
                try {
                    List<String> w10 = StoreGitHubPublisher.w(d.this.f20671a);
                    EditorSettings.a().githubOrganizationsCache = new SteppedArrayList(w10);
                    String J10 = b.this.J(EditorSettings.a().githubSelectedOrganization);
                    if (!J10.isEmpty() && !w10.contains(J10)) {
                        EditorSettings.a().githubSelectedOrganization = "";
                    }
                    b.this.B();
                    N7.c.j0(new RunnableC0502a());
                } catch (StoreGitHubPublisher.PublishException e10) {
                    N7.c.j0(new RunnableC0503b(e10));
                }
            }
        }

        public d(final String val$token) {
            this.f20671a = val$token;
        }

        @Override
        public void a(g popup, FloatingPanelArea area) {
            new Thread(new a(popup)).start();
        }
    }

    public b() {
        super(Lang.l(Lang.T.GITHUB));
    }

    public final C5.b F() {
        List<String> G10 = G();
        return new C5.b(new c(G10), H(G10), G10, b.a.SLDropdown, Lang.l(Lang.T.STORE_GITHUB_ORGANIZATION));
    }

    public final List<String> G() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(Lang.l(Lang.T.STORE_GITHUB_ORGANIZATION_NONE));
        List<String> list = EditorSettings.a().githubOrganizationsCache;
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                String str = list.get(i10);
                if (str != null) {
                    String trim = str.trim();
                    if (!trim.isEmpty() && !steppedArrayList.contains(trim)) {
                        steppedArrayList.add(trim);
                    }
                }
            }
        }
        String J10 = J(EditorSettings.a().githubSelectedOrganization);
        if (!J10.isEmpty() && !steppedArrayList.contains(J10)) {
            steppedArrayList.add(J10);
        }
        return steppedArrayList;
    }

    public final String H(List<String> organizations) {
        String J10 = J(EditorSettings.a().githubSelectedOrganization);
        if (J10.isEmpty()) {
            return Lang.l(Lang.T.STORE_GITHUB_ORGANIZATION_NONE);
        }
        if (organizations != null) {
            organizations.contains(J10);
        }
        return J10;
    }

    public final void I() {
        String J10 = J(EditorSettings.a().githubToken);
        if (J10.isEmpty()) {
            i.y1(Lang.l(Lang.T.STORE_GITHUB_WARNING_TITLE), Lang.l(Lang.T.STORE_GITHUB_TOKEN_MISSING));
        } else {
            g.s1(Lang.l(Lang.T.STORE_GITHUB_PROGRESS_AUTHENTICATING), new d(J10));
        }
    }

    public final String J(String value) {
        return value == null ? "" : value.trim();
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(Lang.l(Lang.T.STORE_GITHUB_SETTINGS_NOTE), 12));
        steppedArrayList.add(new C5.b(new a(), Lang.l(Lang.T.STORE_GITHUB_TOKEN), b.a.SLPassword));
        steppedArrayList.add(new C5.b(Lang.l(Lang.T.STORE_GITHUB_SETTINGS_TOKEN_HELP), 12));
        steppedArrayList.add(F());
        steppedArrayList.add(new C5.b(Lang.l(Lang.T.STORE_GITHUB_SETTINGS_ORGANIZATION_HELP), 12));
        steppedArrayList.add(new C5.b(new C0501b(), Lang.l(Lang.T.STORE_GITHUB_REFRESH_ORGANIZATIONS)));
        return steppedArrayList;
    }
}
