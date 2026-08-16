package JAVARuntime;

import D5.d;
import H6.g;
import Lb.k;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvComponentReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.h;
import d8.j;
import d8.m;
import java.lang.reflect.Field;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Component.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Component.class
  classes.dex
 */
@ClassCategory(cat = {"Components"})
public class Component extends InspectorMemory {
    public transient SpatialObject myObject;
    public transient Transform myTransform;

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, final q userPointer) {
            return new C5.b(new d() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                @Override
                public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component get() {
                    Component component;
                    try {
                        component = (Component) field.get(classInstance);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        component = null;
                    }
                    if (component != null) {
                        return component.getEngineComponent();
                    }
                    return null;
                }

                @Override
                public GameObject getAllowObject() {
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    Component component;
                    com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component engineComponent;
                    try {
                        component = (Component) field.get(classInstance);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        component = null;
                    }
                    if (component != null && (engineComponent = component.getEngineComponent()) != null) {
                        return " - " + engineComponent.getTitle();
                    }
                    if (userPointer.f21166b == null) {
                        return " - ";
                    }
                    return " - " + userPointer.f21166b.getSimpleName().replace("_I", "");
                }

                @Override
                public String getTittle() {
                    Component component;
                    try {
                        component = (Component) field.get(classInstance);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        component = null;
                    }
                    if (component != null) {
                        JavaComponent javaComponent = component.javaComponent;
                        if (javaComponent != null) {
                            return javaComponent.getTitle();
                        }
                        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component2 = component.component;
                        if (component2 != null) {
                            return component2.getTitle();
                        }
                    }
                    Class cls = userPointer.f21166b;
                    return cls != null ? cls.getSimpleName().replace("_I", "") : "";
                }

                @Override
                public boolean match(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    Component component2;
                    try {
                        component2 = (Component) field.get(classInstance);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        component2 = null;
                    }
                    if (component2 != null && component != null) {
                        return component2.componentClassMatch(component2, component.toJAVARuntime());
                    }
                    if (component != null && component.toJAVARuntime() != null && userPointer.f21166b.equals(component.toJAVARuntime().getClass())) {
                        return true;
                    }
                    if (component == null) {
                        return false;
                    }
                    try {
                        Class cls = ((JavaComponent) component).f73375F;
                        if (cls != null) {
                            return cls.equals(userPointer.f21166b);
                        }
                        return false;
                    } catch (ClassCastException unused) {
                        return false;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        return false;
                    }
                }

                @Override
                public void set(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    try {
                        if (component != null) {
                            field.set(classInstance, component.toJAVARuntime());
                            n nVar = getSetterListener;
                            if (nVar != null) {
                                nVar.a(component.toJAVARuntime());
                            }
                        } else {
                            field.set(classInstance, null);
                            n nVar2 = getSetterListener;
                            if (nVar2 != null) {
                                nVar2.a(null);
                            }
                        }
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }, tittle);
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, final q userPointer) {
            return new C5.b(new d() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                @Override
                public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component get() {
                    Component component = (Component) array[position];
                    if (component != null) {
                        return component.getEngineComponent();
                    }
                    return null;
                }

                @Override
                public GameObject getAllowObject() {
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    Component component = (Component) array[position];
                    if (component != null) {
                        JavaComponent javaComponent = component.javaComponent;
                        if (javaComponent != null) {
                            return javaComponent.getTitle();
                        }
                        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component2 = component.component;
                        if (component2 != null) {
                            return component2.getTitle();
                        }
                    }
                    if (userPointer.f21166b == null) {
                        return " - ";
                    }
                    return " - " + userPointer.f21166b.getSimpleName().replace("_I", "");
                }

                @Override
                public String getTittle() {
                    Component component = (Component) array[position];
                    if (component != null) {
                        JavaComponent javaComponent = component.javaComponent;
                        if (javaComponent != null) {
                            return javaComponent.getTitle();
                        }
                        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component2 = component.component;
                        if (component2 != null) {
                            return component2.getTitle();
                        }
                    }
                    Class cls = userPointer.f21166b;
                    return cls != null ? cls.getSimpleName().replace("_I", "") : "";
                }

                @Override
                public boolean match(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    Component component2 = (Component) array[position];
                    if (component2 != null && component != null) {
                        return component2.componentClassMatch(component2, component.toJAVARuntime());
                    }
                    if (component != null && component.toJAVARuntime() != null && userPointer.f21166b.equals(component.toJAVARuntime().getClass())) {
                        return true;
                    }
                    if (component == null) {
                        return false;
                    }
                    try {
                        Class cls = ((JavaComponent) component).f73375F;
                        if (cls != null) {
                            return cls.equals(userPointer.f21166b);
                        }
                        return false;
                    } catch (ClassCastException unused) {
                        return false;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return false;
                    }
                }

                @Override
                public void set(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    if (component != null) {
                        array[position] = component.toJAVARuntime();
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(component.toJAVARuntime());
                            return;
                        }
                        return;
                    }
                    array[position] = null;
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(null);
                    }
                }
            }, tittle);
        }

        @Override
        public C5.b getInspectorForList(Context context, final h list, final int position, Object classInstance, String tittle, final n getSetterListener, final q userPointer) {
            return new C5.b(new d() {
                @Override
                public boolean allowSelect() {
                    return true;
                }

                @Override
                public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component get() {
                    Component component = (Component) list.a(position);
                    if (component != null) {
                        return component.getEngineComponent();
                    }
                    return null;
                }

                @Override
                public GameObject getAllowObject() {
                    return null;
                }

                @Override
                public String getExtraTittle() {
                    Component component = (Component) list.a(position);
                    if (component != null) {
                        JavaComponent javaComponent = component.javaComponent;
                        if (javaComponent != null) {
                            return javaComponent.getTitle();
                        }
                        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component2 = component.component;
                        if (component2 != null) {
                            return component2.getTitle();
                        }
                    }
                    if (userPointer.f21166b == null) {
                        return " - ";
                    }
                    return " - " + userPointer.f21166b.getSimpleName().replace("_I", "");
                }

                @Override
                public String getTittle() {
                    Component component = (Component) list.a(position);
                    if (component != null) {
                        JavaComponent javaComponent = component.javaComponent;
                        if (javaComponent != null) {
                            return javaComponent.getTitle();
                        }
                        com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component2 = component.component;
                        if (component2 != null) {
                            return component2.getTitle();
                        }
                    }
                    Class cls = userPointer.f21166b;
                    return cls != null ? cls.getSimpleName().replace("_I", "") : "";
                }

                @Override
                public boolean match(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    Component component2 = (Component) list.a(position);
                    if (component2 != null && component != null) {
                        return component2.componentClassMatch(component2, component.toJAVARuntime());
                    }
                    if (component != null && component.toJAVARuntime() != null && userPointer.f21166b.equals(component.toJAVARuntime().getClass())) {
                        return true;
                    }
                    if (component == null) {
                        return false;
                    }
                    try {
                        Class cls = ((JavaComponent) component).f73375F;
                        if (cls != null) {
                            return cls.equals(userPointer.f21166b);
                        }
                        return false;
                    } catch (ClassCastException unused) {
                        return false;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return false;
                    }
                }

                @Override
                public void set(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
                    if (component != null) {
                        list.b(position, component.toJAVARuntime());
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(component.toJAVARuntime());
                            return;
                        }
                        return;
                    }
                    list.b(position, null);
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(null);
                    }
                }
            }, tittle);
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public boolean match(String className, q userPointer) {
            try {
                Class<?> cls = Class.forName("JAVARuntime." + j.y(className));
                if (Component.class.isAssignableFrom(cls)) {
                    userPointer.f21166b = cls;
                    return true;
                }
            } catch (ClassNotFoundException unused) {
                j jVar = W7.b.f27310j;
                Class G02 = j.G0(className);
                if (G02 != null && Component.class.isAssignableFrom(G02)) {
                    userPointer.f21166b = G02;
                    return true;
                }
            }
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Component();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            String str2;
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component c10;
            if (variable.type == Variable.a.String && (str2 = variable.str_value) != null && !str2.isEmpty() && (c10 = k.c(variable.str_value, com.itsmagic.engine.Engines.Engine.World.a.f80030c)) != null) {
                return c10.toJAVARuntime();
            }
            if (variable.type != Variable.a.ObjectReferenceJson || (str = variable.str_value) == null || str.isEmpty()) {
                return null;
            }
            try {
                AdvComponentReference advComponentReference = (AdvComponentReference) X7.a.m().fromJson(str, AdvComponentReference.class);
                if (advComponentReference == null) {
                    return null;
                }
                if (userPointer != null) {
                    advComponentReference.i(userPointer.f21167c);
                }
                com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component g10 = advComponentReference.g();
                if (g10 != null) {
                    return g10.toJAVARuntime();
                }
                return null;
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            try {
                Component component = (Component) value;
                if (component != null) {
                    AdvComponentReference advComponentReference = new AdvComponentReference(component.getEngineComponent());
                    if (userPointer != null) {
                        advComponentReference.i(userPointer.f21167c);
                    }
                    advComponentReference.j();
                    Variable variable = new Variable(fieldName, advComponentReference.k());
                    variable.type = Variable.a.ObjectReferenceJson;
                    return variable;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return new Variable(fieldName, "", Variable.a.ObjectReferenceJson);
        }
    }

    public class AnonymousClass2 implements eb.d {
        final Runnable val$invokeListener;

        public AnonymousClass2(final Runnable val$invokeListener) {
            this.val$invokeListener = val$invokeListener;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass2.this.val$invokeListener.run();
                }
            });
        }
    }

    public class AnonymousClass3 implements eb.d {
        final Runnable val$invokeListener;

        public AnonymousClass3(final Runnable val$invokeListener) {
            this.val$invokeListener = val$invokeListener;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass3.this.val$invokeListener.run();
                }
            });
        }
    }

    public class AnonymousClass4 implements eb.d {
        final Runnable val$invokeListener;

        public AnonymousClass4(final Runnable val$invokeListener) {
            this.val$invokeListener = val$invokeListener;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass4.this.val$invokeListener.run();
                }
            });
        }
    }

    public class AnonymousClass5 implements eb.d {
        final Runnable val$invokeListener;

        public AnonymousClass5(final Runnable val$invokeListener) {
            this.val$invokeListener = val$invokeListener;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass5.this.val$invokeListener.run();
                }
            });
        }
    }

    public class AnonymousClass6 implements eb.d {
        final Runnable val$runnable;

        public AnonymousClass6(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass6.this.val$runnable.run();
                }
            });
        }
    }

    public class AnonymousClass7 implements eb.d {
        final Runnable val$runnable;

        public AnonymousClass7(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass7.this.val$runnable.run();
                }
            });
        }
    }

    public class AnonymousClass8 implements eb.d {
        final Runnable val$runnable;

        public AnonymousClass8(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass8.this.val$runnable.run();
                }
            });
        }
    }

    public class AnonymousClass9 implements eb.d {
        final Runnable val$runnable;

        public AnonymousClass9(final Runnable val$runnable) {
            this.val$runnable = val$runnable;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass9.this.val$runnable.run();
                }
            });
        }
    }

    @g
    public enum Type {
        JavaComponent,
        EngineComponent
    }

    public void start() {
    }

    public void preRepeat() {
    }

    public void parallelRepeat() {
    }

    public void disabledParallelRepeat() {
    }

    public void repeat() {
    }

    public void disabledRepeat() {
    }

    public void stoppedRepeat() {
    }

    public void pausedRepeat() {
    }

    public void onDetach() {
    }

    public void prePhysics() {
    }

    public void posPhysics() {
    }

    public void posWheelPhysics() {
    }

    public void onCollision(Collision collision) {
    }

    public void onCollisionEnter(Collision collision) {
    }

    public void onCollisionStop(Collision collision) {
    }

    public void onKeyDown(Key key) {
    }

    public void onKeyPressed(Key key) {
    }

    public void onKeyUp(Key key) {
    }

    @HideGetSet
    public final boolean isEnabled() {
        return false;
    }

    @HideGetSet
    public final void setEnabled(boolean z10) {
    }

    public final void invoke(float f10, Runnable runnable) {
    }

    public final void invokeFrames(int i10, Runnable runnable) {
    }

    public final void invoke(float f10, InvokeListener invokeListener) {
        invoke(f10, (Runnable) invokeListener);
    }

    public final void invokeFrames(int i10, InvokeListener invokeListener) {
        invokeFrames(i10, (Runnable) invokeListener);
    }

    public final void waitFrames(int i10, Runnable runnable) {
    }

    public final void waitSeconds(float f10, Runnable runnable) {
    }

    public final void cancelAllInvokes() {
    }

    public void print(String str) {
    }

    public void print(Quaternion quaternion) {
    }

    public void print(Vector3 vector3) {
    }

    public void print(Vector2 vector2) {
    }

    public void print(Object obj) {
    }

    public void print(int i10) {
    }

    public void print(float f10) {
    }

    public void print(double d10) {
    }

    public void print(long j10) {
    }

    public void print(char c10) {
    }

    public void print(short s10) {
    }

    @HideGetSet
    public final SpatialObject getObject() {
        return null;
    }

    public String getComponentMenu() {
        return "Custom scripts";
    }

    public Color getComponentColor() {
        return new Color(231, 76, 60);
    }

    @DeprecatedInfo(info = {"Incorrect grammar or spelling"})
    @Deprecated
    public String getComponentTittle() {
        return getComponentTitle();
    }

    public String getComponentTitle() {
        return "";
    }

    public void setInspector(ComponentInspector componentInspector) {
    }

    public <T> T getUserData() {
        return null;
    }

    public void setUserData(Object obj) {
    }

    public final void destroy() {
    }

    public final boolean isHierarchyActive() {
        return false;
    }

    @DeprecatedInfo(info = {"Incorrect grammar or spelling"})
    @Deprecated
    public String getTittle() {
        return "";
    }

    public String getTitle() {
        return "";
    }

    public GUID getGUID() {
        return null;
    }

    public String toString() {
        return null;
    }

    public void callFunction(String str) {
    }

    public void callFunction(String str, int i10) {
    }

    public void callFunction(String str, float f10) {
    }

    public void callFunction(String str, String str2) {
    }

    public void callFunction(String str, boolean z10) {
    }

    public void callFunction(String str, Object... objArr) {
    }
}
