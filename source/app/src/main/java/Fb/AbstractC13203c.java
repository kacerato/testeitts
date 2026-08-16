package fb;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import java.lang.reflect.Type;
import java.util.List;

public abstract class AbstractC13203c implements InterfaceC13202b {
    @Override
    public Component a() {
        try {
            return (Component) b().newInstance();
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
    public Component d(JsonObject json) {
        try {
            return (Component) X7.a.m().fromJson((JsonElement) json, (Type) b());
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public String e() {
        throw new RuntimeException("Override this method at " + c());
    }

    @Override
    @Deprecated
    public String f() {
        return c();
    }

    @Override
    public boolean g() {
        return true;
    }

    @Override
    public String h(boolean translate) {
        return super.h(translate);
    }

    @Override
    public List<d> i() {
        return null;
    }
}
