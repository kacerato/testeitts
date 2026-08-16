package java.lang.invoke;

import java.lang.classfile.ClassFile;
import java.lang.classfile.attribute.SourceFileAttribute;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.BoundMethodHandle;
import java.lang.invoke.ClassSpecializer;
import java.lang.invoke.LambdaForm;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.stream.Stream;
import sun.invoke.util.Wrapper;

public class GenerateJLIClassesHelper {
    static final Map<String, Integer> DMH_METHOD_TYPE_MAP;
    static final String DIRECT_HOLDER = "java/lang/invoke/DirectMethodHandle$Holder";
    static final String DELEGATING_HOLDER = "java/lang/invoke/DelegatingMethodHandle$Holder";
    static final String BASIC_FORMS_HOLDER = "java/lang/invoke/LambdaForm$Holder";
    static final String INVOKERS_HOLDER = "java/lang/invoke/Invokers$Holder";
    static final String INVOKERS_HOLDER_CLASS_NAME;
    static final String BMH_SPECIES_PREFIX = "java.lang.invoke.BoundMethodHandle$Species_";
    static final boolean $assertionsDisabled;

    GenerateJLIClassesHelper() {
    }

    static {
        $assertionsDisabled = !GenerateJLIClassesHelper.class.desiredAssertionStatus();
        DMH_METHOD_TYPE_MAP = Map.of(LambdaForm.Kind.DIRECT_INVOKE_VIRTUAL.methodName, 0, LambdaForm.Kind.DIRECT_INVOKE_STATIC.methodName, 1, LambdaForm.Kind.DIRECT_INVOKE_SPECIAL.methodName, 2, LambdaForm.Kind.DIRECT_NEW_INVOKE_SPECIAL.methodName, 3, LambdaForm.Kind.DIRECT_INVOKE_INTERFACE.methodName, 4, LambdaForm.Kind.DIRECT_INVOKE_STATIC_INIT.methodName, 5, LambdaForm.Kind.DIRECT_INVOKE_SPECIAL_IFC.methodName, 20);
        INVOKERS_HOLDER_CLASS_NAME = INVOKERS_HOLDER.replace('/', '.');
    }

    public static class HolderClassBuilder {
        private final TreeSet<String> speciesTypes = new TreeSet<>();
        private final TreeSet<String> invokerTypes = new TreeSet<>();
        private final TreeSet<String> linkerTypes = new TreeSet<>();
        private final TreeSet<String> callSiteTypes = new TreeSet<>();
        private final Map<String, Set<String>> dmhMethods = new TreeMap();
        static final boolean $assertionsDisabled;

        HolderClassBuilder() {
        }

        static {
            $assertionsDisabled = !GenerateJLIClassesHelper.class.desiredAssertionStatus();
        }

        HolderClassBuilder addSpeciesType(String type) {
            this.speciesTypes.add(expandSignature(type));
            return this;
        }

        HolderClassBuilder addInvokerType(String methodType) {
            validateMethodType(methodType);
            this.invokerTypes.add(methodType);
            return this;
        }

        HolderClassBuilder addLinkerType(String methodType) {
            validateMethodType(methodType);
            this.linkerTypes.add(methodType);
            return this;
        }

        HolderClassBuilder addCallSiteType(String csType) {
            validateMethodType(csType);
            this.callSiteTypes.add(csType);
            return this;
        }

        Map<String, byte[]> build() {
            int count = 0;
            Iterator<Set<String>> it = this.dmhMethods.values().iterator();
            while (it.hasNext()) {
                count += it.next().size();
            }
            MethodType[] directMethodTypes = new MethodType[count];
            int[] dmhTypes = new int[count];
            int index = 0;
            for (Map.Entry<String, Set<String>> entry : this.dmhMethods.entrySet()) {
                String dmhType = entry.getKey();
                for (String type : entry.getValue()) {
                    MethodType mt = asMethodType(type);
                    if (mt.parameterCount() < 1 || mt.parameterType(0) != Object.class) {
                        throw new RuntimeException("DMH type parameter must start with L: " + dmhType + " " + type);
                    }
                    directMethodTypes[index] = mt.dropParameterTypes(0, 1);
                    dmhTypes[index] = GenerateJLIClassesHelper.DMH_METHOD_TYPE_MAP.get(dmhType).intValue();
                    if ((dmhTypes[index] == 4 || dmhTypes[index] == 0) && (mt.parameterCount() < 2 || mt.parameterType(1) != Object.class)) {
                        throw new RuntimeException("DMH type parameter must start with LL: " + dmhType + " " + type);
                    }
                    index++;
                }
            }
            MethodType[] linkerMethodTypes = new MethodType[this.linkerTypes.size()];
            int index2 = 0;
            Iterator<String> it2 = this.linkerTypes.iterator();
            while (it2.hasNext()) {
                String linkerType = it2.next();
                MethodType mt2 = asMethodType(linkerType);
                int lastParam = mt2.parameterCount() - 1;
                if (!checkLinkerTypeParams(mt2)) {
                    throw new RuntimeException("Linker type parameter must start and end with Object: " + linkerType);
                }
                linkerMethodTypes[index2] = mt2.dropParameterTypes(lastParam, lastParam + 1).dropParameterTypes(0, 1);
                index2++;
            }
            MethodType[] invokerMethodTypes = new MethodType[this.invokerTypes.size()];
            int index3 = 0;
            Iterator<String> it3 = this.invokerTypes.iterator();
            while (it3.hasNext()) {
                String invokerType = it3.next();
                MethodType mt3 = asMethodType(invokerType);
                if (!checkInvokerTypeParams(mt3)) {
                    throw new RuntimeException("Invoker type parameter must start with 2 Objects: " + invokerType);
                }
                invokerMethodTypes[index3] = mt3.dropParameterTypes(0, 2);
                index3++;
            }
            MethodType[] callSiteMethodTypes = new MethodType[this.callSiteTypes.size()];
            int index4 = 0;
            Iterator<String> it4 = this.callSiteTypes.iterator();
            while (it4.hasNext()) {
                String callSiteType = it4.next();
                MethodType mt4 = asMethodType(callSiteType);
                int lastParam2 = mt4.parameterCount() - 1;
                if (mt4.parameterCount() < 1 || mt4.parameterType(lastParam2) != Object.class) {
                    throw new RuntimeException("CallSite type parameter must end with Object: " + callSiteType);
                }
                callSiteMethodTypes[index4] = mt4.dropParameterTypes(lastParam2, lastParam2 + 1);
                index4++;
            }
            Map<String, byte[]> result = new TreeMap<>();
            result.put(GenerateJLIClassesHelper.DIRECT_HOLDER, GenerateJLIClassesHelper.generateDirectMethodHandleHolderClassBytes(GenerateJLIClassesHelper.DIRECT_HOLDER, directMethodTypes, dmhTypes));
            result.put(GenerateJLIClassesHelper.DELEGATING_HOLDER, GenerateJLIClassesHelper.generateDelegatingMethodHandleHolderClassBytes(GenerateJLIClassesHelper.DELEGATING_HOLDER, directMethodTypes));
            result.put(GenerateJLIClassesHelper.INVOKERS_HOLDER, GenerateJLIClassesHelper.generateInvokersHolderClassBytes(GenerateJLIClassesHelper.INVOKERS_HOLDER, linkerMethodTypes, invokerMethodTypes, callSiteMethodTypes));
            result.put(GenerateJLIClassesHelper.BASIC_FORMS_HOLDER, GenerateJLIClassesHelper.generateBasicFormsClassBytes(GenerateJLIClassesHelper.BASIC_FORMS_HOLDER));
            this.speciesTypes.forEach(types -> {
                Map.Entry<String, byte[]> entry2 = GenerateJLIClassesHelper.generateConcreteBMHClassBytes(types);
                result.put(entry2.getKey(), entry2.getValue());
            });
            this.speciesTypes.clear();
            this.invokerTypes.clear();
            this.callSiteTypes.clear();
            this.dmhMethods.clear();
            return result;
        }

        public static MethodType asMethodType(String basicSignatureString) {
            String[] parts = basicSignatureString.split(ConstantDescs.DEFAULT_NAME);
            if (!$assertionsDisabled && parts.length != 2) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && parts[1].length() != 1) {
                throw new AssertionError();
            }
            String parameters = expandSignature(parts[0]);
            Class<?> rtype = simpleType(parts[1].charAt(0));
            if (parameters.isEmpty()) {
                return MethodType.methodType(rtype);
            }
            Class<?>[] ptypes = new Class[parameters.length()];
            for (int i10 = 0; i10 < ptypes.length; i10++) {
                ptypes[i10] = simpleType(parameters.charAt(i10));
            }
            return MethodType.methodType(rtype, ptypes);
        }

        public static boolean checkInvokerTypeParams(MethodType mt) {
            return mt.parameterCount() >= 2 && mt.parameterType(0) == Object.class && mt.parameterType(1) == Object.class;
        }

        public static boolean checkLinkerTypeParams(MethodType mt) {
            int lastParam = mt.parameterCount() - 1;
            return mt.parameterCount() >= 2 && mt.parameterType(0) == Object.class && mt.parameterType(lastParam) == Object.class;
        }

        private void addDMHMethodType(String dmh, String methodType) {
            validateMethodType(methodType);
            Set<String> methodTypes = this.dmhMethods.get(dmh);
            if (methodTypes == null) {
                methodTypes = new TreeSet();
                this.dmhMethods.put(dmh, methodTypes);
            }
            methodTypes.add(methodType);
        }

        private static void validateMethodType(String type) {
            String[] typeParts = type.split(ConstantDescs.DEFAULT_NAME);
            if (typeParts.length != 2 || typeParts[1].length() != 1 || !LambdaForm.BasicType.isBasicTypeChar(typeParts[1].charAt(0))) {
                throw new RuntimeException("Method type signature must be of form [LJIFD]*_[LJIFDV]");
            }
            expandSignature(typeParts[0]);
        }

        private static String expandSignature(String signature) {
            int i10;
            StringBuilder sb2 = new StringBuilder();
            char last = 'X';
            int count = 0;
            for (int i11 = 0; i11 < signature.length(); i11++) {
                char c10 = signature.charAt(i11);
                if (c10 >= '0' && c10 <= '9') {
                    i10 = (count * 10) + (c10 - '0');
                } else {
                    requireBasicType(c10);
                    for (int j10 = 1; j10 < count; j10++) {
                        sb2.append(last);
                    }
                    sb2.append(c10);
                    last = c10;
                    i10 = 0;
                }
                count = i10;
            }
            if (count > 1) {
                requireBasicType(last);
                for (int j11 = 1; j11 < count; j11++) {
                    sb2.append(last);
                }
            }
            return sb2.toString();
        }

        private static void requireBasicType(char c10) {
            if (!LambdaForm.BasicType.isArgBasicTypeChar(c10)) {
                throw new RuntimeException("Character " + c10 + " must correspond to a basic field type: LIJFD");
            }
        }

        private static Class<?> simpleType(char c10) {
            if (LambdaForm.BasicType.isBasicTypeChar(c10)) {
                return LambdaForm.BasicType.basicType(c10).basicTypeClass();
            }
            switch (c10) {
                case 'B':
                case 'C':
                case 'S':
                case 'Z':
                    throw new IllegalArgumentException("Not a valid primitive: " + c10 + " (use I instead)");
                default:
                    throw new IllegalArgumentException("Not a primitive: " + c10);
            }
        }
    }

    public static Map<String, byte[]> generateHolderClasses(Stream<String> traces) {
        Objects.requireNonNull(traces);
        HolderClassBuilder builder = new HolderClassBuilder();
        traces.map(line -> {
            return line.split(" ");
        }).forEach(parts -> {
            String s0$ = parts[0];
            int tmp1$ = -1;
            switch (s0$.hashCode()) {
                case -685835729:
                    if (s0$.equals("[SPECIES_RESOLVE]")) {
                        tmp1$ = 0;
                        break;
                    }
                    break;
                case -606951941:
                    if (s0$.equals("[LF_RESOLVE]")) {
                        tmp1$ = 1;
                        break;
                    }
                    break;
            }
            switch (tmp1$) {
                case 0:
                    if (!$assertionsDisabled && parts.length < 2) {
                        throw new AssertionError();
                    }
                    if (parts[1].startsWith(BMH_SPECIES_PREFIX)) {
                        String species = parts[1].substring(BMH_SPECIES_PREFIX.length());
                        if (!"L".equals(species)) {
                            builder.addSpeciesType(species);
                            return;
                        }
                        return;
                    }
                    return;
                case 1:
                    if (!$assertionsDisabled && parts.length <= 3) {
                        throw new AssertionError();
                    }
                    String methodType = parts[3];
                    if (parts[1].equals(INVOKERS_HOLDER_CLASS_NAME)) {
                        if ("linkToTargetMethod".equals(parts[2]) || "linkToCallSite".equals(parts[2])) {
                            builder.addCallSiteType(methodType);
                            return;
                        } else if (parts[2].endsWith("nvoker")) {
                            builder.addInvokerType(methodType);
                            return;
                        } else {
                            builder.addLinkerType(methodType);
                            return;
                        }
                    }
                    if (parts[1].contains("DirectMethodHandle")) {
                        String dmh = parts[2];
                        if (DMH_METHOD_TYPE_MAP.containsKey(dmh)) {
                            builder.addDMHMethodType(dmh, methodType);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        });
        return builder.build();
    }

    static byte[] generateBasicFormsClassBytes(String className) {
        ArrayList<LambdaForm> forms = new ArrayList<>();
        ArrayList<String> names = new ArrayList<>();
        HashSet<String> dedupSet = new HashSet<>();
        for (LambdaForm.BasicType type : LambdaForm.BasicType.values()) {
            LambdaForm identity = LambdaForm.identityForm(type);
            String name = identity.kind.defaultLambdaName + ConstantDescs.DEFAULT_NAME + identity.returnType().basicTypeChar();
            if (dedupSet.add(name)) {
                names.add(name);
                forms.add(identity);
            }
            if (type != LambdaForm.BasicType.V_TYPE) {
                LambdaForm constant = LambdaForm.constantForm(type);
                String name2 = constant.kind.defaultLambdaName + ConstantDescs.DEFAULT_NAME + constant.returnType().basicTypeChar();
                if (dedupSet.add(name2)) {
                    names.add(name2);
                    forms.add(constant);
                }
            }
        }
        return generateCodeBytesForLFs(className, (String[]) names.toArray(new String[0]), (LambdaForm[]) forms.toArray(new LambdaForm[0]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x017b, code lost:
    
        r13 = r13 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] generateDirectMethodHandleHolderClassBytes(String className, MethodType[] methodTypes, int[] types) {
        ArrayList<LambdaForm> forms = new ArrayList<>();
        ArrayList<String> names = new ArrayList<>();
        for (int i10 = 0; i10 < methodTypes.length; i10++) {
            if ((types[i10] == 0 || types[i10] == 4) && (methodTypes[i10].parameterCount() < 1 || methodTypes[i10].parameterType(0) != Object.class)) {
                throw new InternalError("Invalid method type for " + (types[i10] == 0 ? "invokeVirtual" : "invokeInterface") + " DMH, needs at least two leading reference arguments: " + ((Object) methodTypes[i10]));
            }
            LambdaForm form = DirectMethodHandle.makePreparedLambdaForm(methodTypes[i10], types[i10]);
            forms.add(form);
            names.add(form.kind.defaultLambdaName);
        }
        Wrapper[] values = Wrapper.values();
        int length = values.length;
        int i11 = 0;
        while (i11 < length) {
            Wrapper wrapper = values[i11];
            int ftype = wrapper == Wrapper.VOID ? DirectMethodHandle.FT_CHECKED_REF : DirectMethodHandle.ftypeKind(wrapper.primitiveType());
            byte b10 = 0;
            while (true) {
                byte b11 = b10;
                if (b11 < 6) {
                    LambdaForm form2 = DirectMethodHandle.makePreparedFieldLambdaForm(b11, false, ftype);
                    if (form2.kind == LambdaForm.Kind.GENERIC) {
                        throw new InternalError(((int) b11) + " non-volatile " + ftype);
                    }
                    forms.add(form2);
                    names.add(form2.kind.defaultLambdaName);
                    LambdaForm form3 = DirectMethodHandle.makePreparedFieldLambdaForm(b11, true, ftype);
                    if (form3.kind == LambdaForm.Kind.GENERIC) {
                        throw new InternalError(((int) b11) + " volatile " + ftype);
                    }
                    forms.add(form3);
                    names.add(form3.kind.defaultLambdaName);
                    b10 = (byte) (b11 + 1);
                }
            }
        }
        return generateCodeBytesForLFs(className, (String[]) names.toArray(new String[0]), (LambdaForm[]) forms.toArray(new LambdaForm[0]));
    }

    static byte[] generateDelegatingMethodHandleHolderClassBytes(String className, MethodType[] methodTypes) {
        HashSet<MethodType> dedupSet = new HashSet<>();
        ArrayList<LambdaForm> forms = new ArrayList<>();
        ArrayList<String> names = new ArrayList<>();
        for (int i10 = 0; i10 < methodTypes.length; i10++) {
            if (dedupSet.add(methodTypes[i10])) {
                LambdaForm reinvoker = makeReinvokerFor(methodTypes[i10]);
                forms.add(reinvoker);
                String speciesSig = (String) BoundMethodHandle.speciesDataFor(reinvoker).key();
                if (!$assertionsDisabled && !speciesSig.equals("L")) {
                    throw new AssertionError();
                }
                names.add(reinvoker.kind.defaultLambdaName + ConstantDescs.DEFAULT_NAME + speciesSig);
                LambdaForm delegate = makeDelegateFor(methodTypes[i10]);
                forms.add(delegate);
                names.add(delegate.kind.defaultLambdaName);
            }
        }
        return generateCodeBytesForLFs(className, (String[]) names.toArray(new String[0]), (LambdaForm[]) forms.toArray(new LambdaForm[0]));
    }

    static byte[] generateInvokersHolderClassBytes(String className, MethodType[] linkerMethodTypes, MethodType[] invokerMethodTypes, MethodType[] callSiteMethodTypes) {
        HashSet<MethodType> dedupSet = new HashSet<>();
        ArrayList<LambdaForm> forms = new ArrayList<>();
        ArrayList<String> names = new ArrayList<>();
        int[] invokerTypes = {11, 13};
        for (MethodType methodType : invokerMethodTypes) {
            if (dedupSet.add(methodType)) {
                for (int type : invokerTypes) {
                    LambdaForm invokerForm = Invokers.invokeHandleForm(methodType, false, type);
                    forms.add(invokerForm);
                    names.add(invokerForm.kind.defaultLambdaName);
                }
            }
        }
        int[] linkerTypes = {10, 12};
        HashSet<MethodType> dedupSet2 = new HashSet<>();
        for (MethodType methodType2 : linkerMethodTypes) {
            if (dedupSet2.add(methodType2)) {
                for (int type2 : linkerTypes) {
                    LambdaForm linkerForm = Invokers.invokeHandleForm(methodType2, false, type2);
                    forms.add(linkerForm);
                    names.add(linkerForm.kind.defaultLambdaName);
                }
            }
        }
        HashSet<MethodType> dedupSet3 = new HashSet<>();
        for (int i10 = 0; i10 < callSiteMethodTypes.length; i10++) {
            if (dedupSet3.add(callSiteMethodTypes[i10])) {
                LambdaForm callSiteForm = Invokers.callSiteForm(callSiteMethodTypes[i10], true);
                forms.add(callSiteForm);
                names.add(callSiteForm.kind.defaultLambdaName);
                LambdaForm methodHandleForm = Invokers.callSiteForm(callSiteMethodTypes[i10], false);
                forms.add(methodHandleForm);
                names.add(methodHandleForm.kind.defaultLambdaName);
            }
        }
        return generateCodeBytesForLFs(className, (String[]) names.toArray(new String[0]), (LambdaForm[]) forms.toArray(new LambdaForm[0]));
    }

    private static byte[] generateCodeBytesForLFs(String className, String[] names, LambdaForm[] forms) {
        return ClassFile.of().build(ClassDesc.ofInternalName(className), clb -> {
            clb.withFlags(50).withSuperclass(InvokerBytecodeGenerator.INVOKER_SUPER_DESC).with(SourceFileAttribute.of(className.substring(className.lastIndexOf(47) + 1)));
            for (int i10 = 0; i10 < forms.length; i10++) {
                new InvokerBytecodeGenerator(className, names[i10], forms[i10], forms[i10].methodType()).addMethod(clb, false);
            }
        });
    }

    private static LambdaForm makeReinvokerFor(MethodType type) {
        MethodHandle emptyHandle = MethodHandles.empty(type);
        return DelegatingMethodHandle.makeReinvokerForm(emptyHandle, 7, BoundMethodHandle.speciesData_L(), BoundMethodHandle.speciesData_L().getterFunction(0));
    }

    private static LambdaForm makeDelegateFor(MethodType type) {
        MethodHandle handle = MethodHandles.empty(type);
        return DelegatingMethodHandle.makeReinvokerForm(handle, 8, DelegatingMethodHandle.class, DelegatingMethodHandle.NF_getTarget);
    }

    static Map.Entry<String, byte[]> generateConcreteBMHClassBytes(String types) {
        for (char c10 : types.toCharArray()) {
            if (!LambdaForm.BasicType.isArgBasicTypeChar(c10)) {
                throw new IllegalArgumentException("All characters must correspond to a basic field type: LIJFD");
            }
        }
        BoundMethodHandle.SpeciesData species = BoundMethodHandle.SPECIALIZER.findSpecies(types);
        String className = species.speciesCode().getName();
        ClassSpecializer.Factory factory = BoundMethodHandle.SPECIALIZER.factory();
        byte[] code = factory.generateConcreteSpeciesCodeFile(className, species);
        return Map.entry(className.replace('.', '/'), code);
    }
}
