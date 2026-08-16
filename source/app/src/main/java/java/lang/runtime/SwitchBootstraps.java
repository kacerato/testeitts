package java.lang.runtime;

import java.lang.Enum;
import java.lang.classfile.ClassFile;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.Label;
import java.lang.classfile.attribute.StackMapFrameInfo;
import java.lang.classfile.attribute.StackMapTableAttribute;
import java.lang.classfile.instruction.SwitchCase;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.CallSite;
import java.lang.invoke.ConstantCallSite;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.AccessFlag;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import jdk.internal.access.SharedSecrets;
import jdk.internal.classfile.impl.DirectCodeBuilder;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.misc.PreviewFeatures;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.Wrapper;

public final class SwitchBootstraps {
    private static final Object SENTINEL = new Object();
    private static final MethodHandles.Lookup LOOKUP = MethodHandles.lookup();
    private static final boolean previewEnabled = PreviewFeatures.isEnabled();
    private static final ClassDesc CD_BiPredicate = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/function/BiPredicate;");
    private static final ClassDesc CD_Objects = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/Objects;");
    private static final MethodTypeDesc CHECK_INDEX_DESCRIPTOR = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_int});
    private static final MethodTypeDesc MTD_TYPE_SWITCH = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_Object, ConstantDescs.CD_int});
    private static final MethodTypeDesc MTD_TYPE_SWITCH_EXTRA = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_Object, ConstantDescs.CD_int, CD_BiPredicate, ConstantDescs.CD_List});
    private static final MethodType MT_TYPE_SWITCH_EXTRA = MethodType.methodType(Integer.TYPE, (Class<?>) Object.class, (Class<?>[]) new Class[]{Integer.TYPE, BiPredicate.class, List.class});
    private static final MethodType MT_TYPE_SWITCH = MethodType.methodType(Integer.TYPE, (Class<?>) Object.class, (Class<?>[]) new Class[]{Integer.TYPE});
    private static final List<StackMapFrameInfo.VerificationTypeInfo> TYPE_SWITCH_LOCALS = List.of(StackMapFrameInfo.ObjectVerificationTypeInfo.of(ConstantDescs.CD_Object), StackMapFrameInfo.SimpleVerificationTypeInfo.INTEGER);
    private static final List<StackMapFrameInfo.VerificationTypeInfo> TYPE_SWITCH_EXTRA_LOCALS = List.of(StackMapFrameInfo.ObjectVerificationTypeInfo.of(ConstantDescs.CD_Object), StackMapFrameInfo.SimpleVerificationTypeInfo.INTEGER, StackMapFrameInfo.ObjectVerificationTypeInfo.of(CD_BiPredicate), StackMapFrameInfo.ObjectVerificationTypeInfo.of(ConstantDescs.CD_List));

    private SwitchBootstraps() {
    }

    private static class StaticHolders {
        private static final MethodHandle MAPPED_ENUM_SWITCH;

        private StaticHolders() {
        }

        static {
            try {
                MAPPED_ENUM_SWITCH = SwitchBootstraps.LOOKUP.findStatic(SwitchBootstraps.class, "mappedEnumSwitch", MethodType.methodType(Integer.TYPE, (Class<?>) Enum.class, (Class<?>[]) new Class[]{Integer.TYPE, MethodHandles.Lookup.class, Class.class, Enum.EnumDesc[].class, MappedEnumCache.class}));
            } catch (ReflectiveOperationException e10) {
                throw new ExceptionInInitializerError(e10);
            }
        }
    }

    public static CallSite typeSwitch(MethodHandles.Lookup lookup, String invocationName, MethodType invocationType, Object... labels) {
        Class<?> selectorType = invocationType.parameterType(0);
        if (invocationType.parameterCount() != 2 || !invocationType.returnType().equals(Integer.TYPE) || !invocationType.parameterType(1).equals(Integer.TYPE)) {
            throw new IllegalArgumentException("Illegal invocation type " + ((Object) invocationType));
        }
        for (Object l10 : labels) {
            verifyLabel(l10, selectorType);
        }
        MethodHandle target = generateTypeSwitch(lookup, selectorType, labels);
        return new ConstantCallSite(target.asType(invocationType));
    }

    private static void verifyLabel(Object label, Class<?> selectorType) {
        if (label == null) {
            throw new IllegalArgumentException("null label found");
        }
        Class<?> labelClass = label.getClass();
        if (labelClass != Class.class && labelClass != String.class && labelClass != Integer.class) {
            if (((labelClass != Float.class && labelClass != Long.class && labelClass != Double.class && labelClass != Boolean.class) || (((selectorType.equals(Boolean.TYPE) || selectorType.equals(Boolean.class)) && labelClass != Boolean.class && labelClass != Class.class) || !previewEnabled)) && labelClass != Enum.EnumDesc.class) {
                throw new IllegalArgumentException("label with illegal type found: " + ((Object) label.getClass()));
            }
        }
    }

    public static CallSite enumSwitch(MethodHandles.Lookup lookup, String invocationName, MethodType invocationType, Object... labels) {
        MethodHandle target;
        if (invocationType.parameterCount() != 2 || !invocationType.returnType().equals(Integer.TYPE) || invocationType.parameterType(0).isPrimitive() || !invocationType.parameterType(0).isEnum() || !invocationType.parameterType(1).equals(Integer.TYPE)) {
            throw new IllegalArgumentException("Illegal invocation type " + ((Object) invocationType));
        }
        Object[] labels2 = (Object[]) labels.clone();
        Class<?> enumClass = invocationType.parameterType(0);
        boolean constantsOnly = true;
        int len = labels2.length;
        for (int i10 = 0; i10 < len; i10++) {
            Object convertedLabel = convertEnumConstants(lookup, enumClass, labels2[i10]);
            labels2[i10] = convertedLabel;
            if (constantsOnly) {
                constantsOnly = convertedLabel instanceof Enum.EnumDesc;
            }
        }
        if (labels2.length > 0 && constantsOnly) {
            Enum.EnumDesc<?>[] enumDescLabels = (Enum.EnumDesc[]) Arrays.copyOf(labels2, labels2.length, Enum.EnumDesc[].class);
            target = MethodHandles.insertArguments(StaticHolders.MAPPED_ENUM_SWITCH, 2, lookup, enumClass, enumDescLabels, new MappedEnumCache());
        } else {
            target = generateTypeSwitch(lookup, invocationType.parameterType(0), labels2);
        }
        return new ConstantCallSite(target.asType(invocationType));
    }

    private static <E extends Enum<E>> Object convertEnumConstants(MethodHandles.Lookup lookup, Class<?> enumClassTemplate, Object label) {
        if (label == null) {
            throw new IllegalArgumentException("null label found");
        }
        Class<?> labelClass = label.getClass();
        if (labelClass == Class.class) {
            if (label != enumClassTemplate) {
                throw new IllegalArgumentException("the Class label: " + label + ", expected the provided enum class: " + ((Object) enumClassTemplate));
            }
            return label;
        }
        if (labelClass == String.class) {
            return Enum.EnumDesc.of(ConstantUtils.referenceClassDesc(enumClassTemplate), (String) label);
        }
        throw new IllegalArgumentException("label with illegal type found: " + ((Object) labelClass) + ", expected label of type either String or Class");
    }

    private static <T extends Enum<T>> int mappedEnumSwitch(T value, int restartIndex, MethodHandles.Lookup lookup, Class<T> enumClass, Enum.EnumDesc<?>[] labels, MappedEnumCache enumCache) throws Throwable {
        if (value == null) {
            return -1;
        }
        if (restartIndex != 0) {
            MethodHandle generatedSwitch = enumCache.generatedSwitch;
            if (generatedSwitch == null) {
                synchronized (enumCache) {
                    generatedSwitch = enumCache.generatedSwitch;
                    if (generatedSwitch == null) {
                        generatedSwitch = generateTypeSwitch(lookup, enumClass, labels).asType(MethodType.methodType(Integer.TYPE, (Class<?>) Enum.class, (Class<?>[]) new Class[]{Integer.TYPE}));
                        enumCache.generatedSwitch = generatedSwitch;
                    }
                }
            }
            return (int) generatedSwitch.invokeExact(value, restartIndex);
        }
        int[] constantsMap = enumCache.constantsMap;
        if (constantsMap == null) {
            synchronized (enumCache) {
                constantsMap = enumCache.constantsMap;
                if (constantsMap == null) {
                    Enum[] enumConstantsShared = SharedSecrets.getJavaLangAccess().getEnumConstantsShared(enumClass);
                    constantsMap = new int[enumConstantsShared.length];
                    int ordinal = 0;
                    for (Enum r02 : enumConstantsShared) {
                        constantsMap[ordinal] = labels.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= labels.length) {
                                break;
                            }
                            if (!Objects.equals(labels[i10].constantName(), r02.name())) {
                                i10++;
                            } else {
                                constantsMap[ordinal] = i10;
                                break;
                            }
                        }
                        ordinal++;
                    }
                    enumCache.constantsMap = constantsMap;
                }
            }
        }
        return constantsMap[value.ordinal()];
    }

    public static final class ResolvedEnumLabels implements BiPredicate<Integer, Object> {
        private final MethodHandles.Lookup lookup;
        private final Enum.EnumDesc<?>[] enumDescs;

        @Stable
        private final Object[] resolvedEnum;

        public ResolvedEnumLabels(MethodHandles.Lookup lookup, Enum.EnumDesc<?>[] enumDescs) {
            this.lookup = lookup;
            this.enumDescs = enumDescs;
            this.resolvedEnum = new Object[enumDescs.length];
        }

        @Override
        public boolean test(Integer labelIndex, Object value) {
            Object result = this.resolvedEnum[labelIndex.intValue()];
            if (result == null) {
                try {
                } catch (IllegalArgumentException | ReflectiveOperationException e10) {
                    result = SwitchBootstraps.SENTINEL;
                }
                if (!(value instanceof Enum)) {
                    return false;
                }
                Enum<?> enumValue = (Enum) value;
                Enum.EnumDesc<?> label = this.enumDescs[labelIndex.intValue()];
                Class<?> clazz = label.constantType().resolveConstantDesc(this.lookup);
                if (enumValue.getDeclaringClass() != clazz) {
                    return false;
                }
                result = label.resolveConstantDesc(this.lookup);
                this.resolvedEnum[labelIndex.intValue()] = result;
            }
            return result == value;
        }
    }

    private static final class MappedEnumCache {

        @Stable
        public int[] constantsMap;

        @Stable
        public MethodHandle generatedSwitch;

        private MappedEnumCache() {
        }
    }

    private static boolean needsExtraInfo(Class<?> selectorType, Object[] labelConstants) {
        for (int idx = labelConstants.length - 1; idx >= 0; idx--) {
            Object currentLabel = labelConstants[idx];
            if (currentLabel instanceof Class) {
                Class<?> classLabel = (Class) currentLabel;
                if (!unconditionalExactnessCheck(selectorType, classLabel) && !classLabel.isPrimitive()) {
                    while (classLabel.isArray()) {
                        classLabel = classLabel.getComponentType();
                    }
                    if (classLabel.isHidden()) {
                        return true;
                    }
                }
            } else if (currentLabel instanceof Enum.EnumDesc) {
                return true;
            }
        }
        return false;
    }

    private static Consumer<CodeBuilder> generateTypeSwitchSkeleton(Class<?> selectorType, Object[] labelConstants, List<Enum.EnumDesc<?>> enumDescs, List<Class<?>> extraClassLabels) {
        int SELECTOR_OBJ = 0;
        int RESTART_IDX = 1;
        int ENUM_CACHE = 2;
        int EXTRA_CLASS_LABELS = 3;
        List<StackMapFrameInfo.VerificationTypeInfo> locals = (enumDescs == null && extraClassLabels == null) ? TYPE_SWITCH_LOCALS : TYPE_SWITCH_EXTRA_LOCALS;
        return cb2 -> {
            Label next;
            ArrayList<StackMapFrameInfo> stackMapFrames = new ArrayList<>(labelConstants.length * 2);
            cb2.iload(RESTART_IDX).loadConstant(labelConstants.length + 1).invokestatic(CD_Objects, "checkIndex", CHECK_INDEX_DESCRIPTOR).pop().aload(SELECTOR_OBJ);
            Label nonNullLabel = cb2.newLabel();
            cb2.ifnonnull(nonNullLabel).iconst_m1().ireturn().labelBinding(nonNullLabel);
            stackMapFrames.add(StackMapFrameInfo.of(nonNullLabel, locals, List.of()));
            if (labelConstants.length == 0) {
                cb2.loadConstant(0).ireturn().with(StackMapTableAttribute.of(stackMapFrames));
                DirectCodeBuilder.withMaxs(cb2, 2, locals.size());
                return;
            }
            cb2.iload(RESTART_IDX);
            Label dflt = cb2.newLabel();
            Label[] caseTargets = new Label[labelConstants.length];
            Label[] caseNext = new Label[labelConstants.length];
            Object[] caseLabels = new Object[labelConstants.length];
            SwitchCase[] switchCases = new SwitchCase[labelConstants.length];
            Object lastLabel = null;
            for (int idx = labelConstants.length - 1; idx >= 0; idx--) {
                Object currentLabel = labelConstants[idx];
                Label target = cb2.newLabel();
                stackMapFrames.add(StackMapFrameInfo.of(target, locals, List.of()));
                if (lastLabel == null) {
                    next = dflt;
                } else if (lastLabel.equals(currentLabel)) {
                    next = caseNext[idx + 1];
                } else {
                    next = caseTargets[idx + 1];
                }
                lastLabel = currentLabel;
                caseTargets[idx] = target;
                caseNext[idx] = next;
                caseLabels[idx] = currentLabel;
                switchCases[idx] = SwitchCase.of(idx, target);
            }
            cb2.tableswitch(0, labelConstants.length - 1, dflt, Arrays.asList(switchCases));
            for (int idx2 = 0; idx2 < labelConstants.length; idx2++) {
                Label next2 = caseNext[idx2];
                Object caseLabel = caseLabels[idx2];
                cb2.labelBinding(caseTargets[idx2]);
                if (caseLabel instanceof Class) {
                    Class<?> classLabel = (Class) caseLabel;
                    if (isNotValidPair(selectorType, caseLabel)) {
                        cb2.goto_(next2);
                    } else if (!unconditionalExactnessCheck(selectorType, classLabel)) {
                        if (classLabel.isPrimitive()) {
                            if (!selectorType.isPrimitive() && !Wrapper.isWrapperNumericOrBooleanType(selectorType)) {
                                cb2.aload(SELECTOR_OBJ).instanceOf(Wrapper.forBasicType(classLabel).wrapperClassDescriptor()).ifeq(next2);
                            } else if (!unconditionalExactnessCheck(Wrapper.asPrimitiveType(selectorType), classLabel)) {
                                Label notNumber = cb2.newLabel();
                                cb2.aload(SELECTOR_OBJ).instanceOf(ConstantDescs.CD_Number);
                                if (selectorType == Long.TYPE || selectorType == Float.TYPE || selectorType == Double.TYPE || selectorType == Long.class || selectorType == Float.class || selectorType == Double.class) {
                                    cb2.ifeq(next2);
                                } else {
                                    cb2.ifeq(notNumber);
                                }
                                cb2.aload(SELECTOR_OBJ).checkcast(ConstantDescs.CD_Number);
                                if (selectorType == Long.TYPE || selectorType == Long.class) {
                                    cb2.invokevirtual(ConstantDescs.CD_Number, "longValue", MethodTypeDesc.of(ConstantDescs.CD_long));
                                } else if (selectorType == Float.TYPE || selectorType == Float.class) {
                                    cb2.invokevirtual(ConstantDescs.CD_Number, "floatValue", MethodTypeDesc.of(ConstantDescs.CD_float));
                                } else if (selectorType == Double.TYPE || selectorType == Double.class) {
                                    cb2.invokevirtual(ConstantDescs.CD_Number, "doubleValue", MethodTypeDesc.of(ConstantDescs.CD_double));
                                } else {
                                    Label compare = cb2.newLabel();
                                    cb2.invokevirtual(ConstantDescs.CD_Number, "intValue", MethodTypeDesc.of(ConstantDescs.CD_int)).goto_(compare).labelBinding(notNumber);
                                    stackMapFrames.add(StackMapFrameInfo.of(notNumber, locals, List.of()));
                                    cb2.aload(SELECTOR_OBJ).instanceOf(ConstantDescs.CD_Character).ifeq(next2).aload(SELECTOR_OBJ).checkcast(ConstantDescs.CD_Character).invokevirtual(ConstantDescs.CD_Character, "charValue", MethodTypeDesc.of(ConstantDescs.CD_char)).labelBinding(compare);
                                    stackMapFrames.add(StackMapFrameInfo.of(compare, locals, List.of(StackMapFrameInfo.SimpleVerificationTypeInfo.INTEGER)));
                                }
                                TypePairs typePair = TypePairs.of(Wrapper.asPrimitiveType(selectorType), classLabel);
                                String methodName = TypePairs.typePairToName.get(typePair);
                                cb2.invokestatic(ConstantUtils.referenceClassDesc(ExactConversionsSupport.class), methodName, MethodTypeDesc.of(ConstantDescs.CD_boolean, ConstantUtils.classDesc(typePair.from))).ifeq(next2);
                            }
                        } else {
                            Optional<ClassDesc> classLabelConstableOpt = classLabel.describeConstable();
                            if (classLabelConstableOpt.isPresent()) {
                                cb2.aload(SELECTOR_OBJ).instanceOf((ClassDesc) classLabelConstableOpt.orElseThrow()).ifeq(next2);
                            } else {
                                cb2.aload(EXTRA_CLASS_LABELS).loadConstant(extraClassLabels.size()).invokeinterface(ConstantDescs.CD_List, "get", MethodTypeDesc.of(ConstantDescs.CD_Object, ConstantDescs.CD_int)).checkcast(ConstantDescs.CD_Class).aload(SELECTOR_OBJ).invokevirtual(ConstantDescs.CD_Class, "isInstance", MethodTypeDesc.of(ConstantDescs.CD_boolean, ConstantDescs.CD_Object)).ifeq(next2);
                                extraClassLabels.add(classLabel);
                            }
                        }
                    }
                } else if (caseLabel instanceof Enum.EnumDesc) {
                    Enum.EnumDesc<?> enumLabel = (Enum.EnumDesc) caseLabel;
                    int enumIdx = enumDescs.size();
                    enumDescs.add(enumLabel);
                    cb2.aload(ENUM_CACHE).loadConstant(enumIdx).invokestatic(ConstantDescs.CD_Integer, "valueOf", MethodTypeDesc.of(ConstantDescs.CD_Integer, ConstantDescs.CD_int)).aload(SELECTOR_OBJ).invokeinterface(CD_BiPredicate, "test", MethodTypeDesc.of(ConstantDescs.CD_boolean, ConstantDescs.CD_Object, ConstantDescs.CD_Object)).ifeq(next2);
                } else if (caseLabel instanceof String) {
                    String stringLabel = (String) caseLabel;
                    cb2.ldc(stringLabel).aload(SELECTOR_OBJ).invokevirtual(ConstantDescs.CD_Object, "equals", MethodTypeDesc.of(ConstantDescs.CD_boolean, ConstantDescs.CD_Object)).ifeq(next2);
                } else if (caseLabel instanceof Integer) {
                    Integer integerLabel = (Integer) caseLabel;
                    Label compare2 = cb2.newLabel();
                    Label notNumber2 = cb2.newLabel();
                    cb2.aload(SELECTOR_OBJ).instanceOf(ConstantDescs.CD_Number).ifeq(notNumber2).aload(SELECTOR_OBJ).checkcast(ConstantDescs.CD_Number).invokevirtual(ConstantDescs.CD_Number, "intValue", MethodTypeDesc.of(ConstantDescs.CD_int)).goto_(compare2).labelBinding(notNumber2);
                    stackMapFrames.add(StackMapFrameInfo.of(notNumber2, locals, List.of()));
                    cb2.aload(SELECTOR_OBJ).instanceOf(ConstantDescs.CD_Character).ifeq(next2).aload(SELECTOR_OBJ).checkcast(ConstantDescs.CD_Character).invokevirtual(ConstantDescs.CD_Character, "charValue", MethodTypeDesc.of(ConstantDescs.CD_char)).labelBinding(compare2);
                    stackMapFrames.add(StackMapFrameInfo.of(compare2, locals, List.of(StackMapFrameInfo.SimpleVerificationTypeInfo.INTEGER)));
                    cb2.loadConstant(integerLabel).if_icmpne(next2);
                } else if ((caseLabel instanceof Long) || (caseLabel instanceof Float) || (caseLabel instanceof Double) || (caseLabel instanceof Boolean)) {
                    if (caseLabel instanceof Boolean) {
                        Boolean c10 = (Boolean) caseLabel;
                        cb2.loadConstant(c10.booleanValue() ? 1 : 0);
                    } else {
                        cb2.loadConstant((ConstantDesc) caseLabel);
                    }
                    Wrapper caseLabelWrapper = Wrapper.forWrapperType(caseLabel.getClass());
                    cb2.invokestatic(caseLabelWrapper.wrapperClassDescriptor(), "valueOf", MethodTypeDesc.of(caseLabelWrapper.wrapperClassDescriptor(), caseLabelWrapper.basicClassDescriptor())).aload(SELECTOR_OBJ).invokevirtual(ConstantDescs.CD_Object, "equals", MethodTypeDesc.of(ConstantDescs.CD_boolean, ConstantDescs.CD_Object)).ifeq(next2);
                } else {
                    throw new InternalError("Unsupported label type: " + ((Object) caseLabel.getClass()));
                }
                cb2.loadConstant(idx2).ireturn();
            }
            stackMapFrames.add(StackMapFrameInfo.of(dflt, locals, List.of()));
            cb2.labelBinding(dflt).loadConstant(labelConstants.length).ireturn().with(StackMapTableAttribute.of(stackMapFrames));
            DirectCodeBuilder.withMaxs(cb2, 3, locals.size());
        };
    }

    private static boolean isNotValidPair(Class<?> selectorType, Object caseLabel) {
        return !(selectorType != Boolean.TYPE || caseLabel == Boolean.TYPE || caseLabel == Boolean.class) || (selectorType != Boolean.TYPE && selectorType.isPrimitive() && (caseLabel == Boolean.TYPE || caseLabel == Boolean.class));
    }

    private static MethodHandle generateTypeSwitch(MethodHandles.Lookup caller, Class<?> selectorType, Object[] labelConstants) {
        boolean addExtraInfo = needsExtraInfo(selectorType, labelConstants);
        List<Enum.EnumDesc<?>> enumDescs = addExtraInfo ? new ArrayList<>() : null;
        List<Class<?>> extraClassLabels = addExtraInfo ? new ArrayList<>() : null;
        byte[] classBytes = ClassFile.of(ClassFile.StackMapsOption.DROP_STACK_MAPS).build(ConstantUtils.binaryNameToDesc(typeSwitchClassName(caller.lookupClass())), clb -> {
            clb.withFlags(AccessFlag.FINAL, AccessFlag.SUPER, AccessFlag.SYNTHETIC).withMethodBody("typeSwitch", addExtraInfo ? MTD_TYPE_SWITCH_EXTRA : MTD_TYPE_SWITCH, 25, generateTypeSwitchSkeleton(selectorType, labelConstants, enumDescs, extraClassLabels));
        });
        try {
            MethodHandles.Lookup lookup = caller.defineHiddenClass(classBytes, true, MethodHandles.Lookup.ClassOption.NESTMATE, MethodHandles.Lookup.ClassOption.STRONG);
            MethodHandle typeSwitch = lookup.findStatic(lookup.lookupClass(), "typeSwitch", addExtraInfo ? MT_TYPE_SWITCH_EXTRA : MT_TYPE_SWITCH);
            if (addExtraInfo) {
                typeSwitch = MethodHandles.insertArguments(typeSwitch, 2, new ResolvedEnumLabels(caller, (Enum.EnumDesc[]) enumDescs.toArray(new Enum.EnumDesc[0])), List.copyOf(extraClassLabels));
            }
            return typeSwitch;
        } catch (Throwable t10) {
            throw new IllegalArgumentException(t10);
        }
    }

    private static String typeSwitchClassName(Class<?> targetClass) {
        String name = targetClass.getName();
        if (targetClass.isHidden()) {
            name = name.replace('/', '_');
        }
        return name + "$$TypeSwitch";
    }

    private static boolean unconditionalExactnessCheck(Class<?> selectorType, Class<?> targetType) {
        Wrapper selectorWrapper = Wrapper.forBasicType(selectorType);
        Wrapper targetWrapper = Wrapper.forBasicType(targetType);
        if ((selectorType.isPrimitive() && targetType.equals(selectorWrapper.wrapperType())) || selectorType.equals(targetType)) {
            return true;
        }
        if (targetType.isPrimitive() && selectorType.isPrimitive() && selectorWrapper.isStrictSubRangeOf(targetWrapper)) {
            if (!selectorType.equals(Byte.TYPE) || !targetType.equals(Character.TYPE)) {
                if (!selectorType.equals(Integer.TYPE) || !targetType.equals(Float.TYPE)) {
                    if (selectorType.equals(Long.TYPE)) {
                        return (targetType.equals(Double.TYPE) || targetType.equals(Float.TYPE)) ? false : true;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public static final class TypePairs extends Record {
        private final Class<?> from;
        private final Class<?> to;
        private static final Map<TypePairs, String> typePairToName = initialize();

        TypePairs(Class<?> from, Class<?> to) {
            this.from = from;
            this.to = to;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, TypePairs.class), TypePairs.class, "from;to", "FIELD:Ljava/lang/runtime/SwitchBootstraps$TypePairs;->from:Ljava/lang/Class;", "FIELD:Ljava/lang/runtime/SwitchBootstraps$TypePairs;->to:Ljava/lang/Class;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        public Class<?> from() {
            return this.from;
        }

        public Class<?> to() {
            return this.to;
        }

        public static TypePairs of(Class<?> from, Class<?> to) {
            if (from == Byte.TYPE || from == Short.TYPE || from == Character.TYPE) {
                from = Integer.TYPE;
            }
            return new TypePairs(from, to);
        }

        @Override
        public int hashCode() {
            return (31 * this.from.hashCode()) + this.to.hashCode();
        }

        @Override
        public boolean equals(Object other) {
            if (!(other instanceof TypePairs)) {
                return false;
            }
            TypePairs otherPair = (TypePairs) other;
            return otherPair.from == this.from && otherPair.to == this.to;
        }

        public static Map<TypePairs, String> initialize() {
            Map<TypePairs, String> typePairToName2 = new HashMap<>();
            typePairToName2.put(new TypePairs(Byte.TYPE, Character.TYPE), "isIntToCharExact");
            typePairToName2.put(new TypePairs(Short.TYPE, Byte.TYPE), "isIntToByteExact");
            typePairToName2.put(new TypePairs(Short.TYPE, Character.TYPE), "isIntToCharExact");
            typePairToName2.put(new TypePairs(Character.TYPE, Byte.TYPE), "isIntToByteExact");
            typePairToName2.put(new TypePairs(Character.TYPE, Short.TYPE), "isIntToShortExact");
            typePairToName2.put(new TypePairs(Integer.TYPE, Byte.TYPE), "isIntToByteExact");
            typePairToName2.put(new TypePairs(Integer.TYPE, Short.TYPE), "isIntToShortExact");
            typePairToName2.put(new TypePairs(Integer.TYPE, Character.TYPE), "isIntToCharExact");
            typePairToName2.put(new TypePairs(Integer.TYPE, Float.TYPE), "isIntToFloatExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Byte.TYPE), "isLongToByteExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Short.TYPE), "isLongToShortExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Character.TYPE), "isLongToCharExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Integer.TYPE), "isLongToIntExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Float.TYPE), "isLongToFloatExact");
            typePairToName2.put(new TypePairs(Long.TYPE, Double.TYPE), "isLongToDoubleExact");
            typePairToName2.put(new TypePairs(Float.TYPE, Byte.TYPE), "isFloatToByteExact");
            typePairToName2.put(new TypePairs(Float.TYPE, Short.TYPE), "isFloatToShortExact");
            typePairToName2.put(new TypePairs(Float.TYPE, Character.TYPE), "isFloatToCharExact");
            typePairToName2.put(new TypePairs(Float.TYPE, Integer.TYPE), "isFloatToIntExact");
            typePairToName2.put(new TypePairs(Float.TYPE, Long.TYPE), "isFloatToLongExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Byte.TYPE), "isDoubleToByteExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Short.TYPE), "isDoubleToShortExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Character.TYPE), "isDoubleToCharExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Integer.TYPE), "isDoubleToIntExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Long.TYPE), "isDoubleToLongExact");
            typePairToName2.put(new TypePairs(Double.TYPE, Float.TYPE), "isDoubleToFloatExact");
            return typePairToName2;
        }
    }
}
