package s8;

import Ic.C2636o;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class f {

    public final Class f109295a;

    public final Context f109296b = N7.c.t();

    public f(Class cls) {
        this.f109295a = cls;
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a() {
        Class<InterfaceC15237a> cls;
        String str;
        String str2;
        String str3;
        Method[] methodArr;
        int i10;
        int i11;
        String str4;
        String str5;
        Class<InterfaceC15237a> cls2;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        int i12;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("package JAVARuntime;\n\n//<REMOVE-BRIDGE>\nimport com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.Utils.IgnoreAutoComplete;\nimport com.itsmagic.engine.Core.Components.JCompiler.Interfaces.BuildClassConstructor;\nimport com.itsmagic.engine.Engines.Engine.Engine;\n//>REMOVE-BRIDGE<\n/**\n * @Author Lucas Leandro (ITsMagic Founder)\n */\n\n@ClassCategory(cat ={\"TODO\"})\npublic class ");
        sb2.append(b(this.f109295a));
        if (Component.class.isAssignableFrom(this.f109295a)) {
            sb2.append(" extends Component");
        }
        sb2.append(" {");
        sb2.append("\n");
        sb2.append("\n");
        String str12 = ".";
        String str13 = "$";
        if (Component.class.isAssignableFrom(this.f109295a)) {
            sb2.append("    //<REMOVE-BRIDGE>\n    @IgnoreAutoComplete\n    public " + this.f109295a.getName() + " instance;\n    @IgnoreAutoComplete\n    public " + b(this.f109295a) + "(" + this.f109295a.getName().replace("$", ".") + " instance) {\n        super(instance);\n        this.instance = instance;\n        this.instance.setRuntime(this);\n    }\n");
        } else {
            sb2.append("    //<REMOVE-BRIDGE>\n    @IgnoreAutoComplete\n    public " + this.f109295a.getName() + " instance;\n    @IgnoreAutoComplete\n    public " + b(this.f109295a) + "(" + this.f109295a.getName().replace("$", ".") + " instance) {\n        this.instance = instance;\n        this.instance.setRuntime(this);\n    }\n");
        }
        sb2.append("    @BuildClassConstructor\n    public " + b(this.f109295a) + "(Engine engine){}\n    //>REMOVE-BRIDGE<");
        sb2.append("\n");
        sb2.append("\n");
        sb2.append("        public " + b(this.f109295a) + "() {\n        //<REMOVE-BRIDGE>\n        /*\n        //>REMOVE-BRIDGE<\n        super();\n        //<REMOVE-BRIDGE>\n        */\n        //>REMOVE-BRIDGE<\n\n        //<REMOVE-BRIDGE>\n        this(new " + this.f109295a.getName() + "());\n        //>REMOVE-BRIDGE<\n    }");
        sb2.append("\n");
        sb2.append("\n");
        Method[] declaredMethods = this.f109295a.getDeclaredMethods();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int length = declaredMethods.length;
        int i13 = 0;
        while (true) {
            cls = InterfaceC15237a.class;
            if (i13 >= length) {
                break;
            }
            Method method = declaredMethods[i13];
            if (method.getAnnotation(cls) != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                int i14 = 0;
                while (i14 < parameterTypes.length) {
                    Class<?> cls3 = parameterTypes[i14];
                    if (cls3.isEnum()) {
                        for (int i15 = 0; i15 < steppedArrayList.size(); i15++) {
                            if (!((C15241e) steppedArrayList.get(i15)).c().equals(cls3.getSimpleName())) {
                            }
                        }
                        C15241e c15241e = new C15241e(cls3.getSimpleName(), cls3);
                        Object[] enumConstants = cls3.getEnumConstants();
                        int length2 = enumConstants.length;
                        int i16 = 0;
                        while (i16 < length2) {
                            c15241e.a(enumConstants[i16].toString());
                            i16++;
                            length = length;
                        }
                        i12 = length;
                        steppedArrayList.add(c15241e);
                        i14++;
                        length = i12;
                    }
                    i12 = length;
                    i14++;
                    length = i12;
                }
            }
            i13++;
            length = length;
        }
        Iterator<T> it = steppedArrayList.iterator();
        while (true) {
            str = ", ";
            str2 = "        ";
            str3 = "";
            if (!it.hasNext()) {
                break;
            }
            C15241e c15241e2 = (C15241e) it.next();
            for (int i17 = 0; i17 < c15241e2.d().size(); i17++) {
                if (i17 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + c15241e2.d().get(i17);
            }
            String replace = c15241e2.b().getName().replace("$", ".");
            sb2.append("    public enum " + c15241e2.c() + " {\n");
            sb2.append("        " + str3 + "\n");
            sb2.append("    }\n");
            sb2.append("    //<REMOVE-BRIDGE>\n");
            sb2.append("    @com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.Utils.IgnoreAutoComplete\n");
            sb2.append("    private static " + c15241e2.c() + " ENUMCONVERT(" + replace + " un){\n        return " + c15241e2.c() + ".valueOf(un.toString());\n    }\n    @com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.Utils.IgnoreAutoComplete\n    private static " + replace + " ENUMCONVERT(" + c15241e2.c() + " un){\n        return " + replace + ".valueOf(un.toString());\n    }\n");
            sb2.append("    //>REMOVE-BRIDGE<\n");
            sb2.append("\n");
        }
        int length3 = declaredMethods.length;
        int i18 = 0;
        while (i18 < length3) {
            Method method2 = declaredMethods[i18];
            if (method2.getAnnotation(cls) != null) {
                if (method2.getName().startsWith("get") || method2.getName().startsWith("is") || method2.getName().startsWith("set")) {
                    sb2.append("    @HideGetSet");
                    sb2.append("\n");
                }
                Parameter[] parameters = method2.getParameters();
                methodArr = declaredMethods;
                i10 = length3;
                i11 = i18;
                cls2 = cls;
                String str14 = str3;
                String str15 = str14;
                String str16 = str15;
                str6 = str16;
                int i19 = 0;
                while (true) {
                    str7 = str12;
                    if (i19 >= parameters.length) {
                        break;
                    }
                    Parameter parameter = parameters[i19];
                    String str17 = str13;
                    if (i19 > 0) {
                        String str18 = str14 + DocLint.SEPARATOR;
                        str15 = str15 + str;
                        str16 = str16 + DocLint.SEPARATOR;
                        str14 = str18;
                    }
                    String str19 = str14 + JavadocConstants.ANCHOR_PREFIX_END;
                    if (parameter.isNamePresent()) {
                        str8 = str;
                        str10 = str19 + parameter.getName();
                        str9 = str2;
                    } else {
                        str8 = str;
                        str9 = str2;
                        str10 = parameters.length > 1 ? str19 + "arg" + i19 : str19 + "value";
                    }
                    String str20 = str10 + JavadocConstants.ANCHOR_PREFIX_END;
                    Class<?> type = parameter.getType();
                    if (parameters.length > 1) {
                        str15 = (str15 + b(type)) + " arg" + i19;
                        if (type.isEnum()) {
                            str11 = str16 + " ENUMCONVERT(arg" + i19 + ")";
                        } else if (type == String.class) {
                            if (method2.getAnnotation(InterfaceC15239c.class) == null) {
                                str3 = str3 + "if(arg" + i19 + " == null || arg" + i19 + ".isEmpty()) throw new NullPointerException(\"arg" + i19 + " can't be empty or null\");\n";
                            }
                            str11 = str16 + " arg" + i19;
                        } else if (type.isPrimitive()) {
                            str11 = str16 + " arg" + i19;
                        } else if (method2.getAnnotation(InterfaceC15239c.class) == null) {
                            str3 = str3 + "if(value == null) throw new NullPointerException(\"value can't be null\");\n";
                            str11 = str16 + " value." + c(type);
                        } else {
                            str11 = str16 + " (value == null)?null:value." + c(type);
                        }
                    } else {
                        str15 = (str15 + b(type)) + " value";
                        if (type.isEnum()) {
                            str11 = str16 + " ENUMCONVERT(value)";
                        } else if (type == String.class) {
                            if (method2.getAnnotation(InterfaceC15239c.class) == null) {
                                str3 = str3 + "if(value == null || value.isEmpty()) throw new NullPointerException(\"value can't be empty or null\");\n";
                            }
                            str11 = str16 + " value";
                        } else if (type.isPrimitive()) {
                            str11 = str16 + " value";
                        } else if (method2.getAnnotation(InterfaceC15239c.class) == null) {
                            str3 = str3 + "if(value == null) throw new NullPointerException(\"value can't be null\");\n";
                            str11 = str16 + " value." + c(type);
                        } else {
                            str11 = str16 + " (value == null)?null:value." + c(type);
                        }
                    }
                    str16 = str11;
                    i19++;
                    str12 = str7;
                    str13 = str17;
                    str = str8;
                    str2 = str9;
                    str14 = str20;
                }
                String str21 = str13;
                str4 = str;
                String str22 = str2;
                if (parameters.length > 0) {
                    sb2.append("    @MethodArgs({" + str14 + "})");
                    sb2.append("\n");
                }
                String str23 = method2.getAnnotation(InterfaceC15240d.class) != null ? str6 : "        Thread.requestEngineThread();\n";
                if (method2.getReturnType() == Void.class || method2.getReturnType() == Void.TYPE) {
                    str12 = str7;
                    str13 = str21;
                    str5 = str22;
                    sb2.append("    public void " + method2.getName() + "(" + str15 + "){\n        //<REMOVE-BRIDGE>\n" + str23 + str5 + str3 + "\n        instance." + method2.getName() + "(" + str16 + ");\n        //>REMOVE-BRIDGE<\n    }");
                    sb2.append("\n");
                    sb2.append("\n");
                } else {
                    sb2.append("    public " + b(method2.getReturnType()) + " " + method2.getName() + "(" + str15 + "){\n        //<REMOVE-BRIDGE>\n        /*\n        //>REMOVE-BRIDGE<\n        return " + ((method2.getReturnType() == Float.TYPE || method2.getReturnType() == Integer.TYPE || method2.getReturnType() == Long.TYPE || method2.getReturnType() == Double.TYPE || method2.getReturnType() == Character.TYPE || method2.getReturnType() == Short.TYPE) ? "0" : method2.getReturnType() == Boolean.TYPE ? "false" : "null") + ";\n        //<REMOVE-BRIDGE>\n        */\n        //>REMOVE-BRIDGE<\n\n        //<REMOVE-BRIDGE>\n" + str23);
                    if (str3.isEmpty()) {
                        str5 = str22;
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        str5 = str22;
                        sb3.append(str5);
                        sb3.append(str3);
                        sb3.append("\n");
                        sb2.append(sb3.toString());
                    }
                    if (method2.getReturnType().isEnum()) {
                        sb2.append("        return ENUMCONVERT(instance." + method2.getName() + "(" + str16 + "));\n");
                    } else if (method2.getReturnType().isPrimitive()) {
                        sb2.append("        return instance." + method2.getName() + "(" + str16 + ");\n");
                    } else if (method2.getReturnType() == String.class) {
                        sb2.append("         return instance." + method2.getName() + "(" + str16 + ");\n");
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str5);
                        str12 = str7;
                        str13 = str21;
                        sb4.append(method2.getReturnType().getName().replace(str13, str12));
                        sb4.append(" returnValue = instance.");
                        sb4.append(method2.getName());
                        sb4.append("(");
                        sb4.append(str16);
                        sb4.append(");\n        if(returnValue != null) return returnValue.toJAVARuntime();\n        return null;\n");
                        sb2.append(sb4.toString());
                        sb2.append("        //>REMOVE-BRIDGE<\n    }");
                        sb2.append("\n");
                        sb2.append("\n");
                    }
                    str12 = str7;
                    str13 = str21;
                    sb2.append("        //>REMOVE-BRIDGE<\n    }");
                    sb2.append("\n");
                    sb2.append("\n");
                }
            } else {
                methodArr = declaredMethods;
                i10 = length3;
                i11 = i18;
                str4 = str;
                str5 = str2;
                cls2 = cls;
                str6 = str3;
            }
            str2 = str5;
            length3 = i10;
            cls = cls2;
            str3 = str6;
            str = str4;
            i18 = i11 + 1;
            declaredMethods = methodArr;
        }
        sb2.append("\n");
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        C2636o.e(sb2.toString(), new File(W7.b.f27306f.f2458a.b(this.f109296b) + "/cache/rt/" + b(this.f109295a) + ".java"));
        return true;
    }

    public final String b(Class cls) {
        String simpleName = cls.getSimpleName();
        return !simpleName.equals("GameObject") ? !simpleName.equals("ColorINT") ? !simpleName.equals("TextureInstance") ? simpleName : SerializableShaderEntry.f81152f : SerializableShaderEntry.f81153g : "SpatialObject";
    }

    public final String c(Class cls) {
        return cls == GameObject.class ? "instance.get()" : (cls == String.class || cls.isPrimitive()) ? "" : "instance";
    }
}
