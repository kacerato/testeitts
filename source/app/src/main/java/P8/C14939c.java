package p8;

import JAVARuntime.FilesPanelFileMenu;
import android.view.View;
import d8.m;
import dd.C12908b;
import java.io.File;
import java.util.LinkedList;
import o8.InterfaceC14490d;
import w5.h;

public class C14939c extends h {

    public final FilesPanelFileMenu f103667a;

    public class a implements dd.d {

        public final File f103668a;

        public class C1947a implements InterfaceC14490d {

            public final View f103670a;

            public C1947a(final View val$view) {
                this.f103670a = val$view;
            }

            @Override
            public void run() {
                C14939c.this.f103667a.onClick(new JAVARuntime.File(a.this.f103668a.getAbsolutePath(), true));
                C14939c.this.f103667a.onClick(new JAVARuntime.File(a.this.f103668a.getAbsolutePath(), true), this.f103670a);
            }
        }

        public a(final File val$file) {
            this.f103668a = val$file;
        }

        @Override
        public void onSelected(View view) {
            m.d(new C1947a(view));
        }
    }

    public class b implements dd.d {

        public final File f103672a;

        public class a implements InterfaceC14490d {

            public final View f103674a;

            public a(final View val$view) {
                this.f103674a = val$view;
            }

            @Override
            public void run() {
                C14939c.this.f103667a.onClick(new JAVARuntime.File(b.this.f103672a.getAbsolutePath(), true));
                C14939c.this.f103667a.onClick(new JAVARuntime.File(b.this.f103672a.getAbsolutePath(), true), this.f103674a);
            }
        }

        public b(final File val$file) {
            this.f103672a = val$file;
        }

        @Override
        public void onSelected(View view) {
            m.d(new a(view));
        }
    }

    public class C1948c implements InterfaceC14490d {

        public final boolean[] f103676a;

        public final String f103677b;

        public C1948c(final boolean[] val$r, final String val$format) {
            this.f103676a = val$r;
            this.f103677b = val$format;
        }

        @Override
        public void run() {
            this.f103676a[0] = C14939c.this.f103667a.filterFormat(this.f103677b);
        }
    }

    public C14939c(FilesPanelFileMenu filesPanelFileMenu) {
        this.f103667a = filesPanelFileMenu;
    }

    @Override
    public boolean a(String format) {
        boolean[] zArr = {false};
        m.d(new C1948c(zArr, format));
        return zArr[0];
    }

    @Override
    public C12908b b(File file) {
        FilesPanelFileMenu filesPanelFileMenu = this.f103667a;
        if (filesPanelFileMenu == null) {
            return null;
        }
        C12908b c12908b = null;
        C12908b c12908b2 = null;
        for (String str : filesPanelFileMenu.getMenu().split("/")) {
            if (c12908b2 == null) {
                c12908b2 = new C12908b(str, new a(file));
            } else {
                c12908b2.f84528a = C12908b.EnumC1575b.Folder;
                c12908b2.f84531d = null;
                c12908b2.f84532e = null;
                C12908b c12908b3 = new C12908b(str, new b(file));
                if (c12908b2.f84530c == null) {
                    c12908b2.f84530c = new LinkedList();
                }
                c12908b2.f84530c.add(c12908b3);
                c12908b2 = c12908b3;
            }
            if (c12908b == null) {
                c12908b = c12908b2;
            }
        }
        return c12908b;
    }
}
