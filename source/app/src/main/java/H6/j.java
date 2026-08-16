package H6;

import androidx.annotation.NonNull;
import java.lang.reflect.Parameter;

public class j {

    public String f8257a;

    public Class f8258b;

    public boolean f8259c;

    public int f8260d;

    public Class[] f8261e;

    public Parameter[] f8262f;

    public boolean f8263g;

    public Class f8264h;

    public j(String name, Class returnType) {
        this.f8260d = 0;
        this.f8261e = null;
        this.f8262f = null;
        this.f8257a = name;
        this.f8258b = returnType;
    }

    @NonNull
    public String toString() {
        throw new RuntimeException("Don't call toString()");
    }

    public j(String name, Class returnType, boolean isMethod, int argumentsCount, Class[] arguments) {
        this.f8262f = null;
        this.f8257a = name;
        this.f8258b = returnType;
        this.f8259c = isMethod;
        this.f8260d = argumentsCount;
        this.f8261e = arguments;
    }

    public j(String name, Class returnType, boolean isMethod, int argumentsCount, Class[] arguments, boolean isConstructor, Class constructorClass) {
        this.f8262f = null;
        this.f8257a = name;
        this.f8258b = returnType;
        this.f8259c = isMethod;
        this.f8260d = argumentsCount;
        this.f8261e = arguments;
        this.f8263g = isConstructor;
        this.f8264h = constructorClass;
    }

    public j(String name, Class returnType, boolean isMethod, int argumentsCount, Class[] arguments, Parameter[] argumentsTypes) {
        this.f8257a = name;
        this.f8258b = returnType;
        this.f8259c = isMethod;
        this.f8260d = argumentsCount;
        this.f8261e = arguments;
        this.f8262f = argumentsTypes;
    }

    public j(String name, Class returnType, boolean isMethod, int argumentsCount, Class[] arguments, Parameter[] argumentsTypes, boolean isConstructor, Class constructorClass) {
        this.f8257a = name;
        this.f8258b = returnType;
        this.f8259c = isMethod;
        this.f8260d = argumentsCount;
        this.f8261e = arguments;
        this.f8262f = argumentsTypes;
        this.f8263g = isConstructor;
        this.f8264h = constructorClass;
    }
}
