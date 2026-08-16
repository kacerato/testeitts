package com.itsmagic.engine.Engines.Utils;

import android.view.View;
import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Variable implements Serializable {

    public boolean f81489b;

    @Expose
    public Boolean booolean_value;

    public transient View f81490c;

    @Expose
    public ColorINT color_value;

    @Expose
    public double double_value;

    @Expose
    public boolean editableInNSE;

    @Expose
    public float[] farray_value;

    @Expose
    public float float_value;

    @Expose
    public String genericStorePackage;

    @Expose
    public String inspectorClass;

    @Expose
    public int int_value;

    @Expose
    public List<Variable> list_value;

    @Expose
    public long long_value;

    @Expose
    public String name;

    @Expose
    public String str_value;

    @Expose
    public a type;

    @Expose
    public Vector2 vector2_value;

    @Expose
    public Vector3 vector3_value;

    public enum a {
        NULL,
        Float,
        Int,
        Char,
        Byte,
        Short,
        Long,
        Double,
        String,
        InspectorString,
        ObjectReferenceJson,
        Vector3,
        Vector2,
        List,
        Boolean,
        Key,
        Axis,
        Touch,
        File,
        Color,
        FloatArray,
        Matcap,
        ITsMagic,
        WorldController,
        GameController,
        Console,
        Time,
        Input,
        View,
        New,
        SaveGame,
        Directories,
        WorldLightSettings,
        Math,
        Random
    }

    public Variable() {
        this.f81489b = false;
        this.editableInNSE = true;
    }

    public Variable a() {
        return b(this.name);
    }

    public Variable b(String newName) {
        Variable variable = new Variable();
        variable.type = this.type;
        variable.booolean_value = this.booolean_value;
        if (this.list_value != null) {
            variable.list_value = new SteppedArrayList();
            Iterator<Variable> it = this.list_value.iterator();
            while (it.hasNext()) {
                variable.list_value.add(it.next().a());
            }
        }
        variable.vector3_value = Vector3.clone(this.vector3_value);
        variable.vector2_value = Vector2.y(this.vector2_value);
        variable.color_value = ColorINT.k(this.color_value);
        variable.inspectorClass = this.inspectorClass;
        variable.str_value = this.str_value;
        variable.int_value = this.int_value;
        variable.float_value = this.float_value;
        variable.double_value = this.double_value;
        variable.long_value = this.long_value;
        variable.name = this.name;
        variable.f81489b = this.f81489b;
        variable.editableInNSE = this.editableInNSE;
        variable.type = this.type;
        variable.genericStorePackage = this.genericStorePackage;
        return variable;
    }

    public List<Variable> c() {
        if (this.list_value == null) {
            this.list_value = new LinkedList();
        }
        return this.list_value;
    }

    public String d() {
        if (this.str_value == null) {
            this.str_value = "";
        }
        return this.str_value;
    }

    public boolean e() {
        a aVar = this.type;
        if (aVar == a.Float || aVar == a.Int) {
            return false;
        }
        if (aVar == a.String) {
            return this.str_value == null;
        }
        if (aVar == a.Boolean) {
            return false;
        }
        if (aVar == a.List) {
            return this.list_value == null;
        }
        if (aVar == a.Vector2) {
            return this.vector2_value == null;
        }
        if (aVar == a.Vector3) {
            return this.vector3_value == null;
        }
        if (aVar == a.File) {
            return this.str_value == null;
        }
        if (aVar == a.Color) {
            return this.color_value == null;
        }
        if (aVar == a.Time || aVar == a.ITsMagic || aVar == a.WorldController || aVar == a.Directories || aVar == a.GameController || aVar == a.Console || aVar == a.Input || aVar == a.Math || aVar == a.Random || aVar == a.New) {
            return false;
        }
        a aVar2 = a.SaveGame;
        return false;
    }

    public void f(a type) {
        this.type = type;
    }

    @NonNull
    public String toString() {
        a aVar = this.type;
        if (aVar == a.Float) {
            return this.float_value + "";
        }
        if (aVar == a.Int) {
            return this.int_value + "";
        }
        if (aVar == a.String || aVar == a.File) {
            return d();
        }
        if (aVar != a.Boolean) {
            return "";
        }
        return "" + ((Object) this.booolean_value);
    }

    public Variable(String name, a type) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.type = type;
        this.name = name;
    }

    public Variable(String name, long long_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.long_value = long_value;
        this.type = a.Long;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, double double_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.double_value = double_value;
        this.type = a.Double;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, float float_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.float_value = float_value;
        this.type = a.Float;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, float float_value, boolean isFromJava) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.float_value = float_value;
        this.type = a.Float;
        this.f81489b = isFromJava;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, int int_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.int_value = int_value;
        this.type = a.Int;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, int int_value, a type) {
        this.name = name;
        this.int_value = int_value;
        this.type = type;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, int int_value, boolean isFromJava) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.int_value = int_value;
        this.type = a.Int;
        this.f81489b = isFromJava;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, String str_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.str_value = str_value;
        this.type = a.String;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, String str_value, a type) {
        this.name = name;
        this.str_value = str_value;
        this.type = type;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, String str_value, boolean isFromJava) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.str_value = str_value;
        this.type = a.String;
        this.f81489b = isFromJava;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, Vector2 vector2_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.vector2_value = vector2_value;
        this.type = a.Vector2;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, Vector3 vector3_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.vector3_value = vector3_value;
        this.type = a.Vector3;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, Vector3 vector3_value, boolean isFromJava) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.vector3_value = vector3_value;
        this.type = a.Vector3;
        this.f81489b = isFromJava;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, List<Variable> list_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.list_value = list_value;
        this.type = a.List;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, Boolean booolean_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.booolean_value = booolean_value;
        this.type = a.Boolean;
        this.f81489b = false;
        this.editableInNSE = true;
    }

    public Variable(String name, Boolean booolean_value, boolean isFromJava) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.booolean_value = booolean_value;
        this.type = a.Boolean;
        this.f81489b = isFromJava;
        this.editableInNSE = true;
    }

    public Variable(String name, ColorINT color_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.color_value = color_value;
        this.type = a.Color;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }

    public Variable(String name, View view_value) {
        this.f81489b = false;
        this.editableInNSE = true;
        this.name = name;
        this.f81490c = view_value;
        this.type = a.View;
        this.f81489b = false;
        this.editableInNSE = true;
        this.booolean_value = Boolean.FALSE;
    }
}
