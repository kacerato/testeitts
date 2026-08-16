package com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent;

import C5.b;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import JAVARuntime.AutoWired;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.ComponentInspector;
import JAVARuntime.Matcap;
import JAVARuntime.Singleton;
import JAVARuntime.SpatialObject;
import P8.a;
import android.content.Context;
import android.view.View;
import c8.b;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import j9.C13813a;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ConcurrentModificationException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import n4.C14351c;
import o8.InterfaceC14488b;
import o8.InterfaceC14490d;

public class JavaComponent extends Component implements Serializable {

    public static final String f73371F1 = "JavaComponent";

    public static final Class f73372H1 = JavaComponent.class;

    public final InterfaceC14490d f73373D0;

    public JAVARuntime.Component f73374E;

    public Class f73375F;

    public JavaMetaInfo.a f73376G;

    public JavaMetaInfo f73377H;

    public final List<Field> f73378I;

    public final List<Field> f73379J;

    public final List<Field> f73380K;

    public List<eb.g> f73381L;

    public boolean f73382M;

    public boolean f73383N;

    public final AtomicBoolean f73384O;

    public String f73385P;

    public final InterfaceC14490d f73386Q;

    public final InterfaceC14490d f73387R;

    public final InterfaceC14490d f73388S;

    public final InterfaceC14490d f73389T;

    public final InterfaceC14490d f73390U;

    public final InterfaceC14490d f73391V;

    public final InterfaceC14490d f73392W;

    public final InterfaceC14490d f73393X;

    public final InterfaceC14490d f73394Y;

    public boolean f73395Z;

    public final y f73396b1;

    @Expose
    public String className;

    @Expose
    public List<Variable> global_variables;

    public final w f73397i1;

    public final x f73398m1;

    public final InterfaceC14490d f73399q0;

    public final z f73400q1;

    public final InterfaceC14490d f73401v0;

    public final A f73402v1;

    public final B f73403y1;

    public class C12764a implements InterfaceC14490d {
        public C12764a() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.onDetach();
            }
        }
    }

    public class C12765b implements InterfaceC14488b {

        public final Method f73415a;

        public final Object[] f73416b;

        public C12765b(final Method val$method, final Object[] val$args) {
            this.f73415a = val$method;
            this.f73416b = val$args;
        }

        @Override
        public boolean run() {
            try {
                int length = this.f73415a.getParameterTypes().length;
                Object[] objArr = this.f73416b;
                if (objArr != null && length == objArr.length) {
                    this.f73415a.invoke(JavaComponent.this.f73374E, this.f73416b);
                    return true;
                }
                if (length != 0) {
                    return false;
                }
                this.f73415a.invoke(JavaComponent.this.f73374E, null);
                return true;
            } catch (IllegalAccessException e10) {
                e = e10;
                if (e.getCause() == null && J4.d.O1()) {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    steppedArrayList.add(J4.d.q2("---------------"));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Call function failed for ");
                    GameObject gameObject = JavaComponent.this.f79250n;
                    sb2.append(gameObject != null ? gameObject.getName() : "Unknown");
                    steppedArrayList.add(J4.d.q2(sb2.toString()));
                    steppedArrayList.addAll(J4.d.w2(e));
                    steppedArrayList.add(J4.d.q2("---------------"));
                    J4.d.W1(steppedArrayList);
                } else {
                    J4.d.E1();
                }
                return false;
            } catch (InvocationTargetException e11) {
                e = e11;
                if (e.getCause() == null) {
                }
                J4.d.E1();
                return false;
            }
        }
    }

    public class c extends a {
        public c() {
        }

        @Override
        public boolean c(Field field) {
            return true;
        }
    }

    public class d implements o8.g {
        public d() {
        }

        @Override
        public void a(JAVARuntime.Component component, Class classAddress, JavaMetaInfo javaMetaInfo) {
            if (component == null || classAddress == null) {
                return;
            }
            JavaComponent.this.f73374E = component;
            JavaComponent javaComponent = JavaComponent.this;
            javaComponent.f73375F = classAddress;
            javaComponent.f73385P = null;
            JavaComponent javaComponent2 = JavaComponent.this;
            javaComponent2.f73382M = false;
            javaComponent2.f73395Z = false;
            JavaComponent.this.f73377H = javaMetaInfo;
            JavaComponent.this.f73378I.clear();
            JavaComponent.this.f73378I.clear();
            JavaComponent.this.f73379J.clear();
            JavaComponent.this.f73380K.clear();
            JavaComponent javaComponent3 = JavaComponent.this;
            component.javaComponent = javaComponent3;
            component.type = Component.Type.JavaComponent;
            try {
                GameObject gameObject = javaComponent3.f79250n;
                if (gameObject != null) {
                    component.setComponentObject(gameObject.W1());
                } else {
                    component.setComponentObject(null);
                }
            } catch (Exception unused) {
            }
            R8.f.c(JavaComponent.this);
            R8.f.q(JavaComponent.this);
            JavaComponent.this.reloadInspector();
            JavaComponent.this.f73384O.set(false);
            JavaComponent.this.f73383N = true;
        }

        @Override
        public void onError(String error) {
            JavaComponent.this.f73384O.set(false);
            if (JavaComponent.this.f73385P == null || !JavaComponent.this.f73385P.equals(error)) {
                JavaComponent.this.f73385P = error;
                JavaComponent.this.reloadInspector();
            }
        }
    }

    public class e implements D5.e {

        public final ComponentInspector f73420a;

        public class a implements InterfaceC14490d {

            public final View[] f73422a;

            public a(final View[] val$v) {
                this.f73422a = val$v;
            }

            @Override
            public void run() {
                this.f73422a[0] = e.this.f73420a.onAttach();
            }
        }

        public class b implements InterfaceC14490d {
            public b() {
            }

            @Override
            public void run() {
                e.this.f73420a.updateUIVisible();
            }
        }

        public e(final ComponentInspector val$inspector) {
            this.f73420a = val$inspector;
        }

        @Override
        public View a(Context context, C5.b entry) {
            View[] viewArr = {null};
            d8.m.d(new a(viewArr));
            return viewArr[0];
        }

        @Override
        public void b() {
            d8.m.d(new b());
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
        }
    }

    public class f implements P8.p {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                JavaComponent.this.reloadInspector();
            }
        }

        public f() {
        }

        @Override
        public void a(Field field, Object instance, Class address) {
        }

        @Override
        public void b() {
            N7.c.c0(new a());
        }

        @Override
        public boolean c(Field field) {
            return true;
        }
    }

    public class g extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                JavaMetaInfo J10 = d8.j.J(JavaComponent.this.className);
                if (J10 != null) {
                    N7.c.D().B0(new C14351c(J10.f72511a));
                }
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                JavaMetaInfo J10 = d8.j.J(JavaComponent.this.className);
                if (J10 != null) {
                    N7.c.D().B0(new w5.k(J10.f72511a));
                }
            }
        }

        public g() {
            add(new C12908b("Edit script", new a()));
            add(new C12908b("Show in files", new b()));
        }
    }

    public class h extends SteppedArrayList<C5.m> {

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View view) {
                JavaMetaInfo J10 = d8.j.J(JavaComponent.this.className);
                if (J10 != null) {
                    N7.c.D().B0(new C14351c(J10.f72511a));
                }
            }
        }

        public h() {
            add(new C5.m(R.drawable.edit_script_2, new a()));
        }
    }

    public class i extends a {
        public i() {
        }

        @Override
        public boolean c(Field field) {
            return true;
        }
    }

    public class j extends a {
        public j() {
        }

        @Override
        public boolean c(Field field) {
            return true;
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return JavaComponent.f73372H1;
        }

        @Override
        public String c() {
            return JavaComponent.f73371F1;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class l implements InterfaceC14490d {
        public l() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.prePhysics();
            }
        }
    }

    public class m implements InterfaceC14490d {
        public m() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.posPhysics();
            }
        }
    }

    public class n implements InterfaceC14490d {
        public n() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.posWheelPhysics();
            }
        }
    }

    public class o implements InterfaceC14490d {
        public o() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.start();
            }
        }
    }

    public class p implements InterfaceC14490d {
        public p() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.preRepeat();
            }
        }
    }

    public class q implements InterfaceC14490d {
        public q() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.parallelRepeat();
            }
        }
    }

    public class r implements InterfaceC14490d {
        public r() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.disabledParallelRepeat();
            }
        }
    }

    public class s implements InterfaceC14490d {
        public s() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.repeat();
            }
        }
    }

    public class t implements InterfaceC14490d {
        public t() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.disabledRepeat();
            }
        }
    }

    public class u implements InterfaceC14490d {
        public u() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.stoppedRepeat();
            }
        }
    }

    public class v implements InterfaceC14490d {
        public v() {
        }

        @Override
        public void run() {
            if (JavaComponent.this.f73374E != null) {
                JavaComponent.this.f73374E.pausedRepeat();
            }
        }
    }

    static {
        C13201a.b(new k());
    }

    public JavaComponent() {
        super(f73371F1);
        k kVar = null;
        this.global_variables = null;
        this.f73376G = null;
        this.f73378I = new SteppedArrayList();
        this.f73379J = new SteppedArrayList();
        this.f73380K = new SteppedArrayList();
        this.f73381L = new SteppedArrayList();
        this.f73382M = false;
        this.f73383N = false;
        this.f73384O = new AtomicBoolean();
        this.f73386Q = new o();
        this.f73387R = new p();
        this.f73388S = new q();
        this.f73389T = new r();
        this.f73390U = new s();
        this.f73391V = new t();
        this.f73392W = new u();
        this.f73393X = new v();
        this.f73394Y = new C12764a();
        this.f73395Z = false;
        this.f73399q0 = new l();
        this.f73401v0 = new m();
        this.f73373D0 = new n();
        this.f73396b1 = new y(kVar);
        this.f73397i1 = new w(kVar);
        this.f73398m1 = new x(kVar);
        this.f73400q1 = new z(kVar);
        this.f73402v1 = new A(kVar);
        this.f73403y1 = new B(kVar);
    }

    private void determineAnimEntries() {
    }

    private void fillWires() {
        Class<?> type;
        JAVARuntime.Component l02;
        Class<?> type2;
        JAVARuntime.Component component = this.f73374E;
        if (component != null) {
            for (int i10 = 0; i10 < this.f73379J.size(); i10++) {
                Field field = this.f73379J.get(i10);
                try {
                    if (field.get(component) == null && (type2 = field.getType()) != JAVARuntime.Component.class && JAVARuntime.Component.class.isAssignableFrom(type2)) {
                        JAVARuntime.Component m10 = com.itsmagic.engine.Engines.Engine.World.a.m(type2);
                        if (m10 == null) {
                            m10 = com.itsmagic.engine.Engines.Engine.World.a.p(type2);
                        }
                        if (m10 != null) {
                            try {
                                field.set(component, m10);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                J4.d.E1();
                                J4.d.b2(e10.getClass().getSimpleName() + " at " + field.getName() + " e:" + e10.getMessage());
                            }
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            for (int i11 = 0; i11 < this.f73380K.size(); i11++) {
                Field field2 = this.f73380K.get(i11);
                try {
                    if (field2.get(component) == null && (type = field2.getType()) != JAVARuntime.Component.class && JAVARuntime.Component.class.isAssignableFrom(type) && (l02 = this.f79250n.l0(type)) != null) {
                        try {
                            field2.set(component, l02);
                        } catch (Exception e12) {
                            e12.printStackTrace();
                            J4.d.E1();
                            J4.d.b2(e12.getClass().getSimpleName() + " at " + field2.getName() + " e:" + e12.getMessage());
                        }
                    }
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
        }
    }

    private List<Method> getClassMethods() {
        Class cls = this.f73375F;
        if (cls == null) {
            return null;
        }
        JavaMetaInfo javaMetaInfo = this.f73377H;
        if (javaMetaInfo != null) {
            this.f73376G = null;
            return javaMetaInfo.e(cls);
        }
        if (this.f73376G == null) {
            this.f73376G = new JavaMetaInfo.a(cls);
        }
        return this.f73376G.b();
    }

    private List<Method> getPublicMethodsByName(String name) {
        Class cls = this.f73375F;
        if (cls == null) {
            return null;
        }
        JavaMetaInfo javaMetaInfo = this.f73377H;
        if (javaMetaInfo != null) {
            this.f73376G = null;
            return javaMetaInfo.i(cls, name);
        }
        if (this.f73376G == null) {
            this.f73376G = new JavaMetaInfo.a(cls);
        }
        return this.f73376G.d(name);
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

    private void prepareFields() {
        this.f73379J.clear();
        this.f73380K.clear();
        this.f73378I.clear();
        Field[] classFields = getClassFields();
        this.f73381L = getPublicEntryFields();
        if (classFields != null) {
            for (Field field : classFields) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    if (field.getType() == SpatialObject.class) {
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                        this.f73378I.add(field);
                    }
                    if (field.isAnnotationPresent(AutoWired.class)) {
                        this.f73380K.add(field);
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                    } else if (field.isAnnotationPresent(Singleton.class)) {
                        this.f73379J.add(field);
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                    }
                }
            }
        }
        if (this.f73378I.isEmpty()) {
            return;
        }
        R8.f.p(this);
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
                        dictionary.h("JavaComponent: REPLACING " + fromJson.getTextureFile() + " TO " + f10.b());
                        fromJson.setTextureFile(f10.b());
                        variable.str_value = fromJson.toJson();
                    } else {
                        dictionary.h("JavaComponent: REPLACING FAILED " + variable.str_value);
                    }
                } else if ((aVar == Variable.a.File || aVar == Variable.a.InspectorString) && (str = variable.str_value) != null && !str.isEmpty() && !variable.str_value.startsWith("@@ASSET@@")) {
                    BuildDicFile f11 = dictionary.f(variable.str_value);
                    if (f11 != null) {
                        dictionary.h("JavaComponent: REPLACING " + variable.str_value + " TO " + f11.b());
                        variable.str_value = f11.b();
                    } else {
                        dictionary.h("JavaComponent: REPLACING FAILED " + variable.str_value);
                    }
                }
                reloadFilesFromList(variable.c(), dictionary);
            }
        }
    }

    private void restoreVariables() {
        List<Variable> list = this.global_variables;
        if (list != null) {
            try {
                P8.f.L(list, this.f73375F, this.f73374E, this.f79250n, new c());
            } catch (ConcurrentModificationException e10) {
                System.out.println("FAILED CLASS:" + this.className);
                e10.printStackTrace();
            }
        }
    }

    public static JavaComponent runJavaRuntimeComponent(JAVARuntime.Component component, Class classAddress) {
        return new JavaComponent(component, classAddress, null);
    }

    private void setupClass() {
        if (this.f73383N) {
            this.f73383N = false;
            JAVARuntime.Component component = this.f73374E;
            if (component != null) {
                try {
                    component.javaComponent = this;
                    component.type = Component.Type.JavaComponent;
                    GameObject gameObject = this.f79250n;
                    if (gameObject != null) {
                        component.setComponentObject(gameObject.W1());
                    } else {
                        component.setComponentObject(null);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            restoreVariables();
            prepareFields();
            reloadInspector();
        }
    }

    private void start(GameObject gameObject, boolean isEditor) {
        if (this.f73395Z) {
            return;
        }
        this.f73395Z = true;
        this.f73382M = false;
    }

    private void storeVariables() {
        JAVARuntime.Component component;
        Class cls = this.f73375F;
        if (cls == null || (component = this.f73374E) == null) {
            return;
        }
        this.global_variables = P8.f.P(cls, component, this.f79250n, new i());
    }

    private void updateSpatialFields() {
        if (this.f73378I.isEmpty() || this.f73374E == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f73378I.size(); i10++) {
            Field field = this.f73378I.get(i10);
            JAVARuntime.Component component = !Modifier.isStatic(field.getModifiers()) ? this.f73374E : null;
            try {
                SpatialObject spatialObject = (SpatialObject) field.get(component);
                if (spatialObject != null && !spatialObject.exists()) {
                    field.set(component, null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public int animEntriesCount() {
        List<eb.g> list = this.f73381L;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public String animEntryAt(int index) {
        List<eb.g> list = this.f73381L;
        if (list == null) {
            return null;
        }
        return list.get(index).c();
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Animation.c animEntryTypeAt(int index) {
        eb.g gVar;
        List<eb.g> list = this.f73381L;
        if (list != null && (gVar = list.get(index)) != null && gVar.b() != null) {
            if (gVar.b().getType() == ColorINT.class || gVar.b().getType() == Color.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            }
            if (gVar.b().getType() == Vector3.class || gVar.b().getType() == JAVARuntime.Vector3.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC3;
            }
            if (gVar.b().getType() == Vector2.class || gVar.b().getType() == JAVARuntime.Vector2.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC2;
            }
            if (gVar.b().getType() == Vec2I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I;
            }
            if (gVar.b().getType() == UVec2I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I;
            }
            if (gVar.b().getType() == Quaternion.class || gVar.b().getType() == JAVARuntime.Quaternion.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.QUAT;
            }
            if (gVar.b().getType() == Square5I.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I;
            }
            if (gVar.b().getType() == UIImageHandler.class) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE;
            }
            if (gVar.b().getType() == Float.TYPE) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            }
            if (gVar.b().getType() == Integer.TYPE) {
                return com.itsmagic.engine.Engines.Engine.Animation.c.INT;
            }
        }
        return null;
    }

    @Override
    public void callFunction(String functionName, Object... args) {
        List<Method> publicMethodsByName;
        super.callFunction(functionName, args);
        if (this.f73375F == null || this.f73374E == null || (publicMethodsByName = getPublicMethodsByName(functionName)) == null) {
            return;
        }
        int size = publicMethodsByName.size();
        for (int i10 = 0; i10 < size; i10++) {
            Method method = publicMethodsByName.get(i10);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            if (d8.m.a(this.f79250n, new C12765b(method, args))) {
                return;
            }
        }
    }

    @Override
    public boolean checkLowTaskRequirement() {
        return (this.f73378I.isEmpty() || this.f73374E == null) ? false : true;
    }

    @Override
    public boolean checkParallelRequirement() {
        Class cls = this.f73375F;
        if (cls == null) {
            return false;
        }
        JavaMetaInfo javaMetaInfo = this.f73377H;
        if (javaMetaInfo != null) {
            this.f73376G = null;
            return javaMetaInfo.l(cls);
        }
        if (this.f73376G == null) {
            this.f73376G = new JavaMetaInfo.a(cls);
        }
        return this.f73376G.g();
    }

    public List<Variable> cloneGV() {
        JAVARuntime.Component component;
        LinkedList linkedList = new LinkedList();
        Class cls = this.f73375F;
        if (cls == null || (component = this.f73374E) == null) {
            List<Variable> list = this.global_variables;
            if (list != null) {
                for (Variable variable : list) {
                    if (variable != null) {
                        linkedList.add(variable.a());
                    }
                }
            }
        } else {
            for (Variable variable2 : P8.f.P(cls, component, this.f79250n, new j())) {
                if (variable2 != null) {
                    linkedList.add(variable2.a());
                }
            }
        }
        return linkedList;
    }

    @Override
    public int countAsync() {
        return 1;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        setupClass();
        if (this.f73374E == null || !b.j()) {
            return;
        }
        d8.m.b(gameObject, getDisabledUpdateInterface());
    }

    @Override
    public void exposeAnimationEntries(GameObject gameObject, List<C5.b> entries) {
        String str;
        com.itsmagic.engine.Engines.Engine.Animation.c animEntryTypeAt;
        determineAnimEntries();
        if (animEntriesCount() == 0 || entries == null) {
            return;
        }
        for (C5.b bVar : entries) {
            if (bVar != null && bVar.f2061N == null && (str = bVar.f2077l) != null) {
                String normalizeEntryKey = com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.normalizeEntryKey(str);
                if (!normalizeEntryKey.isEmpty()) {
                    eb.g gVar = null;
                    int i10 = 0;
                    eb.g gVar2 = null;
                    com.itsmagic.engine.Engines.Engine.Animation.c cVar = null;
                    while (true) {
                        if (i10 >= this.f73381L.size()) {
                            gVar = gVar2;
                            break;
                        }
                        eb.g gVar3 = this.f73381L.get(i10);
                        if (gVar3 != null && (animEntryTypeAt = animEntryTypeAt(i10)) != null) {
                            String normalizeEntryKey2 = com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.normalizeEntryKey(gVar3.c());
                            if (!normalizeEntryKey2.isEmpty() && (normalizeEntryKey2.equalsIgnoreCase(normalizeEntryKey) || normalizeEntryKey2.contains(normalizeEntryKey) || normalizeEntryKey.contains(normalizeEntryKey2))) {
                                if (gVar2 != null && gVar2 != gVar3) {
                                    cVar = null;
                                    break;
                                } else {
                                    gVar2 = gVar3;
                                    cVar = animEntryTypeAt;
                                }
                            }
                        }
                        i10++;
                    }
                    if (gVar != null && cVar != null) {
                        bVar.d(gameObject, this, gVar.c(), cVar);
                    }
                }
            }
        }
    }

    public Field[] getClassFields() {
        Class cls = this.f73375F;
        if (cls == null) {
            return null;
        }
        JavaMetaInfo javaMetaInfo = this.f73377H;
        if (javaMetaInfo != null) {
            this.f73376G = null;
            return javaMetaInfo.d(cls);
        }
        if (this.f73376G == null) {
            this.f73376G = new JavaMetaInfo.a(cls);
        }
        return this.f73376G.a();
    }

    public String getClassName() {
        return this.className;
    }

    @Override
    public ColorINT getColorFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getType() == Color.class ? ((Color) gVar.b().get(this)).instance : (ColorINT) gVar.b().get(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        populateFilesFromList(this.global_variables, c2632k);
        return c2632k;
    }

    public InterfaceC14490d getDiabledParallelUpdateInterface() {
        return this.f73389T;
    }

    public InterfaceC14490d getDisabledUpdateInterface() {
        return this.f73391V;
    }

    @Override
    public float getFloatFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getFloat(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0.0f;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public int getIconResource() {
        JavaMetaInfo javaMetaInfo = this.f73377H;
        return (javaMetaInfo == null || !C2633l.b(javaMetaInfo.g(), ".java")) ? R.drawable.cube : R.drawable.f131499java;
    }

    @Override
    public String getImageFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    UIImageHandler uIImageHandler = (UIImageHandler) gVar.b().get(this.f73374E);
                    if (uIImageHandler != null) {
                        return uIImageHandler.h();
                    }
                    return null;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_javacomponent;
    }

    @Override
    public Color getInspectorColorDirect(Context context) {
        JAVARuntime.Component component = this.f73374E;
        if (component != null) {
            return component.getComponentColor();
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T extends JAVARuntime.Component, JAVARuntime.Component] */
    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        JAVARuntime.Component component;
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        if (d8.j.W() || !d8.j.V()) {
            linkedList.add(new C5.b(Lang.l(Lang.T.PLEASE_WAIT_SCRIPTS_COMPILER_FINISH), b.a.NoteText));
        } else {
            String str = this.f73385P;
            if (str != null) {
                linkedList.add(new C5.b(str, 12, Theme.i(Theme.T.ACCENT)));
            }
            if (this.f73375F != null && (component = this.f73374E) != null) {
                ComponentInspector componentInspector = component.getComponentInspector();
                if (componentInspector != null) {
                    try {
                        componentInspector.myComponent = this.f73374E;
                        linkedList.add(new C5.b(new e(componentInspector), R.layout.inspector_ae_atlproperties, (Object) null));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        linkedList.add(new C5.b(Lang.l(Lang.T.ERROR_PREFIX) + e10.getMessage(), 12, Theme.i(Theme.T.ACCENT)));
                    }
                }
                linkedList.addAll(P8.f.A(this.f73375F, this.f73374E, context, this.f79250n, false, new f()));
            }
        }
        return linkedList;
    }

    @Override
    public List<C5.m> getInspectorExtras() {
        return new h();
    }

    @Override
    public int getIntFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return gVar.b().getInt(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return 0;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new g();
    }

    public InterfaceC14490d getOnDetachInterface() {
        return this.f73394Y;
    }

    public InterfaceC14490d getParallelUpdateInterface() {
        return this.f73388S;
    }

    public InterfaceC14490d getPausedRepeatInterface() {
        return this.f73393X;
    }

    public InterfaceC14490d getPreUpdateInterface() {
        return this.f73387R;
    }

    public List<eb.g> getPublicEntryFields() {
        Class cls = this.f73375F;
        if (cls != null) {
            try {
                JavaMetaInfo javaMetaInfo = this.f73377H;
                if (javaMetaInfo != null) {
                    this.f73376G = null;
                    return javaMetaInfo.h(cls);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                if (this.f73376G == null) {
                    this.f73376G = new JavaMetaInfo.a(this.f73375F);
                }
                return this.f73376G.c();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public Quaternion getQuatFromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Quaternion) gVar.b().get(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public JAVARuntime.Component getRuntimeComponent() {
        return this.f73374E;
    }

    @Override
    public Square5I getSquare5FromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Square5I) gVar.b().get(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    public InterfaceC14490d getStartInterface() {
        return this.f73386Q;
    }

    public InterfaceC14490d getStoppedRepeat() {
        return this.f73392W;
    }

    @Override
    public String getTitle() {
        String componentTittle;
        JAVARuntime.Component component = this.f73374E;
        return (component == null || (componentTittle = component.getComponentTittle()) == null || componentTittle.isEmpty()) ? this.className : componentTittle;
    }

    @Override
    public Component.e getType() {
        return Component.e.JavaComponent;
    }

    public InterfaceC14490d getUpdateInterface() {
        return this.f73390U;
    }

    @Override
    public Vector2 getVec2FromAnimation(String entryName) {
        Vector2 vector2;
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Class<?> type = gVar.b().getType();
                    if (type == Vec2I.class) {
                        if (((Vec2I) gVar.b().get(this.f73374E)) == null) {
                            return null;
                        }
                        return new Vector2(r0.f(), r0.g());
                    }
                    if (type == UVec2I.class) {
                        if (((UVec2I) gVar.b().get(this.f73374E)) == null) {
                            return null;
                        }
                        return new Vector2(r0.e(), r0.f());
                    }
                    if (type != JAVARuntime.Vector2.class) {
                        return (Vector2) gVar.b().get(this.f73374E);
                    }
                    JAVARuntime.Vector2 vector22 = (JAVARuntime.Vector2) gVar.b().get(this.f73374E);
                    if (vector22 == null || (vector2 = vector22.instance) == null) {
                        return null;
                    }
                    return vector2;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public Vector3 getVec3FromAnimation(String entryName) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    return (Vector3) gVar.b().get(this.f73374E);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(" + this.className + "),(Loading Class)");
        searchClass();
        listener.e();
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (c8.b.k()) {
            updateSpatialFields();
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        searchClass();
        JAVARuntime.Component component = this.f73374E;
        if (component != null) {
            try {
                component.javaComponent = this;
                component.type = Component.Type.JavaComponent;
                GameObject gameObject = this.f79250n;
                if (gameObject != null) {
                    component.setComponentObject(gameObject.W1());
                } else {
                    component.setComponentObject(null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void onCollision(C13813a collision) {
        if (c8.b.k()) {
            this.f73396b1.c(collision, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void onCollisionEnter(C13813a collision) {
        if (c8.b.k()) {
            this.f73397i1.c(collision, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void onCollisionStop(C13813a collision) {
        if (c8.b.k()) {
            this.f73398m1.c(collision, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        JAVARuntime.Component component = this.f73374E;
        if (component != null) {
            try {
                component.javaComponent = this;
                component.type = Component.Type.JavaComponent;
                GameObject gameObject = this.f79250n;
                if (gameObject != null) {
                    component.setComponentObject(gameObject.W1());
                } else {
                    component.setComponentObject(null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            d8.m.b(this.f79250n, getOnDetachInterface());
            this.f73382M = false;
            this.f73395Z = false;
        }
    }

    @Override
    public void onKeyDown(Key key) {
        if (c8.b.k()) {
            this.f73400q1.c(key, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void onKeyPressed(Key key) {
        if (c8.b.k()) {
            this.f73402v1.c(key, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void onKeyUp(Key key) {
        if (c8.b.k()) {
            this.f73403y1.c(key, this.f73374E, this.f79250n);
        }
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73374E == null || K8.a.f10989t <= 1) {
            return;
        }
        if (this.f79250n.Y0()) {
            if (this.f73382M) {
                d8.m.b(this.f79250n, getDiabledParallelUpdateInterface());
            }
        } else if (c8.b.k() && this.f73382M) {
            d8.m.b(this.f79250n, getDiabledParallelUpdateInterface());
        }
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        if (this.f73374E == null || K8.a.f10989t <= 1) {
            return;
        }
        if (this.f79250n.Y0()) {
            if (this.f73382M) {
                d8.m.b(this.f79250n, getParallelUpdateInterface());
            }
        } else if (c8.b.k() && this.f73382M) {
            d8.m.b(this.f79250n, getParallelUpdateInterface());
        }
    }

    @Override
    public void posPhysics() {
        if (this.f73374E != null) {
            d8.m.b(this.f79250n, this.f73401v0);
        }
    }

    @Override
    public void posWheelPhysics() {
        if (this.f73374E != null) {
            d8.m.b(this.f79250n, this.f73373D0);
        }
    }

    @Override
    public void prePhysics() {
        if (this.f73374E != null) {
            d8.m.b(this.f79250n, this.f73399q0);
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        start(gameObject, isEditor);
        setupClass();
        if (this.f73374E == null || K8.a.f10989t <= 1) {
            return;
        }
        if (gameObject.Y0()) {
            if (this.f73382M) {
                d8.m.b(gameObject, getPreUpdateInterface());
            }
        } else if (c8.b.k() && this.f73382M) {
            d8.m.b(gameObject, getPreUpdateInterface());
        }
        if (c8.b.k()) {
            if (this.f73382M) {
                d8.m.b(gameObject, getUpdateInterface());
                return;
            }
            fillWires();
            d8.m.b(gameObject, getStartInterface());
            this.f73382M = true;
            return;
        }
        if (gameObject.Y0()) {
            d8.m.b(gameObject, getStoppedRepeat());
        } else if (c8.b.i()) {
            d8.m.b(gameObject, getPausedRepeatInterface());
        } else {
            d8.m.b(gameObject, getStoppedRepeat());
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof d8.s) {
            R8.f.s(this);
            this.f73377H = null;
            this.f73374E = null;
            this.f73375F = null;
            this.f73384O.set(false);
            this.f73382M = false;
            this.f73395Z = false;
            this.f73376G = null;
            this.f73385P = null;
            this.f73378I.clear();
            this.f73379J.clear();
            this.f73380K.clear();
            R8.f.q(this);
            searchClass();
        }
    }

    public void reload() {
        if (!C13317e.J(this.f79250n) || this.f79250n.Y0()) {
            return;
        }
        R8.f.s(this);
        this.f73377H = null;
        this.f73382M = false;
        this.f73395Z = false;
        this.f73375F = null;
        this.f73374E = null;
        this.f73378I.clear();
        this.f73384O.set(false);
        R8.f.q(this);
        searchClass();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        dictionary.h("JavaComponent: Starting");
        if (this.global_variables != null) {
            dictionary.h("JavaComponent: global_variables size " + this.global_variables.size());
        } else {
            dictionary.h("JavaComponent: global_variables null");
        }
        reloadFilesFromList(this.global_variables, dictionary);
    }

    public void searchClass() {
        if (d8.j.V() && this.f73374E == null && this.f73384O.compareAndSet(false, true)) {
            d8.j.H0(this.className, new d());
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        storeVariables();
        return super.serialize(context);
    }

    @Override
    public void setColorFromAnimation(String entryName, ColorINT value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    if (gVar.b().getType() == Color.class) {
                        gVar.b().set(this.f73374E, value.e0());
                    } else {
                        gVar.b().set(this.f73374E, value);
                    }
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setFloatFromAnimation(String entryName, float value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setFloat(this.f73374E, value);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setImageFromAnimation(String entryName, String value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    UIImageHandler uIImageHandler = (UIImageHandler) gVar.b().get(this.f73374E);
                    if (uIImageHandler == null) {
                        uIImageHandler = new UIImageHandler();
                        gVar.b().set(this.f73374E, uIImageHandler);
                    }
                    uIImageHandler.v(value);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setIntFromAnimation(String entryName, int value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().setInt(this.f73374E, value);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setQuatFromAnimation(String entryName, Quaternion value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this.f73374E, value);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setSquare5FromAnimation(String entryName, Square5I value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Square5I square5I = (Square5I) gVar.b().get(this.f73374E);
                    if (square5I == null) {
                        square5I = new Square5I();
                        gVar.b().set(this.f73374E, square5I);
                    }
                    if (value != null) {
                        square5I.n(value);
                        return;
                    }
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setVec2FromAnimation(String entryName, Vector2 value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    Class<?> type = gVar.b().getType();
                    if (type == Vec2I.class) {
                        Vec2I vec2I = (Vec2I) gVar.b().get(this.f73374E);
                        if (vec2I == null) {
                            vec2I = new Vec2I();
                            gVar.b().set(this.f73374E, vec2I);
                        }
                        if (value != null) {
                            vec2I.h((int) Nc.b.j1(value.f79838x), (int) Nc.b.j1(value.f79839y));
                            return;
                        }
                        return;
                    }
                    if (type != UVec2I.class) {
                        if (type == JAVARuntime.Vector2.class) {
                            gVar.b().set(this.f73374E, value == null ? null : value.K0());
                            return;
                        } else {
                            gVar.b().set(this.f73374E, value);
                            return;
                        }
                    }
                    UVec2I uVec2I = (UVec2I) gVar.b().get(this.f73374E);
                    if (uVec2I == null) {
                        uVec2I = new UVec2I();
                        gVar.b().set(this.f73374E, uVec2I);
                    }
                    if (value != null) {
                        uVec2I.j((int) Nc.b.j1(value.f79838x));
                        uVec2I.k((int) Nc.b.j1(value.f79839y));
                        return;
                    }
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public void setVec3FromAnimation(String entryName, Vector3 value) {
        determineAnimEntries();
        if (this.f73381L == null) {
            throw new RuntimeException("Entry not found:" + entryName);
        }
        for (int i10 = 0; i10 < this.f73381L.size(); i10++) {
            eb.g gVar = this.f73381L.get(i10);
            if (gVar.c().equalsIgnoreCase(entryName)) {
                try {
                    gVar.b().set(this.f73374E, value);
                    return;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
        throw new RuntimeException("Entry not found:" + entryName);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        return this.f73374E;
    }

    @Override
    public boolean willCallFunction(String functionName, Object... args) {
        JAVARuntime.Component component;
        SpatialObject spatialObject;
        List<Method> publicMethodsByName;
        return (this.f73375F == null || (component = this.f73374E) == null || (spatialObject = component.myObject) == null || !spatialObject.exists() || !this.f73382M || (publicMethodsByName = getPublicMethodsByName(functionName)) == null || publicMethodsByName.isEmpty()) ? false : true;
    }

    public static class A {

        public Key f73404a;

        public JAVARuntime.Component f73405b;

        public GameObject f73406c;

        public final InterfaceC14490d f73407d;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (A.this.f73405b == null || A.this.f73404a == null) {
                    return;
                }
                A.this.f73405b.onKeyPressed(A.this.f73404a.m());
            }
        }

        public A() {
            this.f73407d = new a();
        }

        public void c(Key collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73404a = collision;
            this.f73405b = runtimeComponent;
            this.f73406c = gameObject;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73407d);
            }
        }

        public A(k kVar) {
            this();
        }
    }

    public static class B {

        public Key f73409a;

        public JAVARuntime.Component f73410b;

        public GameObject f73411c;

        public final InterfaceC14490d f73412d;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (B.this.f73410b == null || B.this.f73409a == null) {
                    return;
                }
                B.this.f73410b.onKeyUp(B.this.f73409a.m());
            }
        }

        public B() {
            this.f73412d = new a();
        }

        public void c(Key collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73409a = collision;
            this.f73410b = runtimeComponent;
            this.f73411c = gameObject;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73412d);
            }
        }

        public B(k kVar) {
            this();
        }
    }

    public static class w {

        public C13813a f73445a;

        public JAVARuntime.Component f73446b;

        public final InterfaceC14490d f73447c;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (w.this.f73446b == null || w.this.f73445a == null) {
                    return;
                }
                w.this.f73446b.onCollisionEnter(w.this.f73445a.h());
            }
        }

        public w() {
            this.f73447c = new a();
        }

        public void c(C13813a collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73445a = collision;
            this.f73446b = runtimeComponent;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73447c);
            }
        }

        public w(k kVar) {
            this();
        }
    }

    public static class x {

        public C13813a f73449a;

        public JAVARuntime.Component f73450b;

        public final InterfaceC14490d f73451c;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (x.this.f73450b == null || x.this.f73449a == null) {
                    return;
                }
                x.this.f73450b.onCollisionStop(x.this.f73449a.h());
            }
        }

        public x() {
            this.f73451c = new a();
        }

        public void c(C13813a collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73449a = collision;
            this.f73450b = runtimeComponent;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73451c);
            }
        }

        public x(k kVar) {
            this();
        }
    }

    public static class y {

        public C13813a f73453a;

        public JAVARuntime.Component f73454b;

        public final InterfaceC14490d f73455c;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (y.this.f73454b == null || y.this.f73453a == null) {
                    return;
                }
                y.this.f73454b.onCollision(y.this.f73453a.h());
            }
        }

        public y() {
            this.f73455c = new a();
        }

        public void c(C13813a collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73453a = collision;
            this.f73454b = runtimeComponent;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73455c);
            }
        }

        public y(k kVar) {
            this();
        }
    }

    public static class z {

        public Key f73457a;

        public JAVARuntime.Component f73458b;

        public GameObject f73459c;

        public final InterfaceC14490d f73460d;

        public class a implements InterfaceC14490d {
            public a() {
            }

            @Override
            public void run() {
                if (z.this.f73458b == null || z.this.f73457a == null) {
                    return;
                }
                z.this.f73458b.onKeyDown(z.this.f73457a.m());
            }
        }

        public z() {
            this.f73460d = new a();
        }

        public void c(Key collision, JAVARuntime.Component runtimeComponent, GameObject gameObject) {
            this.f73457a = collision;
            this.f73458b = runtimeComponent;
            this.f73459c = gameObject;
            if (runtimeComponent != null) {
                d8.m.b(gameObject, this.f73460d);
            }
        }

        public z(k kVar) {
            this();
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        return new JavaComponent(this.className, cloneGV());
    }

    public JavaComponent(JAVARuntime.Component runtimeComponent, Class classAddress, JavaMetaInfo javaMetaInfo) {
        super(f73371F1);
        k kVar = null;
        this.global_variables = null;
        this.f73376G = null;
        this.f73378I = new SteppedArrayList();
        this.f73379J = new SteppedArrayList();
        this.f73380K = new SteppedArrayList();
        this.f73381L = new SteppedArrayList();
        this.f73382M = false;
        this.f73383N = false;
        this.f73384O = new AtomicBoolean();
        this.f73386Q = new o();
        this.f73387R = new p();
        this.f73388S = new q();
        this.f73389T = new r();
        this.f73390U = new s();
        this.f73391V = new t();
        this.f73392W = new u();
        this.f73393X = new v();
        this.f73394Y = new C12764a();
        this.f73395Z = false;
        this.f73399q0 = new l();
        this.f73401v0 = new m();
        this.f73373D0 = new n();
        this.f73396b1 = new y(kVar);
        this.f73397i1 = new w(kVar);
        this.f73398m1 = new x(kVar);
        this.f73400q1 = new z(kVar);
        this.f73402v1 = new A(kVar);
        this.f73403y1 = new B(kVar);
        this.f73374E = runtimeComponent;
        this.f73375F = classAddress;
        this.className = classAddress.getSimpleName();
        this.f73377H = javaMetaInfo;
        if (javaMetaInfo == null) {
            this.f73377H = d8.k.w(classAddress);
        }
        this.f73383N = true;
        R8.f.c(this);
    }

    public JavaComponent(String className, List<Variable> global_variables) {
        super(f73371F1);
        k kVar = null;
        this.global_variables = null;
        this.f73376G = null;
        this.f73378I = new SteppedArrayList();
        this.f73379J = new SteppedArrayList();
        this.f73380K = new SteppedArrayList();
        this.f73381L = new SteppedArrayList();
        this.f73382M = false;
        this.f73383N = false;
        this.f73384O = new AtomicBoolean();
        this.f73386Q = new o();
        this.f73387R = new p();
        this.f73388S = new q();
        this.f73389T = new r();
        this.f73390U = new s();
        this.f73391V = new t();
        this.f73392W = new u();
        this.f73393X = new v();
        this.f73394Y = new C12764a();
        this.f73395Z = false;
        this.f73399q0 = new l();
        this.f73401v0 = new m();
        this.f73373D0 = new n();
        this.f73396b1 = new y(kVar);
        this.f73397i1 = new w(kVar);
        this.f73398m1 = new x(kVar);
        this.f73400q1 = new z(kVar);
        this.f73402v1 = new A(kVar);
        this.f73403y1 = new B(kVar);
        this.className = className;
        this.global_variables = global_variables;
    }

    public JavaComponent(String className) {
        super(f73371F1);
        k kVar = null;
        this.global_variables = null;
        this.f73376G = null;
        this.f73378I = new SteppedArrayList();
        this.f73379J = new SteppedArrayList();
        this.f73380K = new SteppedArrayList();
        this.f73381L = new SteppedArrayList();
        this.f73382M = false;
        this.f73383N = false;
        this.f73384O = new AtomicBoolean();
        this.f73386Q = new o();
        this.f73387R = new p();
        this.f73388S = new q();
        this.f73389T = new r();
        this.f73390U = new s();
        this.f73391V = new t();
        this.f73392W = new u();
        this.f73393X = new v();
        this.f73394Y = new C12764a();
        this.f73395Z = false;
        this.f73399q0 = new l();
        this.f73401v0 = new m();
        this.f73373D0 = new n();
        this.f73396b1 = new y(kVar);
        this.f73397i1 = new w(kVar);
        this.f73398m1 = new x(kVar);
        this.f73400q1 = new z(kVar);
        this.f73402v1 = new A(kVar);
        this.f73403y1 = new B(kVar);
        this.className = className;
    }
}
