package d6;

import Ic.C2636o;
import JAVARuntime.Runnable;
import Z6.i;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine2.R;
import d8.j;
import id.C13696a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import o4.InterfaceC14482a;
import r4.C15147a;
import rc.C15169a;
import ug.C15608a;
import w6.C15971b;
import zg.k;

@Deprecated
public class C12876a extends EditorPanel {

    public static final String f84114d0 = "NewEmptyProject";

    public static final AtomicBoolean f84115e0 = new AtomicBoolean();

    public final float f84116X;

    public FloatingPanelArea f84117Y;

    public View f84118Z;

    public boolean f84119a0;

    public InterfaceC14482a f84120b0;

    public InterfaceC14482a f84121c0;

    public class C1504a extends AbstractViewOnClickListenerC12733a {

        public final EditText f84122b;

        public C1504a(final EditText val$projectName) {
            this.f84122b = val$projectName;
        }

        @Override
        public void click(View b10) {
            C12876a.this.u1(this.f84122b.getText().toString(), b10);
        }
    }

    public class b implements Runnable {

        public final C12878c f84124b;

        public final String f84125c;

        public b(final C12878c val$downloadProgress, final String val$finalProjectTittle) {
            this.f84124b = val$downloadProgress;
            this.f84125c = val$finalProjectTittle;
        }

        @Override
        public void run() {
            C12876a.this.v1(this.f84124b, this.f84125c);
        }
    }

    public class c implements C13696a.d {

        public final String f84127a;

        public c(final String val$tittle) {
            this.f84127a = val$tittle;
        }

        @Override
        public void b() {
            C12876a.this.y1(this.f84127a);
            j.v0();
            com.itsmagic.engine.Core.Components.ProjectController.a.f0(C12876a.this.M(), this.f84127a);
            C12876a.this.w1(new File(W7.b.f27306f.f2458a.n(C12876a.this.M()) + "/" + this.f84127a));
            C12876a.this.x1();
        }
    }

    public class d implements Runnable {

        public final World f84129b;

        public d(final World val$world) {
            this.f84129b = val$world;
        }

        @Override
        public void run() {
            C12876a.f84115e0.set(false);
            C12876a.this.A1(this.f84129b);
        }
    }

    public class e implements Runnable {

        public final World f84131b;

        public class C1505a implements a.k {
            public C1505a() {
            }

            @Override
            public World onFailed() {
                C13696a.q("/Files/Worlds/", "World", C12876a.this.M());
                World world = e.this.f84131b;
                world.fileName = "World.world";
                world.folder = "/Files/Worlds/";
                world.createExampleWhenOpen = true;
                return world;
            }

            @Override
            public void onSuccess() {
            }
        }

        public e(final World val$world) {
            this.f84131b = val$world;
        }

        @Override
        public void run() {
            try {
                World world = this.f84131b;
                com.itsmagic.engine.Engines.Engine.World.a.I(world.folder, world.fileName, true, new C1505a());
            } catch (Exception e10) {
                e10.printStackTrace();
                C12876a.this.A1(this.f84131b);
            }
        }
    }

    public C12876a(float wantedHeight, InterfaceC14482a parentTrigger) {
        super(null, Lang.l(Lang.T.NEW_EMPTY_PROJECT_PANEL));
        this.f84119a0 = true;
        this.f84116X = wantedHeight;
        this.f84120b0 = parentTrigger;
    }

    public static FloatingPanelArea z1(InterfaceC14482a parentTrigger, View anchor, C15147a.e anchorSide) {
        float g10 = N7.c.g(280);
        float f10 = N7.c.f(250);
        C12876a c12876a = new C12876a(f10, parentTrigger);
        FloatingPanelArea n10 = C15147a.n(c12876a, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        c12876a.f84117Y = n10;
        return n10;
    }

    public final void A1(World world) {
        K8.a.B(new e(world));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.new_empty_project, (ViewGroup) null);
        this.f84118Z = inflate;
        EditText editText = (EditText) inflate.findViewById(R.id.project_name);
        editText.setHint(Lang.l(Lang.T.TEMPLATE_VIEWER_PROJECT_NAME));
        this.f84118Z.findViewById(R.id.ad_layout).setVisibility(8);
        ((TextView) this.f84118Z.findViewById(R.id.name_project_text)).setText(Lang.l(Lang.T.TEMPLATE_VIEWER_NAME_PROJECT_TEXT));
        Button button = (Button) this.f84118Z.findViewById(R.id.create);
        button.setText(Lang.l(Lang.T.CREATE));
        button.setOnClickListener(new C1504a(editText));
        return this.f84118Z;
    }

    @Override
    public void G0() {
        N7.c.D().s0(this);
        InterfaceC14482a interfaceC14482a = this.f84121c0;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
    }

    @Override
    public EditorPanel k() {
        return new C12876a(this.f84116X, this.f84120b0);
    }

    @Override
    public void n1() {
        super.n1();
        if (C15169a.q()) {
            this.f84117Y.J1(1.0f);
            N7.c.D().u(this);
        } else {
            this.f84117Y.J1(this.f84116X);
            N7.c.D().s0(this);
        }
    }

    public final void u1(String projectTittle, View anchor) {
        if (projectTittle.equals("")) {
            i.w1(anchor, C15147a.e.Below, "Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameempty), new i.g());
            return;
        }
        String K10 = Tc.b.K(projectTittle);
        File file = new File(W7.b.f27306f.f2458a.n(M()) + "/" + K10);
        if (file.exists()) {
            i.v1(anchor, C15147a.e.Below, M().getResources().getString(R.string.activity_projectbrowser_nameexists), new i.g());
            return;
        }
        if (K10.equals("Files")) {
            i.v1(anchor, C15147a.e.Below, "Files is a reserved name, please try another", new i.g());
            return;
        }
        if (!file.mkdirs()) {
            i.v1(anchor, C15147a.e.Below, M().getResources().getString(R.string.activity_projectbrowser_permissionerror), new i.g());
            return;
        }
        f84115e0.set(true);
        R0();
        InterfaceC14482a interfaceC14482a = this.f84120b0;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
        for (int i10 = 0; i10 < N7.c.D().M(); i10++) {
            try {
                for (Panel panel : N7.c.D().O(i10).panelList) {
                    if (panel.M() instanceof C15971b) {
                        panel.o0();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        N7.c.l(0.5f, new b(C12878c.r1(), K10));
    }

    public final void v1(C12878c downloadProgress, String tittle) {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0(tittle);
        com.itsmagic.engine.Core.Components.ProjectController.a.c0().b(tittle, M());
        C2636o.e("2.0", new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(tittle) + "/_EDITOR/mj.bin"));
        downloadProgress.p1(0, "Preparing project");
        if (this.f84119a0) {
            downloadProgress.p1(0, "Installing java");
            C13696a.n(new c(tittle));
        } else {
            x1();
            downloadProgress.R0();
        }
    }

    public final void w1(File destinationFolder) {
        try {
            InputStream open = N7.c.t().getAssets().open("Editor/EmptyProject/Files.zip");
            File file = new File(destinationFolder, "temp.zip");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open.read(bArr);
                    if (read <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileOutputStream.close();
                C15608a c15608a = new C15608a(file);
                try {
                    if (!destinationFolder.exists()) {
                        destinationFolder.mkdirs();
                    }
                    byte[] bArr2 = new byte[1024];
                    for (Bg.j jVar : c15608a.R()) {
                        File file2 = new File(destinationFolder, jVar.j());
                        if (!jVar.s()) {
                            File parentFile = file2.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            k S10 = c15608a.S(jVar);
                            try {
                                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                                while (true) {
                                    try {
                                        int read2 = S10.read(bArr2);
                                        if (read2 <= 0) {
                                            break;
                                        } else {
                                            fileOutputStream2.write(bArr2, 0, read2);
                                        }
                                    } catch (Throwable th2) {
                                        try {
                                            fileOutputStream2.close();
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                        }
                                        throw th2;
                                    }
                                }
                                fileOutputStream2.close();
                                S10.close();
                            } catch (Throwable th4) {
                                if (S10 != null) {
                                    try {
                                        S10.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                }
                                throw th4;
                            }
                        } else if (!file2.exists()) {
                            file2.mkdirs();
                        }
                    }
                    c15608a.close();
                    file.delete();
                    open.close();
                } finally {
                }
            } catch (Throwable th6) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th7) {
                    th6.addSuppressed(th7);
                }
                throw th6;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public final void x1() {
        World world = new World();
        world.fileName = "World.world";
        world.folder = "/Files/Worlds/";
        K8.a.I(new d(world));
    }

    public void y1(String projectName) {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0("");
        N7.c.D().s0(this);
    }
}
