package com.itsmagic.engine.Engines.Engine.Settings;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;

public class JavaSettings implements Serializable {

    @Expose
    @b("Custom operators")
    public boolean module_customOperators = true;

    @Expose
    @b("Case insensitive methods")
    public boolean module_caseInsensitiveMethods = true;

    @Expose
    @b("Auto public methods")
    public boolean module_publicMethods = true;

    @Expose
    @b("Virtual attributes")
    public boolean module_virtualAttributes = true;

    @Expose
    @b("Auto generate R bindings")
    public boolean module_autoGenerateRBindings = true;

    public class a implements h {

        public final Field f79535a;

        public a(final Field val$field) {
            this.f79535a = val$field;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f79535a.get(JavaSettings.this) + "");
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return new Variable("", "true");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    this.f79535a.set(JavaSettings.this, variable.booolean_value);
                    K8.a.l().k();
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface b {
        String value();
    }

    public List<C5.b> a(Context context, c listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        for (Field field : JavaSettings.class.getDeclaredFields()) {
            b bVar = (b) field.getAnnotation(b.class);
            if (bVar != null && field.getType() == Boolean.TYPE) {
                linkedList.add(new C5.b(new a(field), bVar.value(), b.a.SLBoolean));
            }
        }
        return linkedList;
    }

    public boolean b() {
        return this.module_autoGenerateRBindings;
    }

    public boolean c() {
        return this.module_caseInsensitiveMethods;
    }

    public boolean d() {
        return this.module_customOperators;
    }

    public boolean e() {
        return this.module_publicMethods;
    }

    public boolean f() {
        return this.module_virtualAttributes;
    }

    public void g(boolean module_autoGenerateRBindings) {
        this.module_autoGenerateRBindings = module_autoGenerateRBindings;
    }

    public void h(boolean module_caseInsensitiveMethods) {
        this.module_caseInsensitiveMethods = module_caseInsensitiveMethods;
    }

    public void i(boolean module_customOperators) {
        this.module_customOperators = module_customOperators;
    }

    public void j(boolean module_publicMethods) {
        this.module_publicMethods = module_publicMethods;
    }

    public void k(boolean module_virtualAttributes) {
        this.module_virtualAttributes = module_virtualAttributes;
    }
}
