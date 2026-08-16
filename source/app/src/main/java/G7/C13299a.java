package g7;

import Ic.C2633l;
import N7.c;
import a8.C3590b;
import android.view.View;
import android.widget.Toast;
import b9.C3856c;
import b9.C3857d;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Utils.r;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LuaComponent.LuaComponent;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeExecutor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d8.j;
import d8.o;
import dd.C12908b;
import fb.C13201a;
import fb.InterfaceC13202b;
import java.util.List;
import jd.C13823b;
import o8.InterfaceC14487a;
import r4.C15147a;

public class C13299a {

    public class RunnableC1619a implements Runnable {

        public final GameObject f88156b;

        public final View f88157c;

        public final C15147a.e f88158d;

        public class C1620a implements dd.d {
            public C1620a() {
            }

            @Override
            public void onSelected(View view) {
                C3590b c3590b = W7.b.f27309i.f31909a;
                GameObject gameObject = c3590b.f31910a;
                if (gameObject == null) {
                    Toast.makeText(N7.c.t(), new C3867a("Please, select an object", "Nenhum objeto selecionado").toString(), 0).show();
                    return;
                }
                Component component = c3590b.f31911b;
                if (component != null) {
                    gameObject.r(component.mo1248clone());
                }
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
                if (gameObject != null) {
                    gameObject.r(new NoCodeExecutor());
                } else {
                    Toast.makeText(N7.c.t(), new C3867a("Please, select an object", "Nenhum objeto selecionado").toString(), 0).show();
                }
            }
        }

        public class c implements dd.d {

            public final InterfaceC13202b f88161a;

            public c(final InterfaceC13202b val$comp) {
                this.f88161a = val$comp;
            }

            @Override
            public void onSelected(View view) {
                RunnableC1619a.this.f88156b.r(this.f88161a.a());
            }
        }

        public class d implements dd.d {

            public final fb.d f88163a;

            public d(final fb.d val$extra) {
                this.f88163a = val$extra;
            }

            @Override
            public void onSelected(View view) {
                Component a10 = this.f88163a.a(RunnableC1619a.this.f88156b);
                if (a10 == null || !r.a(a10)) {
                    return;
                }
                RunnableC1619a.this.f88156b.r(a10);
            }
        }

        public class e implements dd.d {

            public final String f88165a;

            public class C1621a implements InterfaceC14487a {
                public C1621a() {
                }

                @Override
                public void onError(String error) {
                    Toast.makeText(N7.c.t(), error, 0).show();
                }
            }

            public e(final String val$tittle) {
                this.f88165a = val$tittle;
            }

            @Override
            public void onSelected(View view) {
                j.F0(RunnableC1619a.this.f88156b, this.f88165a, new C1621a());
            }
        }

        public class f implements dd.d {

            public final C3857d f88168a;

            public f(final C3857d val$component) {
                this.f88168a = val$component;
            }

            @Override
            public void onSelected(View view) {
                RunnableC1619a.this.f88156b.r(new LuaComponent(this.f88168a.d()));
            }
        }

        public class g implements dd.d {

            public class C1622a implements Yc.g {
                public C1622a() {
                }

                @Override
                public void b(C13823b pfile) {
                    if (pfile != null) {
                        RunnableC1619a.this.f88156b.r(new JavaComponent(Tc.b.w(pfile.f(), true)));
                    }
                }
            }

            public g() {
            }

            @Override
            public void onSelected(View view) {
                Yc.c.a(C2633l.d(".java"), new C1622a());
            }
        }

        public RunnableC1619a(final GameObject val$destinationObject, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f88156b = val$destinationObject;
            this.f88157c = val$anchor;
            this.f88158d = val$anchorSide;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00f2 A[SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            C12908b c12908b;
            List<o> M10;
            C12908b c12908b2;
            List<C12908b> list;
            List<fb.d> i10;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            if (W7.b.f27309i.f31909a.f31911b != null) {
                steppedArrayList.add(new C12908b(R.drawable.paste_text, Lang.l(Lang.T.PASTE_COPIED), new C1620a()));
            }
            steppedArrayList.add(new C12908b(R.drawable.no_code_v2, "New NoCode (NEW)", new b()));
            for (int i11 = 0; i11 < C13201a.d(); i11++) {
                InterfaceC13202b c10 = C13201a.c(i11);
                if (c10.g()) {
                    try {
                        C12908b b10 = C13299a.b(c10.e().split("/"), steppedArrayList);
                        if (b10 != null) {
                            if (b10.f84530c == null) {
                                b10.f84530c = new SteppedArrayList();
                            }
                            list = b10.f84530c;
                        } else {
                            list = steppedArrayList;
                        }
                        String c11 = c10.c();
                        String h10 = c10.h(EditorSettings.a().translateComponentNames);
                        if (h10 == null) {
                            if (EditorSettings.a().translateComponentNames && (h10 = c10.f()) != null) {
                            }
                            list.add(new C12908b(c11, new c(c10)));
                            i10 = c10.i();
                            if (i10 == null) {
                                for (int i12 = 0; i12 < i10.size(); i12++) {
                                    fb.d dVar = i10.get(i12);
                                    if (dVar != null) {
                                        list.add(new C12908b(dVar.getTittle(), new d(dVar)));
                                    } else {
                                        list.add(new C12908b());
                                    }
                                }
                            }
                        }
                        c11 = h10;
                        list.add(new C12908b(c11, new c(c10)));
                        i10 = c10.i();
                        if (i10 == null) {
                        }
                    } catch (Exception e10) {
                        System.out.println("Failed for item " + c10.f() + " with menu " + c10.e());
                        e10.printStackTrace();
                    }
                }
            }
            if (j.f84393B && (M10 = j.M()) != null && !M10.isEmpty()) {
                for (int i13 = 0; i13 < M10.size(); i13++) {
                    o oVar = M10.get(i13);
                    String[] split = oVar.f84444a.split("/");
                    String str = split[split.length - 1];
                    if (split.length >= 2) {
                        int length = split.length - 1;
                        String[] strArr = new String[length];
                        System.arraycopy(split, 0, strArr, 0, length);
                        c12908b2 = C13299a.b(strArr, steppedArrayList);
                    } else {
                        c12908b2 = null;
                    }
                    (c12908b2 != null ? c12908b2.f84530c : steppedArrayList).add(new C12908b(str + Tc.b.t(oVar.f84446c), new e(str)));
                }
            }
            for (int i14 = 0; i14 < C3856c.p(); i14++) {
                C3857d o10 = C3856c.o(i14);
                String[] split2 = o10.b().split("/");
                if (split2.length >= 2) {
                    int length2 = split2.length - 1;
                    String[] strArr2 = new String[length2];
                    System.arraycopy(split2, 0, strArr2, 0, length2);
                    c12908b = C13299a.b(strArr2, steppedArrayList);
                } else {
                    c12908b = null;
                }
                (c12908b != null ? c12908b.f84530c : steppedArrayList).add(new C12908b(Tc.b.v(o10.d()), new f(o10)));
            }
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.ADD_SCRIPT), new g()));
            Y6.a.F1(this.f88157c, this.f88158d, steppedArrayList);
        }
    }

    public static C12908b b(String[] folders, List<C12908b> itemList) {
        C12908b c12908b = null;
        for (String str : folders) {
            boolean z10 = true;
            if (c12908b != null) {
                int i10 = 0;
                while (true) {
                    if (i10 >= c12908b.f84530c.size()) {
                        z10 = false;
                        break;
                    }
                    C12908b c12908b2 = c12908b.f84530c.get(i10);
                    String str2 = c12908b2.f84529b;
                    if (str2 != null && str2.equalsIgnoreCase(str)) {
                        c12908b = c12908b2;
                        break;
                    }
                    i10++;
                }
                if (!z10) {
                    C12908b c12908b3 = new C12908b(C12908b.EnumC1575b.Folder, str);
                    c12908b.f84530c.add(c12908b3);
                    c12908b = c12908b3;
                }
            } else {
                int i11 = 0;
                while (true) {
                    if (i11 >= itemList.size()) {
                        z10 = false;
                        break;
                    }
                    C12908b c12908b4 = itemList.get(i11);
                    String str3 = c12908b4.f84529b;
                    if (str3 != null && str3.equalsIgnoreCase(str)) {
                        c12908b = c12908b4;
                        break;
                    }
                    i11++;
                }
                if (!z10) {
                    c12908b = new C12908b(C12908b.EnumC1575b.Folder, str);
                    itemList.add(c12908b);
                }
            }
        }
        return c12908b;
    }

    public static void c(View anchor, GameObject destinationObject) {
        d(anchor, C15147a.e.Right, destinationObject);
    }

    public static void d(View anchor, C15147a.e anchorSide, GameObject destinationObject) {
        c.j0(new RunnableC1619a(destinationObject, anchor, anchorSide));
    }
}
