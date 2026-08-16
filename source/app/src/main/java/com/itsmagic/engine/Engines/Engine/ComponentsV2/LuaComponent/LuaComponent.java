package com.itsmagic.engine.Engines.Engine.ComponentsV2.LuaComponent;

import C5.m;
import Ic.C2629h;
import Ic.C2632k;
import Ic.I;
import JAVARuntime.Matcap;
import K6.g;
import android.content.Context;
import android.view.View;
import b3.s;
import b9.C3855b;
import b9.C3856c;
import b9.C3857d;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import n4.C14351c;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.OneArgFunction;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;

public class LuaComponent extends Component {

    public static final String f73664K = "LuaComponent";

    public static final Class f73665L = LuaComponent.class;

    public String f73666E;

    public C3857d f73667F;

    public boolean f73668G;

    public Globals f73669H;

    public LuaValue f73670I;

    public JAVARuntime.LuaComponent f73671J;

    @Expose
    private String className;

    @Expose
    private String filePath;

    @Expose
    public List<Variable> globalVariables;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return LuaComponent.f73665L;
        }

        @Override
        public String c() {
            return LuaComponent.f73664K;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class b extends OneArgFunction {
        public b() {
        }

        @Override
        public LuaValue call(LuaValue arg) {
            LuaComponent.this.toJAVARuntime().print(arg.tojstring());
            return LuaValue.NIL;
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                N7.c.D().B0(new C14351c(LuaComponent.this.filePath));
            }
        }

        public c() {
            add(new C12908b("Edit script", new a()));
        }
    }

    public class d extends SteppedArrayList<m> {

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View view) {
                N7.c.D().B0(new C14351c(LuaComponent.this.filePath));
            }
        }

        public d() {
            add(new m(R.drawable.edit_script_2, new a()));
        }
    }

    static {
        C13201a.b(new a());
    }

    public LuaComponent() {
        super(f73664K);
        this.filePath = "";
        this.globalVariables = null;
        this.className = "";
        this.f73668G = false;
        this.f73669H = null;
        this.f73670I = null;
    }

    private void build() {
        try {
            Globals g10 = C3856c.g();
            this.f73669H = g10;
            LuaValue load = g10.load(this.f73667F.f().toString());
            this.f73670I = load;
            load.call();
            this.f73669H.set(g.f10908h, CoerceJavaToLua.coerce(this.f79250n.W1()));
            this.f73669H.set("myTransform", CoerceJavaToLua.coerce(this.f79250n.J0().b4()));
            this.f73669H.set("myComponent", CoerceJavaToLua.coerce(toJAVARuntime()));
            overridePrint();
            restoreVariables();
            reloadInspector();
        } catch (Throwable th2) {
            dumpException("compiler", th2);
        }
    }

    private void callMethod(String name) {
        try {
            C3856c.i(name, this.f73669H, new Object[0]);
        } catch (Throwable th2) {
            dumpException(name, th2);
        }
    }

    private String convert(String c10) {
        return c10;
    }

    private void dumpException(String method, Throwable throwable) {
        if (!J4.d.O1()) {
            J4.d.E1();
            return;
        }
        String message = getMessage(throwable);
        int line = getLine(throwable);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(J4.d.q2("E/"));
        sb2.append(J4.d.F1("LUA"));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(" [");
        sb3.append(getClassName());
        sb3.append(".lua] at object ");
        GameObject gameObject = this.f79250n;
        sb3.append(gameObject != null ? gameObject.getName() : "Unknown");
        sb2.append(J4.d.q2(sb3.toString()));
        steppedArrayList.add(sb2.toString());
        steppedArrayList.add(J4.d.q2("at " + method + s.f32937c));
        steppedArrayList.add(J4.d.q2("Line[" + line + "] " + message));
        List<String> x22 = J4.d.x2(throwable);
        for (int i10 = 0; i10 < x22.size(); i10++) {
            String U10 = Tc.b.U((Sm.b.f23785c + x22.get(i10)).replace(".java.lang.", "").replace("java.lang.", "").replace("java.lang", "").replace(".java.", "").replace("java.", "").replace(".java", ""), SuffixConstants.EXTENSION_java, "lua");
            if (!U10.trim().isEmpty()) {
                steppedArrayList.add(U10);
            }
        }
        steppedArrayList.add(J4.d.q2("E/^^^"));
        J4.d.W1(steppedArrayList);
    }

    private String getClassName() {
        String str = this.className;
        return (str == null || str.isEmpty()) ? Tc.b.w(this.filePath, true) : this.className;
    }

    private int getLine(Throwable throwable) {
        String[] split = throwable.getMessage().split("\n");
        String substring = split[split.length - 1].substring(1);
        return Nc.b.w1(substring.substring(0, substring.indexOf(" ")).trim());
    }

    private String getMessage(Throwable throwable) {
        String[] split = throwable.getMessage().split("\n");
        String substring = split[split.length - 1].substring(1);
        return convert(substring.substring(substring.indexOf(" ")).trim());
    }

    private void overridePrint() {
        this.f73669H.set(Context.PRINT_SERVICE, new b());
    }

    private void populateFilesFromList(List<Variable> list, C2632k dependency) {
        String str;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Variable variable = list.get(i10);
            if (variable != null) {
                Variable.a aVar = variable.type;
                if (aVar == Variable.a.Matcap) {
                    dependency.f9114a.add(Matcap.fromJson(variable.str_value).getTextureFile());
                } else if ((aVar == Variable.a.File || aVar == Variable.a.InspectorString) && (str = variable.str_value) != null && !str.isEmpty() && !variable.str_value.startsWith("@@ASSET@@")) {
                    dependency.f9114a.add(variable.str_value);
                }
                populateFilesFromList(variable.c(), dependency);
            }
        }
    }

    private void reload() {
        this.f73666E = null;
        this.f73667F = null;
        this.f73668G = false;
        this.f73669H = null;
    }

    private void reloadFilesFromList(List<Variable> list, BuildDictionary dictionary) {
        String str;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Variable variable = list.get(i10);
            if (variable != null) {
                Variable.a aVar = variable.type;
                if (aVar == Variable.a.Matcap) {
                    Matcap fromJson = Matcap.fromJson(variable.str_value);
                    BuildDicFile f10 = dictionary.f(fromJson.getTextureFile());
                    if (f10 != null) {
                        dictionary.h("LuaComponent: REPLACING " + fromJson.getTextureFile() + " TO " + f10.b());
                        fromJson.setTextureFile(f10.b());
                        variable.str_value = fromJson.toJson();
                    } else {
                        dictionary.h("LuaComponent: REPLACING FAILED " + variable.str_value);
                    }
                } else if ((aVar == Variable.a.File || aVar == Variable.a.InspectorString) && (str = variable.str_value) != null && !str.isEmpty() && !variable.str_value.startsWith("@@ASSET@@")) {
                    BuildDicFile f11 = dictionary.f(variable.str_value);
                    if (f11 != null) {
                        dictionary.h("LuaComponent: REPLACING " + variable.str_value + " TO " + f11.b());
                        variable.str_value = f11.b();
                    } else {
                        dictionary.h("LuaComponent: REPLACING FAILED " + variable.str_value);
                    }
                }
                reloadFilesFromList(variable.c(), dictionary);
            }
        }
    }

    private void restoreVariables() {
        if (this.globalVariables == null || this.f73670I == null) {
            return;
        }
        C3855b.f(this.f73667F.e(), this.globalVariables, this.f73670I, this.f79250n, this.f73669H);
    }

    private void storeVariables() {
        if (this.f73670I != null) {
            this.globalVariables = C3855b.h(this.f73667F.e(), this.f73670I, this.f79250n, this.f73669H);
        }
    }

    private void updateCode() {
        String str = this.f73666E;
        if ((str == null || !str.equals(this.filePath)) && !C3856c.j()) {
            String str2 = this.filePath;
            this.f73666E = str2;
            C3857d f10 = C3856c.f(str2);
            this.f73667F = f10;
            if (f10 == null || f10.f().g0()) {
                return;
            }
            build();
        }
    }

    @Override
    public void callFunction(String functionName, Object... args) {
        super.callFunction(functionName, args);
        Globals globals = this.f73669H;
        if (globals != null) {
            try {
                C3856c.i(functionName, globals, args);
            } catch (Throwable th2) {
                dumpException(functionName, th2);
            }
        }
    }

    public List<Variable> cloneGV() {
        LinkedList linkedList = new LinkedList();
        C3857d c3857d = this.f73667F;
        if (c3857d != null) {
            for (Variable variable : C3855b.h(c3857d.e(), this.f73670I, this.f79250n, this.f73669H)) {
                if (variable != null) {
                    linkedList.add(variable.a());
                }
            }
        } else {
            List<Variable> list = this.globalVariables;
            if (list != null) {
                for (Variable variable2 : list) {
                    if (variable2 != null) {
                        linkedList.add(variable2.a());
                    }
                }
            }
        }
        return linkedList;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.filePath;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.filePath);
        }
        populateFilesFromList(this.globalVariables, c2632k);
        return c2632k;
    }

    public Globals getGlobals() {
        return this.f73669H;
    }

    @Override
    public int getIconResource() {
        return R.drawable.lua;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_javacomponent;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (this.f73670I != null) {
            linkedList.addAll(C3855b.b(this.f73667F.e(), this.f73670I, context, this.f73669H, this.f79250n));
        }
        return linkedList;
    }

    @Override
    public List<m> getInspectorExtras() {
        return new d();
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new c();
    }

    public LuaValue getLuaInstance() {
        return this.f73670I;
    }

    @Override
    public String getTitle() {
        return getClassName();
    }

    @Override
    public Component.e getType() {
        return Component.e.LuaComponent;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        reload();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject != null) {
            updateCode();
            if (this.f73670I == null || K8.a.f10989t <= 1 || !c8.b.k()) {
                return;
            }
            if (this.f73668G) {
                callMethod("doRepeat");
            } else {
                callMethod("doStart");
                this.f73668G = true;
            }
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if ((event instanceof I) && ((I) event).f9031a.equals(this.filePath)) {
            reload();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.filePath;
        if (str != null && !str.isEmpty() && !this.filePath.startsWith("@@ASSET@@") && (f10 = dictionary.f(this.filePath)) != null) {
            this.className = Tc.b.w(this.filePath, true);
            dictionary.h("LuaComponent: REPLACING " + this.filePath + " TO " + f10.b());
            this.filePath = f10.b();
        }
        if (this.globalVariables != null) {
            dictionary.h("LuaComponent: global_variables size " + this.globalVariables.size());
        } else {
            dictionary.h("LuaComponent: global_variables null");
        }
        reloadFilesFromList(this.globalVariables, dictionary);
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73671J = (JAVARuntime.LuaComponent) run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.LuaComponent luaComponent = this.f73671J;
        if (luaComponent != null) {
            return luaComponent;
        }
        JAVARuntime.LuaComponent luaComponent2 = new JAVARuntime.LuaComponent(this);
        this.f73671J = luaComponent2;
        return luaComponent2;
    }

    @Override
    public boolean willCallFunction(String functionName, Object... args) {
        return true;
    }

    @Override
    public Component mo1248clone() {
        LuaComponent luaComponent = new LuaComponent(this.filePath, cloneGV());
        luaComponent.className = this.className;
        return luaComponent;
    }

    public LuaComponent(String filePath) {
        super(f73664K);
        this.globalVariables = null;
        this.className = "";
        this.f73668G = false;
        this.f73669H = null;
        this.f73670I = null;
        this.filePath = filePath;
    }

    public LuaComponent(String filePath, List<Variable> globalVariables) {
        super(f73664K);
        this.className = "";
        this.f73668G = false;
        this.f73669H = null;
        this.f73670I = null;
        this.filePath = filePath;
        this.globalVariables = globalVariables;
    }
}
