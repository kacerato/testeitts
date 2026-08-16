package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Component.Reflection;

import J4.d;
import JAVARuntime.Component;
import Sm.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import java.lang.reflect.Method;
import java.util.List;
import la.C14063a;
import ma.C14204a;

public class ComponentMethodNode extends NoCodeNode implements F {

    public static final String f79049j = "ComponentMethod";

    public transient Method f79050g;

    public transient NoCodeSlot[] f79051h;

    public transient NoCodeSlot[] f79052i;

    @Expose
    public H componentType = H.ANY_COMPONENT;

    @Expose
    public String runtimeClassName = "";

    @Expose
    public String methodName = "";

    @Expose
    public SteppedArrayList<String> parameterTypeNames = new SteppedArrayList<>();

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new ComponentMethodNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ComponentMethodNode.class;
        }

        @Override
        public String c() {
            return ComponentMethodNode.f79049j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ComponentMethodNode.class);
        }

        @Override
        public String e() {
            return "Actions/Component";
        }

        @Override
        public String f() {
            return "Component Method";
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    static {
        o.a(new a());
    }

    public ComponentMethodNode() {
        this.serializedNodeType = f79049j;
    }

    @Override
    public NoCodeSlot[] F() {
        H0();
        NoCodeSlot[] noCodeSlotArr = this.f79051h;
        return noCodeSlotArr != null ? noCodeSlotArr : new NoCodeSlot[0];
    }

    public void G0(H componentType, String runtimeClassName, String methodName, SteppedArrayList<String> parameterTypeNames) {
        if (componentType == null) {
            componentType = H.ANY_COMPONENT;
        }
        this.componentType = componentType;
        if (runtimeClassName == null) {
            runtimeClassName = "";
        }
        this.runtimeClassName = runtimeClassName;
        if (methodName == null) {
            methodName = "";
        }
        this.methodName = methodName;
        this.parameterTypeNames = parameterTypeNames != null ? new SteppedArrayList<>(parameterTypeNames) : new SteppedArrayList<>();
        I0();
    }

    public final void H0() {
        H f10;
        if (this.f79050g == null || this.f79051h == null || this.f79052i == null) {
            try {
                Class<?> i10 = C14204a.i(this.runtimeClassName);
                if (Component.class.isAssignableFrom(i10) && (f10 = C14204a.f(i10)) != null) {
                    this.componentType = f10;
                }
                SteppedArrayList<String> steppedArrayList = this.parameterTypeNames;
                int size = steppedArrayList != null ? steppedArrayList.size() : 0;
                Class<?>[] clsArr = new Class[size];
                for (int i11 = 0; i11 < size; i11++) {
                    clsArr[i11] = C14204a.i(this.parameterTypeNames.get(i11));
                }
                Method method = i10.getMethod(this.methodName, clsArr);
                this.f79050g = method;
                J0(method);
            } catch (Exception unused) {
                this.f79050g = null;
                if (this.f79051h == null) {
                    String replace = this.runtimeClassName.replace("JAVARuntime.", "");
                    this.f79051h = new NoCodeSlot[]{new NoCodeSlot(replace, this.componentType).c(replace)};
                }
                if (this.f79052i == null) {
                    this.f79052i = new NoCodeSlot[0];
                }
            }
        }
    }

    public final void I0() {
        this.f79050g = null;
        this.f79051h = null;
        this.f79052i = null;
    }

    @Override
    public NoCodeSlot[] J() {
        H0();
        NoCodeSlot[] noCodeSlotArr = this.f79052i;
        return noCodeSlotArr != null ? noCodeSlotArr : new NoCodeSlot[0];
    }

    public final void J0(Method method) {
        String[] j10 = C14204a.j(method);
        Class<?>[] parameterTypes = method.getParameterTypes();
        NoCodeSlot[] noCodeSlotArr = new NoCodeSlot[parameterTypes.length + 1];
        this.f79051h = noCodeSlotArr;
        noCodeSlotArr[0] = new NoCodeSlot("Component", this.componentType).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT));
        int i10 = 0;
        while (i10 < parameterTypes.length) {
            H f10 = C14204a.f(parameterTypes[i10]);
            NoCodeSlot[] noCodeSlotArr2 = this.f79051h;
            int i11 = i10 + 1;
            String str = j10[i10];
            if (f10 == null) {
                f10 = H.DYNAMIC;
            }
            noCodeSlotArr2[i11] = new NoCodeSlot(str, f10).c(j10[i10]);
            i10 = i11;
        }
        H f11 = C14204a.f(method.getReturnType());
        if (method.getReturnType() == Void.TYPE || f11 == null) {
            this.f79052i = new NoCodeSlot[0];
        } else {
            this.f79052i = new NoCodeSlot[]{new NoCodeSlot(C14204a.c(method), f11).c(C14204a.c(method))};
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return C14204a.b(this.runtimeClassName, this.methodName);
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || desiredType == H.GAME_OBJECT || (desiredType != null && C13308d.n(desiredType))) ? C13308d.f88187a : desiredType == H.BOOLEAN ? "false" : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v15 */
    @Override
    public void m0() {
        NoCodeSlot[] noCodeSlotArr;
        H0();
        Method method = this.f79050g;
        NoCodeSlot[] noCodeSlotArr2 = this.f79051h;
        ?? r82 = false;
        NoCodeSlot[] noCodeSlotArr3 = noCodeSlotArr2;
        if (noCodeSlotArr2 == null) {
            noCodeSlotArr3 = new NoCodeSlot[0];
        }
        NoCodeSlot[] noCodeSlotArr4 = this.f79052i;
        if (noCodeSlotArr4 == null) {
            noCodeSlotArr4 = new NoCodeSlot[0];
        }
        if (method == null || noCodeSlotArr3.length == 0) {
            t();
            return;
        }
        try {
            Component d10 = C14063a.d(this, this.f79021a, noCodeSlotArr3[0]);
            try {
                if (d10 == null || !method.getDeclaringClass().isInstance(d10)) {
                    if (d.O1()) {
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(d.q2("E/At object "));
                        sb2.append(d.H1(A().f78949d != null ? A().f78949d.P0() : "Unknown", "#27997e"));
                        steppedArrayList.add(sb2.toString());
                        steppedArrayList.add(d.q2("Target component input for " + N(A()) + " is undefined, node cannot execute."));
                        steppedArrayList.add(d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                        steppedArrayList.add(d.q2("E/^^^"));
                        d.W1(steppedArrayList);
                    } else {
                        d.E1();
                    }
                    s();
                    return;
                }
                Class<?>[] parameterTypes = method.getParameterTypes();
                Object[] objArr = new Object[parameterTypes.length];
                int i10 = 0;
                while (i10 < parameterTypes.length) {
                    int i11 = i10 + 1;
                    try {
                        objArr[i10] = C14204a.o(Q(noCodeSlotArr3[i11]), parameterTypes[i10]);
                        i10 = i11;
                        r82 = false;
                    } catch (Throwable th2) {
                        th = th2;
                        noCodeSlotArr = null;
                        if (d.O1()) {
                            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(d.q2("E/At object "));
                            sb3.append(d.H1(A().f78949d != null ? A().f78949d.P0() : "Unknown", "#27997e"));
                            steppedArrayList2.add(sb3.toString());
                            List<String> w22 = d.w2(th);
                            for (?? r72 = noCodeSlotArr; r72 < w22.size(); r72++) {
                                String str = w22.get(r72);
                                if (str.equals("\n")) {
                                    steppedArrayList2.add(str);
                                } else {
                                    String str2 = b.f23785c + str;
                                    if (!str2.trim().isEmpty()) {
                                        steppedArrayList2.add(str2);
                                    }
                                }
                            }
                            steppedArrayList2.add(d.y2("E/Catching exceptions is a heavy process and considerably reduces performance.!"));
                            steppedArrayList2.add(d.q2("E/^^^"));
                            d.W1(steppedArrayList2);
                        } else {
                            d.E1();
                        }
                        s();
                        return;
                    }
                }
                Object invoke = method.invoke(d10, objArr);
                if (noCodeSlotArr4.length <= 0) {
                    t();
                    return;
                }
                NoCodeSlot noCodeSlot = noCodeSlotArr4[0];
                y0(noCodeSlot, C14204a.e(invoke, noCodeSlot.type));
                u(noCodeSlotArr4[0]);
            } catch (Throwable th3) {
                th = th3;
                noCodeSlotArr = noCodeSlotArr3;
            }
        } catch (Throwable th4) {
            th = th4;
            noCodeSlotArr = r82;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return this.runtimeClassName.replace("JAVARuntime.", "") + ": " + this.methodName;
    }
}
