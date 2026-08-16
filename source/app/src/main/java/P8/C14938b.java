package p8;

import JAVARuntime.FilesPanelDirectoryMenu;
import android.view.View;
import d8.m;
import dd.C12908b;
import java.io.File;
import java.util.LinkedList;
import o8.InterfaceC14490d;
import w5.g;

public class C14938b extends g {

    public final FilesPanelDirectoryMenu f103658a;

    public class a implements dd.d {

        public final File f103659a;

        public class C1945a implements InterfaceC14490d {

            public final View f103661a;

            public C1945a(final View val$view) {
                this.f103661a = val$view;
            }

            @Override
            public void run() {
                C14938b.this.f103658a.onClick(new JAVARuntime.File(a.this.f103659a.getAbsolutePath(), true));
                C14938b.this.f103658a.onClick(new JAVARuntime.File(a.this.f103659a.getAbsolutePath(), true), this.f103661a);
            }
        }

        public a(final File val$folder) {
            this.f103659a = val$folder;
        }

        @Override
        public void onSelected(View view) {
            m.d(new C1945a(view));
        }
    }

    public class C1946b implements dd.d {

        public final File f103663a;

        public class a implements InterfaceC14490d {

            public final View f103665a;

            public a(final View val$view) {
                this.f103665a = val$view;
            }

            @Override
            public void run() {
                C14938b.this.f103658a.onClick(new JAVARuntime.File(C1946b.this.f103663a.getAbsolutePath(), true));
                C14938b.this.f103658a.onClick(new JAVARuntime.File(C1946b.this.f103663a.getAbsolutePath(), true), this.f103665a);
            }
        }

        public C1946b(final File val$folder) {
            this.f103663a = val$folder;
        }

        @Override
        public void onSelected(View view) {
            m.d(new a(view));
        }
    }

    public C14938b(FilesPanelDirectoryMenu filesPanelDirectoryMenu) {
        this.f103658a = filesPanelDirectoryMenu;
    }

    @Override
    public C12908b a(File folder) {
        FilesPanelDirectoryMenu filesPanelDirectoryMenu = this.f103658a;
        if (filesPanelDirectoryMenu == null) {
            return null;
        }
        C12908b c12908b = null;
        C12908b c12908b2 = null;
        for (String str : filesPanelDirectoryMenu.getMenu().split("/")) {
            if (c12908b2 == null) {
                c12908b2 = new C12908b(str, new a(folder));
            } else {
                c12908b2.f84528a = C12908b.EnumC1575b.Folder;
                c12908b2.f84531d = null;
                c12908b2.f84532e = null;
                C12908b c12908b3 = new C12908b(str, new C1946b(folder));
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
