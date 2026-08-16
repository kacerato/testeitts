package F3;

import Ic.C2633l;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import e7.C13042a;
import java.util.Comparator;
import r4.C15147a;
import w5.j;

public class a extends EditorPanel {

    public static final String f6475Z = "CompilingPanel";

    public RecyclerView f6476X;

    public C13042a<F3.b, F3.c> f6477Y;

    public class ViewOnTouchListenerC0115a implements View.OnTouchListener {
        public ViewOnTouchListenerC0115a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b implements C13042a.InterfaceC1584a<F3.b, F3.c> {

        public class C0116a extends AbstractViewOnClickListenerC12733a {

            public final F3.b f6480b;

            public class C0117a implements dd.d {
                public C0117a() {
                }

                @Override
                public void onSelected(View v10) {
                    j.l(v10, C0116a.this.f6480b.f6496a.f72511a);
                }
            }

            public class C0118b implements dd.d {
                public C0118b() {
                }

                @Override
                public void onSelected(View v10) {
                    C0116a.this.f6480b.f6496a.f72517g = false;
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    C0116a.this.f6480b.f6496a.f72517g = true;
                }
            }

            public C0116a(final F3.b val$element) {
                this.f6480b = val$element;
            }

            @Override
            public void click(View view) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(new C12908b("Open", new C0117a()));
                if (this.f6480b.f6496a.f72517g) {
                    steppedArrayList.add(new C12908b("Build", new C0118b()));
                } else {
                    steppedArrayList.add(new C12908b("Cancel", new c()));
                }
                Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
            }
        }

        public b() {
        }

        @Override
        public void a(F3.c holder, F3.b element, int position) {
            holder.f6497b.setText(element.f6496a.f72515e);
            int a10 = element.a();
            if (a10 != -1) {
                if (a10 != 1) {
                    if (a10 == 2) {
                        holder.f6498c.setText("Waiting..");
                        holder.f6498c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.MID_TEXT_COLOR)));
                    } else if (a10 == 3) {
                        holder.f6498c.setText("Success");
                        holder.f6498c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.ACCENT_GREEN_DARK)));
                    } else if (a10 != 4) {
                        if (a10 == 5) {
                            holder.f6498c.setText("Canceled");
                            holder.f6498c.setTextColor(AppCompatResources.getColorStateList(a.this.M(), R.color.interface_atl_selected_keyframe));
                        }
                    }
                }
                holder.f6498c.setText("Compiling!");
                holder.f6498c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
            } else {
                if (element.f6496a.f72514d.isEmpty() || !element.f6496a.f72514d.get(0).f84382b.equalsIgnoreCase("Duplicate class name")) {
                    holder.f6498c.setText("Sintax errors!");
                } else {
                    holder.f6498c.setText("Duplicate class name!");
                }
                holder.f6498c.setTextColor(AppCompatResources.getColorStateList(a.this.M(), R.color.colorAccent));
            }
            C2633l.i(holder.f6499d, element.f6496a.g(), a.this.M());
            holder.f6500e.setOnClickListener(new C0116a(element));
        }

        @Override
        public F3.c b(LayoutInflater inflater, ViewGroup parent) {
            return new F3.c(inflater.inflate(R.layout.compiling_panel_item, parent, false));
        }
    }

    public class c implements View.OnClickListener {

        public class C0119a extends SteppedArrayList<C12908b> {

            public class C0120a implements dd.d {
                public C0120a() {
                }

                @Override
                public void onSelected(View v10) {
                    for (JavaMetaInfo javaMetaInfo : d8.j.f84416s) {
                        if (!javaMetaInfo.f72516f && !javaMetaInfo.f72519i) {
                            javaMetaInfo.f72517g = true;
                        }
                    }
                }
            }

            public C0119a() {
                add(new C12908b("Cancel all pending", new C0120a()));
            }
        }

        public c() {
        }

        @Override
        public void onClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new C0119a());
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View v10) {
            String str;
            String str2 = "";
            for (JavaMetaInfo javaMetaInfo : d8.j.f84415r) {
                if (!javaMetaInfo.f72514d.isEmpty()) {
                    String str3 = str2 + "=================\n";
                    if (javaMetaInfo.f72515e.equals("_JContainer")) {
                        str = str3 + "NO CLASS NAME FOUND\n";
                        for (d8.e eVar : javaMetaInfo.f72514d) {
                            if (eVar.f84384d) {
                                str = (str + "" + eVar.h()) + "\n";
                            }
                        }
                    } else {
                        str = str3 + javaMetaInfo.f72515e + " errors!\n";
                        for (d8.e eVar2 : javaMetaInfo.f72514d) {
                            if (eVar2.f84384d) {
                                str = (str + "" + eVar2.h()) + "\n";
                            }
                        }
                    }
                    str2 = str + "=================\n";
                }
            }
            Z6.a.s1(v10, C15147a.e.Below, "Compiler outputs", str2);
        }
    }

    public class e implements Comparator<F3.b> {
        public e() {
        }

        @Override
        public int compare(F3.b o12, F3.b o22) {
            return Integer.compare(o12.a(), o22.a());
        }
    }

    public a() {
        super(null, "Coding");
        super.e1(false);
    }

    private void p1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f6477Y.getItemCount(); i10++) {
            F3.b m10 = this.f6477Y.m(i10);
            if (!d8.j.f84415r.contains(m10.f6496a)) {
                steppedArrayList.add(m10);
            }
        }
        this.f6477Y.s(steppedArrayList);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (JavaMetaInfo javaMetaInfo : d8.j.f84415r) {
            boolean z10 = false;
            for (int i11 = 0; i11 < this.f6477Y.getItemCount(); i11++) {
                if (this.f6477Y.m(i11).f6496a == javaMetaInfo) {
                    z10 = true;
                }
            }
            if (!z10 && ((!javaMetaInfo.f72515e.startsWith("_I") && !javaMetaInfo.f72515e.equals("_JContainer") && !javaMetaInfo.f72515e.equals("R")) || d8.j.f84401d)) {
                if (!C2633l.b(javaMetaInfo.f72511a, ".lua")) {
                    steppedArrayList2.add(new F3.b(javaMetaInfo));
                }
            }
        }
        this.f6477Y.i(steppedArrayList2);
        this.f6477Y.o(new e());
    }

    public static FloatingPanelArea q1(View anchor, C15147a.e side) {
        return C15147a.g(anchor, new a(), side, N7.c.g(240), N7.c.f(300));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.compiling_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0115a());
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f6476X = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f6476X.setItemAnimator(null);
        C13042a<F3.b, F3.c> c13042a = new C13042a<>(M(), new b());
        this.f6477Y = c13042a;
        this.f6476X.setAdapter(c13042a);
        inflate.findViewById(R.id.menu).setOnClickListener(new c());
        inflate.findViewById(R.id.checklist).setOnClickListener(new d());
        p1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }

    @Override
    public void o1() {
        super.o1();
        p1();
    }
}
