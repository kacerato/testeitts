package com.itsmagic.engine.Activities.Editor.Interface.Areas;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import i4.C13580a;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import java.lang.reflect.Type;
import java.util.List;
import k4.d;
import n4.f;
import o4.e;
import org.json.JSONException;
import org.json.JSONObject;

public class Area {

    public static final List<b> f70703a = new SteppedArrayList();

    @Expose
    public String serializedComponentType;

    public static class a implements b {
        @Override
        public Area a() {
            try {
                return (Area) b().newInstance();
            } catch (IllegalAccessException | InstantiationException e10) {
                e10.printStackTrace();
                throw new RuntimeException("Failed to create a new instance from the class type " + b().getName());
            }
        }

        @Override
        public Class b() {
            throw new RuntimeException("Override this method!");
        }

        @Override
        public String c() {
            throw new RuntimeException("Override this method at " + b().getName());
        }

        @Override
        public Area d(String json) {
            try {
                return (Area) X7.a.m().fromJson(json, (Type) b());
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public interface b {
        Area a();

        Class b();

        String c();

        Area d(String json);
    }

    public enum c {
        Unknown,
        AttachedModule
    }

    static {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new SplitArea());
        steppedArrayList.clear();
    }

    public Area() {
    }

    public static void a(b componentInterface) {
        if (componentInterface == null) {
            throw new NullPointerException("component interface can't be null");
        }
        Class b10 = componentInterface.b();
        if (b10 == null) {
            throw new RuntimeException("Component class type can't be null");
        }
        if (b10 == Area.class) {
            throw new RuntimeException("Component class type can't be == Area.class");
        }
        if (!Area.class.isAssignableFrom(b10)) {
            throw new RuntimeException("Component class type needs to extends Area.class");
        }
        String c10 = componentInterface.c();
        if (c10 == null || c10.isEmpty()) {
            throw new NullPointerException("Type serialized name can't be null or empty");
        }
        synchronized (f70703a) {
            int i10 = 0;
            while (true) {
                try {
                    List<b> list = f70703a;
                    if (i10 >= list.size()) {
                        list.add(componentInterface);
                    } else {
                        if (list.get(i10).c().equalsIgnoreCase(c10)) {
                            throw new RuntimeException("Serialized name already used by other type!!");
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static Area g(String json) {
        Area d10;
        try {
            JSONObject jSONObject = new JSONObject(json);
            String string = jSONObject.getString("serializedComponentType");
            synchronized (f70703a) {
                int i10 = 0;
                while (true) {
                    try {
                        List<b> list = f70703a;
                        if (i10 >= list.size()) {
                            throw new ComponentDeserializeException("Invalid component type " + string);
                        }
                        b bVar = list.get(i10);
                        if (bVar.c().equalsIgnoreCase(string) && (d10 = bVar.d(json)) != null) {
                            d10.r(json, jSONObject);
                            return d10;
                        }
                        i10++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void A() {
        throw new RuntimeException("Override!");
    }

    public boolean B(f panelIntent) {
        throw new RuntimeException("Override!");
    }

    public JsonElement C(Context context) {
        try {
            return X7.a.m().toJsonTree(this);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void D(EnumC13805a closeDirection) {
        throw new RuntimeException("Override!");
    }

    public void E() {
        throw new RuntimeException("Override!");
    }

    public void F(float w10, float h10) {
        throw new RuntimeException("Override!");
    }

    public void G(EditorPanel panel) {
        throw new RuntimeException("Override!");
    }

    public void H(Panel panel) {
        throw new RuntimeException("Override!");
    }

    public void I() {
        throw new RuntimeException("Override!");
    }

    public void J() {
    }

    public void K() {
    }

    public void L(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener, d parentSplitAreaConnector, int depth, boolean stepLerp) {
        throw new RuntimeException("Override!");
    }

    public void b(Panel panel) {
        throw new RuntimeException("Override!");
    }

    public void c(e panelsBundle) {
    }

    public void d(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        throw new RuntimeException("Override!");
    }

    public void e(e panelsBundle) {
    }

    public void f(FrameLayout screenArea) {
        throw new RuntimeException("Override!");
    }

    public void h(FrameLayout screenArea) {
        throw new RuntimeException("Override!");
    }

    public void i(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        throw new RuntimeException("Override!");
    }

    public void j(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        throw new RuntimeException("Override!");
    }

    public PanelArea k(EditorPanel editorPanel) {
        throw new RuntimeException("Override!");
    }

    public boolean l() {
        throw new RuntimeException("Override!");
    }

    public void m() {
        throw new RuntimeException("Override!");
    }

    public boolean n(EditorPanel editorPanel) {
        throw new RuntimeException("Override!");
    }

    public void o() {
        throw new RuntimeException("Override!");
    }

    public void p(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        throw new RuntimeException("Override!");
    }

    public void q() {
        throw new RuntimeException("Override!");
    }

    public void r(String json, JSONObject jsonObj) {
    }

    public void s() {
    }

    public void t() {
        throw new RuntimeException("Override!");
    }

    public void u() {
        throw new RuntimeException("Override!");
    }

    public void v() {
    }

    public void w() {
    }

    public void x(k4.c listener) {
    }

    public boolean y(PanelArea panelArea) {
        throw new RuntimeException("Override!");
    }

    public boolean z(EditorPanel editorPanel) {
        throw new RuntimeException("Override!");
    }

    public Area(String serializedComponentType) {
        this.serializedComponentType = serializedComponentType;
    }
}
