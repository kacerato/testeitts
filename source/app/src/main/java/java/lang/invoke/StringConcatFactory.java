package java.lang.invoke;

import com.jme3.audio.openal.AL;
import java.lang.classfile.Annotation;
import java.lang.classfile.AnnotationElement;
import java.lang.classfile.ClassBuilder;
import java.lang.classfile.ClassFile;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.MethodBuilder;
import java.lang.classfile.TypeKind;
import java.lang.classfile.attribute.RuntimeVisibleAnnotationsAttribute;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.MethodHandles;
import java.lang.ref.SoftReference;
import java.lang.runtime.ObjectMethods;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Supplier;
import jdk.internal.access.JavaLangAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.misc.VM;
import jdk.internal.util.ClassFileDumper;
import jdk.internal.util.ReferenceKey;
import jdk.internal.util.ReferencedKeyMap;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.Wrapper;

public final class StringConcatFactory {
    private static final int HIGH_ARITY_THRESHOLD;
    private static final int CACHE_THRESHOLD;
    private static final int FORCE_INLINE_THRESHOLD;
    private static final char TAG_ARG = 1;
    private static final char TAG_CONST = 2;
    private static final int MAX_INDY_CONCAT_ARG_SLOTS = 200;
    private static final JavaLangAccess JLA;
    private static final int INT_IDX = 0;
    private static final int CHAR_IDX = 1;
    private static final int LONG_IDX = 2;
    private static final int BOOLEAN_IDX = 3;
    private static final int STRING_IDX = 4;
    private static final int TYPE_COUNT = 5;
    private static final int[] PREPEND_FILTER_FIRST_ARGS;
    private static final int[] PREPEND_FILTER_SECOND_ARGS;
    private static final int[] PREPEND_FILTER_THIRD_ARGS;
    private static final int[] PREPEND_FILTER_FIRST_PAIR_ARGS;
    private static final int[] PREPEND_FILTER_SECOND_PAIR_ARGS;

    @Stable
    private static MethodHandle PREPEND_BASE;

    @Stable
    private static final MethodHandle[][] DOUBLE_PREPENDERS;
    private static final int[] MIX_FILTER_SECOND_ARGS;
    private static final int[] MIX_FILTER_THIRD_ARGS;
    private static final int[] MIX_FILTER_SECOND_PAIR_ARGS;

    @Stable
    private static final MethodHandle[][] DOUBLE_MIXERS;

    @Stable
    private static MethodHandle SIMPLE_CONCAT;

    @Stable
    private static MethodHandle NEW_STRING;

    @Stable
    private static MethodHandle NEW_ARRAY_SUFFIX;

    @Stable
    private static MethodHandle OBJECT_STRINGIFIER;

    @Stable
    private static MethodHandle FLOAT_STRINGIFIER;

    @Stable
    private static MethodHandle DOUBLE_STRINGIFIER;

    @Stable
    private static MethodHandle INT_STRINGIFIER;

    @Stable
    private static MethodHandle LONG_STRINGIFIER;

    @Stable
    private static MethodHandle CHAR_STRINGIFIER;

    @Stable
    private static MethodHandle BOOLEAN_STRINGIFIER;

    @Stable
    private static MethodHandle NEW_STRINGIFIER;

    @Stable
    private static final MethodHandle[] NO_PREFIX_PREPENDERS;

    @Stable
    private static final MethodHandle[] PREPENDERS;

    @Stable
    private static final MethodHandle[] MIXERS;
    private static final long INITIAL_CODER;

    static {
        String highArity = VM.getSavedProperty("java.lang.invoke.StringConcat.highArityThreshold");
        HIGH_ARITY_THRESHOLD = highArity != null ? Integer.parseInt(highArity) : 0;
        String cacheThreshold = VM.getSavedProperty("java.lang.invoke.StringConcat.cacheThreshold");
        CACHE_THRESHOLD = cacheThreshold != null ? Integer.parseInt(cacheThreshold) : 256;
        String inlineThreshold = VM.getSavedProperty("java.lang.invoke.StringConcat.inlineThreshold");
        FORCE_INLINE_THRESHOLD = inlineThreshold != null ? Integer.parseInt(inlineThreshold) : 16;
        JLA = SharedSecrets.getJavaLangAccess();
        PREPEND_FILTER_FIRST_ARGS = new int[]{0, 1, 2};
        PREPEND_FILTER_SECOND_ARGS = new int[]{0, 1, 3};
        PREPEND_FILTER_THIRD_ARGS = new int[]{0, 1, 4};
        PREPEND_FILTER_FIRST_PAIR_ARGS = new int[]{0, 1, 2, 3};
        PREPEND_FILTER_SECOND_PAIR_ARGS = new int[]{0, 1, 4, 5};
        DOUBLE_PREPENDERS = new MethodHandle[5][5];
        MIX_FILTER_SECOND_ARGS = new int[]{0, 2};
        MIX_FILTER_THIRD_ARGS = new int[]{0, 3};
        MIX_FILTER_SECOND_PAIR_ARGS = new int[]{0, 3, 4};
        DOUBLE_MIXERS = new MethodHandle[5][5];
        NO_PREFIX_PREPENDERS = new MethodHandle[5];
        PREPENDERS = new MethodHandle[5];
        MIXERS = new MethodHandle[5];
        INITIAL_CODER = JLA.stringConcatInitialCoder();
    }

    public static CallSite makeConcat(MethodHandles.Lookup lookup, String name, MethodType concatType) throws StringConcatException {
        String recipe = "\u0001".repeat(concatType.parameterCount());
        return makeConcatWithConstants(lookup, name, concatType, recipe, new Object[0]);
    }

    public static CallSite makeConcatWithConstants(MethodHandles.Lookup lookup, String name, MethodType concatType, String recipe, Object... constants) throws StringConcatException {
        Objects.requireNonNull(lookup, "Lookup is null");
        Objects.requireNonNull(name, "Name is null");
        Objects.requireNonNull(recipe, "Recipe is null");
        Objects.requireNonNull(concatType, "Concat type is null");
        Objects.requireNonNull(constants, "Constants are null");
        for (Object o10 : constants) {
            Objects.requireNonNull(o10, "Cannot accept null constants");
        }
        if ((lookup.lookupModes() & 2) == 0) {
            throw new StringConcatException("Invalid caller: " + lookup.lookupClass().getName());
        }
        String[] constantStrings = parseRecipe(concatType, recipe, constants);
        if (!concatType.returnType().isAssignableFrom(String.class)) {
            throw new StringConcatException("The return type should be compatible with String, but it is " + ((Object) concatType.returnType()));
        }
        if (concatType.parameterSlotCount() > 200) {
            throw new StringConcatException("Too many concat argument slots: " + concatType.parameterSlotCount() + ", can only accept 200");
        }
        try {
            MethodHandle mh2 = makeSimpleConcat(concatType, constantStrings);
            if (mh2 == null && concatType.parameterCount() <= HIGH_ARITY_THRESHOLD) {
                mh2 = generateMHInlineCopy(concatType, constantStrings);
            }
            if (mh2 == null) {
                mh2 = InlineHiddenClassStrategy.generate(lookup, concatType, constantStrings);
            }
            return new ConstantCallSite(mh2.viewAsType(concatType, true));
        } catch (Error e10) {
            throw e10;
        } catch (Throwable t10) {
            throw new StringConcatException("Generator failed", t10);
        }
    }

    private static String[] parseRecipe(MethodType concatType, String recipe, Object[] constants) throws StringConcatException {
        Objects.requireNonNull(recipe, "Recipe is null");
        int paramCount = concatType.parameterCount();
        String[] consts = new String[paramCount + 1];
        int cCount = 0;
        int oCount = 0;
        StringBuilder acc = new StringBuilder();
        for (int i10 = 0; i10 < recipe.length(); i10++) {
            char c10 = recipe.charAt(i10);
            if (c10 == 2) {
                if (cCount == constants.length) {
                    throw constantMismatch(constants, cCount);
                }
                int i11 = cCount;
                cCount++;
                acc.append(constants[i11]);
            } else if (c10 == 1) {
                if (oCount >= paramCount) {
                    throw argumentMismatch(concatType, oCount);
                }
                int i12 = oCount;
                oCount++;
                consts[i12] = acc.length() > 0 ? acc.toString() : "";
                acc.setLength(0);
            } else {
                acc.append(c10);
            }
        }
        if (oCount != concatType.parameterCount()) {
            throw argumentMismatch(concatType, oCount);
        }
        if (cCount < constants.length) {
            throw constantMismatch(constants, cCount);
        }
        consts[oCount] = acc.length() > 0 ? acc.toString() : "";
        return consts;
    }

    private static StringConcatException argumentMismatch(MethodType concatType, int oCount) {
        return new StringConcatException("Mismatched number of concat arguments: recipe wants " + oCount + " arguments, but signature provides " + concatType.parameterCount());
    }

    private static StringConcatException constantMismatch(Object[] constants, int cCount) {
        return new StringConcatException("Mismatched number of concat constants: recipe wants " + cCount + " constants, but only " + constants.length + " are passed");
    }

    private static MethodHandle makeSimpleConcat(MethodType mt, String[] constants) {
        int paramCount = mt.parameterCount();
        String suffix = constants[paramCount];
        if (paramCount == 0) {
            MethodHandle newStringifier = newStringifier();
            Object[] objArr = new Object[1];
            objArr[0] = suffix == null ? "" : suffix;
            return MethodHandles.insertArguments(newStringifier, 0, objArr);
        }
        if (paramCount == 1) {
            String prefix = constants[0];
            if (prefix.isEmpty()) {
                if (suffix.isEmpty()) {
                    return unaryConcat(mt.parameterType(0));
                }
                if (mt.hasPrimitives()) {
                    return null;
                }
                return MethodHandles.insertArguments(simpleConcat(), 1, suffix);
            }
            if (!suffix.isEmpty() || mt.hasPrimitives()) {
                return null;
            }
            return MethodHandles.insertArguments(simpleConcat(), 0, prefix);
        }
        if (paramCount == 2 && !mt.hasPrimitives() && suffix.isEmpty() && constants[0].isEmpty() && constants[1].isEmpty()) {
            return simpleConcat();
        }
        return null;
    }

    private static MethodHandle generateMHInlineCopy(MethodType mt, String[] constants) {
        int paramCount = mt.parameterCount();
        String suffix = constants[paramCount];
        Class<?>[] ptypes = mt.erase().parameterArray();
        MethodHandle[] objFilters = null;
        MethodHandle[] floatFilters = null;
        MethodHandle[] doubleFilters = null;
        for (int i10 = 0; i10 < ptypes.length; i10++) {
            Class<?> cl2 = ptypes[i10];
            ptypes[i10] = promoteToIntType(ptypes[i10]);
            if (cl2 == Object.class) {
                if (objFilters == null) {
                    objFilters = new MethodHandle[ptypes.length];
                }
                objFilters[i10] = objectStringifier();
                ptypes[i10] = String.class;
            } else if (cl2 == Float.TYPE) {
                if (floatFilters == null) {
                    floatFilters = new MethodHandle[ptypes.length];
                }
                floatFilters[i10] = floatStringifier();
                ptypes[i10] = String.class;
            } else if (cl2 == Double.TYPE) {
                if (doubleFilters == null) {
                    doubleFilters = new MethodHandle[ptypes.length];
                }
                doubleFilters[i10] = doubleStringifier();
                ptypes[i10] = String.class;
            }
        }
        MethodHandle mh2 = MethodHandles.dropArgumentsTrusted(newString(), 2, ptypes);
        long initialLengthCoder = INITIAL_CODER;
        for (String constant : constants) {
            if (constant != null) {
                initialLengthCoder = JLA.stringConcatMix(initialLengthCoder, constant);
            }
        }
        MethodHandle mh3 = filterInPrependers(mh2, constants, ptypes);
        if (suffix == null || suffix.isEmpty()) {
            suffix = "";
        }
        MethodHandle newArrayCombinator = newArrayWithSuffix(suffix);
        MethodHandle mh4 = filterAndFoldInMixers(MethodHandles.foldArgumentsWithCombiner(mh3, 0, newArrayCombinator, 1), initialLengthCoder - suffix.length(), ptypes);
        if (objFilters != null) {
            mh4 = MethodHandles.filterArguments(mh4, 0, objFilters);
        }
        if (floatFilters != null) {
            mh4 = MethodHandles.filterArguments(mh4, 0, floatFilters);
        }
        if (doubleFilters != null) {
            mh4 = MethodHandles.filterArguments(mh4, 0, doubleFilters);
        }
        return mh4;
    }

    private static MethodHandle filterInPrependers(MethodHandle mh2, String[] constants, Class<?>[] ptypes) {
        int[] argPositions = null;
        int pos = 0;
        while (pos < ptypes.length - 3) {
            MethodHandle prepend = prepender(pos, constants, ptypes, 4);
            argPositions = filterPrependArgPositions(argPositions, pos, 4);
            mh2 = MethodHandles.filterArgumentsWithCombiner(mh2, 1, prepend, argPositions);
            pos += 4;
        }
        if (pos < ptypes.length) {
            int count = ptypes.length - pos;
            MethodHandle prepend2 = prepender(pos, constants, ptypes, count);
            mh2 = MethodHandles.filterArgumentsWithCombiner(mh2, 1, prepend2, filterPrependArgPositions(argPositions, pos, count));
        }
        return mh2;
    }

    static int[] filterPrependArgPositions(int[] argPositions, int pos, int count) {
        if (argPositions == null || argPositions.length != count + 2) {
            argPositions = new int[count + 2];
            argPositions[0] = 1;
            argPositions[1] = 0;
        }
        int limit = count + 2;
        for (int i10 = 2; i10 < limit; i10++) {
            argPositions[i10] = i10 + pos;
        }
        return argPositions;
    }

    private static MethodHandle filterAndFoldInMixers(MethodHandle mh2, long initialLengthCoder, Class<?>[] ptypes) {
        int[] argPositions = null;
        int pos = 0;
        while (pos < ptypes.length - 4) {
            MethodHandle mix = mixer(ptypes[pos], ptypes[pos + 1], ptypes[pos + 2], ptypes[pos + 3]);
            argPositions = filterMixerArgPositions(argPositions, pos, 4);
            mh2 = MethodHandles.filterArgumentsWithCombiner(mh2, 0, mix, argPositions);
            pos += 4;
        }
        if (pos < ptypes.length) {
            mh2 = foldInLastMixers(mh2, initialLengthCoder, pos, ptypes, ptypes.length - pos);
        } else if (ptypes.length == 0) {
            mh2 = MethodHandles.insertArguments(mh2, 0, Long.valueOf(initialLengthCoder));
        }
        return mh2;
    }

    static int[] filterMixerArgPositions(int[] argPositions, int pos, int count) {
        if (argPositions == null || argPositions.length != count + 2) {
            argPositions = new int[count + 1];
            argPositions[0] = 0;
        }
        int limit = count + 1;
        for (int i10 = 1; i10 < limit; i10++) {
            argPositions[i10] = i10 + pos;
        }
        return argPositions;
    }

    private static MethodHandle foldInLastMixers(MethodHandle mh2, long initialLengthCoder, int pos, Class<?>[] ptypes, int count) {
        MethodHandle mix;
        switch (count) {
            case 1:
                mix = mixer(ptypes[pos]);
                break;
            case 2:
                mix = mixer(ptypes[pos], ptypes[pos + 1]);
                break;
            case 3:
                mix = mixer(ptypes[pos], ptypes[pos + 1], ptypes[pos + 2]);
                break;
            case 4:
                mix = mixer(ptypes[pos], ptypes[pos + 1], ptypes[pos + 2], ptypes[pos + 3]);
                break;
            default:
                throw new IllegalArgumentException("Unexpected count: " + count);
        }
        MethodHandle mix2 = MethodHandles.insertArguments(mix, 0, Long.valueOf(initialLengthCoder));
        switch (count) {
            case 1:
                return MethodHandles.foldArgumentsWithCombiner(mh2, 0, mix2, 1 + pos);
            case 2:
                return MethodHandles.foldArgumentsWithCombiner(mh2, 0, mix2, 1 + pos, 2 + pos);
            case 3:
                return MethodHandles.foldArgumentsWithCombiner(mh2, 0, mix2, 1 + pos, 2 + pos, 3 + pos);
            case 4:
                return MethodHandles.foldArgumentsWithCombiner(mh2, 0, mix2, 1 + pos, 2 + pos, 3 + pos, 4 + pos);
            default:
                throw new IllegalArgumentException();
        }
    }

    private static MethodHandle prepender(String prefix, Class<?> cl2) {
        if (prefix == null || prefix.isEmpty()) {
            return noPrefixPrepender(cl2);
        }
        return MethodHandles.insertArguments(prepender(cl2), 3, prefix);
    }

    private static MethodHandle prepender(Class<?> cl2) {
        int idx = classIndex(cl2);
        MethodHandle prepend = PREPENDERS[idx];
        if (prepend == null) {
            MethodHandle[] methodHandleArr = PREPENDERS;
            BoundMethodHandle rebind = JLA.stringConcatHelper("prepend", MethodType.methodType(Long.TYPE, Long.TYPE, (Class<?>[]) new Class[]{byte[].class, Wrapper.asPrimitiveType(cl2), String.class})).rebind();
            prepend = rebind;
            methodHandleArr[idx] = rebind;
        }
        return prepend;
    }

    private static MethodHandle noPrefixPrepender(Class<?> cl2) {
        int idx = classIndex(cl2);
        MethodHandle prepend = NO_PREFIX_PREPENDERS[idx];
        if (prepend == null) {
            MethodHandle[] methodHandleArr = NO_PREFIX_PREPENDERS;
            MethodHandle insertArguments = MethodHandles.insertArguments(prepender(cl2), 3, "");
            prepend = insertArguments;
            methodHandleArr[idx] = insertArguments;
        }
        return prepend;
    }

    private static int classIndex(Class<?> cl2) {
        if (cl2 == String.class) {
            return 4;
        }
        if (cl2 == Integer.TYPE) {
            return 0;
        }
        if (cl2 == Boolean.TYPE) {
            return 3;
        }
        if (cl2 == Character.TYPE) {
            return 1;
        }
        if (cl2 == Long.TYPE) {
            return 2;
        }
        throw new IllegalArgumentException("Unexpected class: " + ((Object) cl2));
    }

    private static MethodHandle prependBase() {
        MethodHandle base = PREPEND_BASE;
        if (base == null) {
            MethodHandle dropArguments = MethodHandles.dropArguments(MethodHandles.identity(Long.TYPE), 1, (Class<?>) byte[].class);
            PREPEND_BASE = dropArguments;
            base = dropArguments;
        }
        return base;
    }

    private static MethodHandle prepender(String prefix, Class<?> cl2, String prefix2, Class<?> cl22) {
        int idx1 = classIndex(cl2);
        int idx2 = classIndex(cl22);
        MethodHandle prepend = DOUBLE_PREPENDERS[idx1][idx2];
        if (prepend == null) {
            MethodHandle[] methodHandleArr = DOUBLE_PREPENDERS[idx1];
            MethodHandle dropArguments = MethodHandles.dropArguments(prependBase(), 2, cl2, cl22);
            methodHandleArr[idx2] = dropArguments;
            prepend = dropArguments;
        }
        return MethodHandles.filterArgumentsWithCombiner(MethodHandles.filterArgumentsWithCombiner(prepend, 0, prepender(prefix, cl2), PREPEND_FILTER_FIRST_ARGS), 0, prepender(prefix2, cl22), PREPEND_FILTER_SECOND_ARGS);
    }

    private static MethodHandle prepender(int pos, String[] constants, Class<?>[] ptypes, int count) {
        if (count == 1) {
            return prepender(constants[pos], ptypes[pos]);
        }
        if (count == 2) {
            return prepender(constants[pos], ptypes[pos], constants[pos + 1], ptypes[pos + 1]);
        }
        MethodHandle prepend = prependBase();
        if (count == 3) {
            return MethodHandles.filterArgumentsWithCombiner(MethodHandles.filterArgumentsWithCombiner(MethodHandles.dropArguments(prepend, 2, (Class<?>[]) new Class[]{ptypes[pos], ptypes[pos + 1], ptypes[pos + 2]}), 0, prepender(constants[pos], ptypes[pos], constants[pos + 1], ptypes[pos + 1]), PREPEND_FILTER_FIRST_PAIR_ARGS), 0, prepender(constants[pos + 2], ptypes[pos + 2]), PREPEND_FILTER_THIRD_ARGS);
        }
        if (count == 4) {
            return MethodHandles.filterArgumentsWithCombiner(MethodHandles.filterArgumentsWithCombiner(MethodHandles.dropArguments(prepend, 2, (Class<?>[]) new Class[]{ptypes[pos], ptypes[pos + 1], ptypes[pos + 2], ptypes[pos + 3]}), 0, prepender(constants[pos], ptypes[pos], constants[pos + 1], ptypes[pos + 1]), PREPEND_FILTER_FIRST_PAIR_ARGS), 0, prepender(constants[pos + 2], ptypes[pos + 2], constants[pos + 3], ptypes[pos + 3]), PREPEND_FILTER_SECOND_PAIR_ARGS);
        }
        throw new IllegalArgumentException("Unexpected count: " + count);
    }

    private static MethodHandle mixer(Class<?> cl2) {
        int index = classIndex(cl2);
        MethodHandle mix = MIXERS[index];
        if (mix == null) {
            MethodHandle[] methodHandleArr = MIXERS;
            BoundMethodHandle rebind = JLA.stringConcatHelper("mix", MethodType.methodType(Long.TYPE, Long.TYPE, (Class<?>[]) new Class[]{Wrapper.asPrimitiveType(cl2)})).rebind();
            mix = rebind;
            methodHandleArr[index] = rebind;
        }
        return mix;
    }

    private static MethodHandle mixer(Class<?> cl2, Class<?> cl22) {
        int idx1 = classIndex(cl2);
        int idx2 = classIndex(cl22);
        MethodHandle mix = DOUBLE_MIXERS[idx1][idx2];
        if (mix == null) {
            MethodHandle mix2 = MethodHandles.dropArguments(mixer(cl2), 2, cl22);
            MethodHandle[] methodHandleArr = DOUBLE_MIXERS[idx1];
            MethodHandle filterArgumentsWithCombiner = MethodHandles.filterArgumentsWithCombiner(mix2, 0, mixer(cl22), MIX_FILTER_SECOND_ARGS);
            mix = filterArgumentsWithCombiner;
            methodHandleArr[idx2] = filterArgumentsWithCombiner;
        }
        return mix;
    }

    private static MethodHandle mixer(Class<?> cl2, Class<?> cl22, Class<?> cl3) {
        MethodHandle mix = mixer(cl2, cl22);
        return MethodHandles.filterArgumentsWithCombiner(MethodHandles.dropArguments(mix, 3, cl3), 0, mixer(cl3), MIX_FILTER_THIRD_ARGS);
    }

    private static MethodHandle mixer(Class<?> cl2, Class<?> cl22, Class<?> cl3, Class<?> cl4) {
        MethodHandle mix = mixer(cl2, cl22);
        return MethodHandles.filterArgumentsWithCombiner(MethodHandles.dropArguments(mix, 3, cl3, cl4), 0, mixer(cl3, cl4), MIX_FILTER_SECOND_PAIR_ARGS);
    }

    private static MethodHandle simpleConcat() {
        MethodHandle mh2 = SIMPLE_CONCAT;
        if (mh2 == null) {
            MethodHandle simpleConcat = JLA.stringConcatHelper("simpleConcat", MethodType.methodType((Class<?>) String.class, (Class<?>) Object.class, (Class<?>[]) new Class[]{Object.class}));
            BoundMethodHandle rebind = simpleConcat.rebind();
            mh2 = rebind;
            SIMPLE_CONCAT = rebind;
        }
        return mh2;
    }

    private static MethodHandle newString() {
        MethodHandle mh2 = NEW_STRING;
        if (mh2 == null) {
            MethodHandle newString = JLA.stringConcatHelper("newString", MethodType.methodType((Class<?>) String.class, (Class<?>) byte[].class, (Class<?>[]) new Class[]{Long.TYPE}));
            BoundMethodHandle rebind = newString.rebind();
            mh2 = rebind;
            NEW_STRING = rebind;
        }
        return mh2;
    }

    private static MethodHandle newArrayWithSuffix(String suffix) {
        MethodHandle mh2 = NEW_ARRAY_SUFFIX;
        if (mh2 == null) {
            MethodHandle newArrayWithSuffix = JLA.stringConcatHelper("newArrayWithSuffix", MethodType.methodType((Class<?>) byte[].class, (Class<?>) String.class, (Class<?>[]) new Class[]{Long.TYPE}));
            BoundMethodHandle rebind = newArrayWithSuffix.rebind();
            mh2 = rebind;
            NEW_ARRAY_SUFFIX = rebind;
        }
        return MethodHandles.insertArguments(mh2, 0, suffix);
    }

    private static MethodHandle objectStringifier() {
        MethodHandle mh2 = OBJECT_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringConcatHelper = JLA.stringConcatHelper("stringOf", MethodType.methodType((Class<?>) String.class, (Class<?>) Object.class));
            mh2 = stringConcatHelper;
            OBJECT_STRINGIFIER = stringConcatHelper;
        }
        return mh2;
    }

    private static MethodHandle floatStringifier() {
        MethodHandle mh2 = FLOAT_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Float.TYPE);
            mh2 = stringValueOf;
            FLOAT_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle doubleStringifier() {
        MethodHandle mh2 = DOUBLE_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Double.TYPE);
            mh2 = stringValueOf;
            DOUBLE_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle intStringifier() {
        MethodHandle mh2 = INT_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Integer.TYPE);
            mh2 = stringValueOf;
            INT_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle longStringifier() {
        MethodHandle mh2 = LONG_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Long.TYPE);
            mh2 = stringValueOf;
            LONG_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle charStringifier() {
        MethodHandle mh2 = CHAR_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Character.TYPE);
            mh2 = stringValueOf;
            CHAR_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle booleanStringifier() {
        MethodHandle mh2 = BOOLEAN_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringValueOf = stringValueOf(Boolean.TYPE);
            mh2 = stringValueOf;
            BOOLEAN_STRINGIFIER = stringValueOf;
        }
        return mh2;
    }

    private static MethodHandle newStringifier() {
        MethodHandle mh2 = NEW_STRINGIFIER;
        if (mh2 == null) {
            MethodHandle stringConcatHelper = JLA.stringConcatHelper("newStringOf", MethodType.methodType((Class<?>) String.class, (Class<?>) Object.class));
            mh2 = stringConcatHelper;
            NEW_STRINGIFIER = stringConcatHelper;
        }
        return mh2;
    }

    private static MethodHandle unaryConcat(Class<?> cl2) {
        if (!cl2.isPrimitive()) {
            return newStringifier();
        }
        if (cl2 == Integer.TYPE || cl2 == Short.TYPE || cl2 == Byte.TYPE) {
            return intStringifier();
        }
        if (cl2 == Long.TYPE) {
            return longStringifier();
        }
        if (cl2 == Character.TYPE) {
            return charStringifier();
        }
        if (cl2 == Boolean.TYPE) {
            return booleanStringifier();
        }
        if (cl2 == Float.TYPE) {
            return floatStringifier();
        }
        if (cl2 == Double.TYPE) {
            return doubleStringifier();
        }
        throw new InternalError("Unhandled type for unary concatenation: " + ((Object) cl2));
    }

    private static Class<?> promoteToIntType(Class<?> t10) {
        return (t10 == Byte.TYPE || t10 == Short.TYPE) ? Integer.TYPE : t10;
    }

    private static MethodHandle stringifierFor(Class<?> t10) {
        if (t10 == Object.class) {
            return objectStringifier();
        }
        if (t10 == Float.TYPE) {
            return floatStringifier();
        }
        if (t10 == Double.TYPE) {
            return doubleStringifier();
        }
        return null;
    }

    private static MethodHandle stringValueOf(Class<?> ptype) {
        try {
            return MethodHandles.publicLookup().findStatic(String.class, "valueOf", MethodType.methodType((Class<?>) String.class, ptype));
        } catch (IllegalAccessException | NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    private StringConcatFactory() {
    }

    public static final class InlineHiddenClassStrategy {
        static final String METHOD_NAME = "concat";
        static final ClassFileDumper DUMPER = ClassFileDumper.getInstance("java.lang.invoke.StringConcatFactory.dump", "stringConcatClasses");
        static final MethodHandles.Lookup STR_LOOKUP = new MethodHandles.Lookup(String.class);
        static final String CLASS_NAME = "java.lang.String$$StringConcat";
        static final ClassDesc CD_CONCAT = ConstantUtils.binaryNameToDesc(CLASS_NAME);
        static final ClassDesc CD_StringConcatHelper = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/StringConcatHelper;");
        static final ClassDesc CD_StringConcatBase = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/StringConcatHelper$StringConcatBase;");
        static final ClassDesc CD_Array_byte = ConstantDescs.CD_byte.arrayType();
        static final ClassDesc CD_Array_String = ConstantDescs.CD_String.arrayType();
        static final MethodTypeDesc MTD_byte_char = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_byte, new ClassDesc[]{ConstantDescs.CD_char});
        static final MethodTypeDesc MTD_byte = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_byte, new ClassDesc[0]);
        static final MethodTypeDesc MTD_int = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[0]);
        static final MethodTypeDesc MTD_int_int_boolean = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_boolean});
        static final MethodTypeDesc MTD_int_int_char = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_char});
        static final MethodTypeDesc MTD_int_int_int = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_int});
        static final MethodTypeDesc MTD_int_int_long = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_long});
        static final MethodTypeDesc MTD_int_int_String = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_String});
        static final MethodTypeDesc MTD_String_float = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_String, new ClassDesc[]{ConstantDescs.CD_float});
        static final MethodTypeDesc MTD_String_double = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_String, new ClassDesc[]{ConstantDescs.CD_double});
        static final MethodTypeDesc MTD_String_Object = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_String, new ClassDesc[]{ConstantDescs.CD_Object});
        static final MethodTypeDesc MTD_INIT = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{CD_Array_String});
        static final MethodTypeDesc MTD_NEW_ARRAY_SUFFIX = MethodTypeDescImpl.ofValidated(CD_Array_byte, new ClassDesc[]{ConstantDescs.CD_String, ConstantDescs.CD_int, ConstantDescs.CD_byte});
        static final MethodTypeDesc MTD_STRING_INIT = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{CD_Array_byte, ConstantDescs.CD_byte});
        static final MethodTypeDesc PREPEND_int = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_byte, CD_Array_byte, ConstantDescs.CD_int, ConstantDescs.CD_String});
        static final MethodTypeDesc PREPEND_long = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_byte, CD_Array_byte, ConstantDescs.CD_long, ConstantDescs.CD_String});
        static final MethodTypeDesc PREPEND_boolean = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_byte, CD_Array_byte, ConstantDescs.CD_boolean, ConstantDescs.CD_String});
        static final MethodTypeDesc PREPEND_char = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_byte, CD_Array_byte, ConstantDescs.CD_char, ConstantDescs.CD_String});
        static final MethodTypeDesc PREPEND_String = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, new ClassDesc[]{ConstantDescs.CD_int, ConstantDescs.CD_byte, CD_Array_byte, ConstantDescs.CD_String, ConstantDescs.CD_String});
        static final RuntimeVisibleAnnotationsAttribute FORCE_INLINE = RuntimeVisibleAnnotationsAttribute.of(Annotation.of(ClassDesc.ofDescriptor("Ljdk/internal/vm/annotation/ForceInline;"), new AnnotationElement[0]));
        static final MethodType CONSTRUCTOR_METHOD_TYPE = MethodType.methodType(Void.TYPE, (Class<?>) String[].class);
        static final Consumer<CodeBuilder> CONSTRUCTOR_BUILDER = new Consumer<CodeBuilder>() {
            @Override
            public void accept(CodeBuilder cb2) {
                int thisSlot = cb2.receiverSlot();
                int constantsSlot = cb2.parameterSlot(0);
                cb2.aload(thisSlot).aload(constantsSlot).invokespecial(InlineHiddenClassStrategy.CD_StringConcatBase, ConstantDescs.INIT_NAME, InlineHiddenClassStrategy.MTD_INIT, false).return_();
            }
        };
        static final ReferencedKeyMap<MethodType, SoftReference<MethodHandlePair>> CACHE = ReferencedKeyMap.create(true, new Supplier<Map<ReferenceKey<MethodType>, SoftReference<MethodHandlePair>>>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Map<ReferenceKey<MethodType>, SoftReference<MethodHandlePair>> get() {
                return new ConcurrentHashMap(64);
            }
        });

        private InlineHiddenClassStrategy() {
        }

        public static final class MethodHandlePair extends Record {
            private final MethodHandle constructor;
            private final MethodHandle concatenator;

            private MethodHandlePair(MethodHandle constructor, MethodHandle concatenator) {
                this.constructor = constructor;
                this.concatenator = concatenator;
            }

            @Override
            public final String toString() {
                return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, MethodHandlePair.class), MethodHandlePair.class, "constructor;concatenator", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->constructor:Ljava/lang/invoke/MethodHandle;", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->concatenator:Ljava/lang/invoke/MethodHandle;").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final int hashCode() {
                return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, MethodHandlePair.class), MethodHandlePair.class, "constructor;concatenator", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->constructor:Ljava/lang/invoke/MethodHandle;", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->concatenator:Ljava/lang/invoke/MethodHandle;").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final boolean equals(Object o10) {
                return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, MethodHandlePair.class, Object.class), MethodHandlePair.class, "constructor;concatenator", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->constructor:Ljava/lang/invoke/MethodHandle;", "FIELD:Ljava/lang/invoke/StringConcatFactory$InlineHiddenClassStrategy$MethodHandlePair;->concatenator:Ljava/lang/invoke/MethodHandle;").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
            }

            public MethodHandle constructor() {
                return this.constructor;
            }

            public MethodHandle concatenator() {
                return this.concatenator;
            }
        }

        private static MethodType erasedArgs(MethodType args) {
            int parameterCount = args.parameterCount();
            Class<?>[] paramTypes = new Class[parameterCount];
            boolean changed = false;
            for (int i10 = 0; i10 < parameterCount; i10++) {
                Class<?> cl2 = args.parameterType(i10);
                if (cl2 == Byte.TYPE || cl2 == Short.TYPE) {
                    cl2 = Integer.TYPE;
                    changed = true;
                } else if (cl2 != Object.class && !cl2.isPrimitive()) {
                    cl2 = Object.class;
                    changed = true;
                }
                paramTypes[i10] = cl2;
            }
            return changed ? MethodType.methodType(args.returnType(), paramTypes, true) : args;
        }

        private static MethodTypeDesc prependArgs(MethodType concatArgs, boolean staticConcat) {
            int parameterCount = concatArgs.parameterCount();
            int prefixArgs = staticConcat ? 3 : 4;
            ClassDesc[] paramTypes = new ClassDesc[parameterCount + prefixArgs];
            paramTypes[0] = ConstantDescs.CD_int;
            paramTypes[1] = ConstantDescs.CD_byte;
            paramTypes[2] = CD_Array_byte;
            if (!staticConcat) {
                paramTypes[3] = CD_Array_String;
            }
            for (int i10 = 0; i10 < parameterCount; i10++) {
                Class<?> cl2 = concatArgs.parameterType(i10);
                paramTypes[i10 + prefixArgs] = needStringOf(cl2) ? ConstantDescs.CD_String : ConstantUtils.classDesc(cl2);
            }
            return MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, paramTypes);
        }

        private static MethodTypeDesc coderArgsIfMaybeUTF16(MethodType concatArgs) {
            if (StringConcatFactory.JLA.stringInitCoder() != 0) {
                return null;
            }
            int parameterCount = concatArgs.parameterCount();
            int maybeUTF16Count = 0;
            for (int i10 = 0; i10 < parameterCount; i10++) {
                if (maybeUTF16(concatArgs.parameterType(i10))) {
                    maybeUTF16Count++;
                }
            }
            if (maybeUTF16Count == 0) {
                return null;
            }
            ClassDesc[] paramTypes = new ClassDesc[maybeUTF16Count + 1];
            paramTypes[0] = ConstantDescs.CD_int;
            int paramIndex = 1;
            for (int i11 = 0; i11 < parameterCount; i11++) {
                Class<?> cl2 = concatArgs.parameterType(i11);
                if (maybeUTF16(cl2)) {
                    int i12 = paramIndex;
                    paramIndex++;
                    paramTypes[i12] = cl2 == Character.TYPE ? ConstantDescs.CD_char : ConstantDescs.CD_String;
                }
            }
            return MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, paramTypes);
        }

        private static MethodTypeDesc lengthArgs(MethodType concatArgs) {
            int parameterCount = concatArgs.parameterCount();
            ClassDesc[] paramTypes = new ClassDesc[parameterCount + 1];
            paramTypes[0] = ConstantDescs.CD_int;
            for (int i10 = 0; i10 < parameterCount; i10++) {
                Class<?> cl2 = concatArgs.parameterType(i10);
                paramTypes[i10 + 1] = needStringOf(cl2) ? ConstantDescs.CD_String : ConstantUtils.classDesc(cl2);
            }
            return MethodTypeDescImpl.ofValidated(ConstantDescs.CD_int, paramTypes);
        }

        private static MethodHandle generate(MethodHandles.Lookup lookup, MethodType args, final String[] constants) throws Exception {
            SoftReference<MethodHandlePair> weakConstructorHandle;
            MethodHandlePair handlePair;
            MethodHandles.Lookup lookup2 = STR_LOOKUP;
            final MethodType concatArgs = erasedArgs(args);
            if (args.parameterCount() == 1) {
                Object concat1 = StringConcatFactory.JLA.uncheckedStringConcat1(constants);
                MethodHandle handle = lookup2.findVirtual(concat1.getClass(), METHOD_NAME, concatArgs);
                return handle.bindTo(concat1);
            }
            final boolean forceInline = concatArgs.parameterCount() < StringConcatFactory.FORCE_INLINE_THRESHOLD;
            final boolean staticConcat = concatArgs.parameterCount() >= StringConcatFactory.CACHE_THRESHOLD;
            if (!staticConcat && (weakConstructorHandle = (SoftReference) CACHE.get(concatArgs)) != null && (handlePair = weakConstructorHandle.get()) != null) {
                try {
                    Object instance = handlePair.constructor.invokeBasic((Object) constants);
                    return handlePair.concatenator.bindTo(instance);
                } catch (Throwable e10) {
                    throw new StringConcatException("Exception while utilizing the hidden class", e10);
                }
            }
            final MethodTypeDesc lengthArgs = lengthArgs(concatArgs);
            final MethodTypeDesc coderArgs = coderArgsIfMaybeUTF16(concatArgs);
            final MethodTypeDesc prependArgs = prependArgs(concatArgs, staticConcat);
            byte[] classBytes = ClassFile.of().build(CD_CONCAT, new Consumer<ClassBuilder>() {
                @Override
                public void accept(ClassBuilder clb) {
                    if (staticConcat) {
                        clb.withSuperclass(ConstantDescs.CD_Object).withFlags(5152);
                    } else {
                        clb.withSuperclass(InlineHiddenClassStrategy.CD_StringConcatBase).withFlags(AL.AL_UNDETERMINED).withMethodBody(ConstantDescs.INIT_NAME, InlineHiddenClassStrategy.MTD_INIT, 0, InlineHiddenClassStrategy.CONSTRUCTOR_BUILDER);
                    }
                    MethodTypeDesc methodTypeDesc = lengthArgs;
                    final boolean z10 = forceInline;
                    final MethodTypeDesc methodTypeDesc2 = lengthArgs;
                    ClassBuilder withMethod = clb.withMethod("length", methodTypeDesc, 10, new Consumer<MethodBuilder>(this) {
                        {
                            Objects.requireNonNull(this);
                        }

                        @Override
                        public void accept(MethodBuilder mb2) {
                            if (z10) {
                                mb2.with(InlineHiddenClassStrategy.FORCE_INLINE);
                            }
                            mb2.withCode(InlineHiddenClassStrategy.generateLengthMethod(methodTypeDesc2));
                        }
                    });
                    MethodTypeDesc methodTypeDesc3 = prependArgs;
                    final boolean z11 = forceInline;
                    final MethodTypeDesc methodTypeDesc4 = prependArgs;
                    final boolean z12 = staticConcat;
                    final String[] strArr = constants;
                    ClassBuilder withMethod2 = withMethod.withMethod("prepend", methodTypeDesc3, 10, new Consumer<MethodBuilder>(this) {
                        {
                            Objects.requireNonNull(this);
                        }

                        @Override
                        public void accept(MethodBuilder mb2) {
                            if (z11) {
                                mb2.with(InlineHiddenClassStrategy.FORCE_INLINE);
                            }
                            mb2.withCode(InlineHiddenClassStrategy.generatePrependMethod(methodTypeDesc4, z12, strArr));
                        }
                    });
                    MethodTypeDesc methodTypeDesc5 = ConstantUtils.methodTypeDesc(concatArgs);
                    int i10 = staticConcat ? 24 : 16;
                    final boolean z13 = forceInline;
                    final boolean z14 = staticConcat;
                    final String[] strArr2 = constants;
                    final MethodType methodType = concatArgs;
                    final MethodTypeDesc methodTypeDesc6 = lengthArgs;
                    final MethodTypeDesc methodTypeDesc7 = coderArgs;
                    final MethodTypeDesc methodTypeDesc8 = prependArgs;
                    withMethod2.withMethod(InlineHiddenClassStrategy.METHOD_NAME, methodTypeDesc5, i10, new Consumer<MethodBuilder>(this) {
                        {
                            Objects.requireNonNull(this);
                        }

                        @Override
                        public void accept(MethodBuilder mb2) {
                            if (z13) {
                                mb2.with(InlineHiddenClassStrategy.FORCE_INLINE);
                            }
                            mb2.withCode(InlineHiddenClassStrategy.generateConcatMethod(z14, strArr2, InlineHiddenClassStrategy.CD_CONCAT, methodType, methodTypeDesc6, methodTypeDesc7, methodTypeDesc8));
                        }
                    });
                    if (coderArgs != null) {
                        MethodTypeDesc methodTypeDesc9 = coderArgs;
                        final boolean z15 = forceInline;
                        final MethodTypeDesc methodTypeDesc10 = coderArgs;
                        clb.withMethod("coder", methodTypeDesc9, 10, new Consumer<MethodBuilder>(this) {
                            {
                                Objects.requireNonNull(this);
                            }

                            @Override
                            public void accept(MethodBuilder mb2) {
                                if (z15) {
                                    mb2.with(InlineHiddenClassStrategy.FORCE_INLINE);
                                }
                                mb2.withCode(InlineHiddenClassStrategy.generateCoderMethod(methodTypeDesc10));
                            }
                        });
                    }
                }
            });
            try {
                Class<?> hiddenClass = lookup2.makeHiddenClassDefiner(CLASS_NAME, classBytes, DUMPER).defineClass(true, null);
                if (staticConcat) {
                    return lookup2.findStatic(hiddenClass, METHOD_NAME, concatArgs);
                }
                MethodHandle constructor = lookup2.findConstructor(hiddenClass, CONSTRUCTOR_METHOD_TYPE);
                MethodHandle concatenator = lookup2.findVirtual(hiddenClass, METHOD_NAME, concatArgs);
                CACHE.put(concatArgs, new SoftReference(new MethodHandlePair(constructor, concatenator)));
                Object instance2 = constructor.invokeBasic((Object) constants);
                return concatenator.bindTo(instance2);
            } catch (Throwable e11) {
                throw new StringConcatException("Exception while spinning the class", e11);
            }
        }

        private static Consumer<CodeBuilder> generateConcatMethod(final boolean staticConcat, final String[] constants, final ClassDesc concatClass, final MethodType concatArgs, final MethodTypeDesc lengthArgs, final MethodTypeDesc coderArgs, final MethodTypeDesc prependArgs) {
            return new Consumer<CodeBuilder>() {
                @Override
                public void accept(CodeBuilder cb2) {
                    MethodTypeDesc methodTypeDesc;
                    int paramCount = MethodType.this.parameterCount();
                    int thisSlot = staticConcat ? 0 : cb2.receiverSlot();
                    int lengthSlot = cb2.allocateLocal(TypeKind.INT);
                    int coderSlot = cb2.allocateLocal(TypeKind.BYTE);
                    int bufSlot = cb2.allocateLocal(TypeKind.REFERENCE);
                    int constantsSlot = cb2.allocateLocal(TypeKind.REFERENCE);
                    int suffixSlot = cb2.allocateLocal(TypeKind.REFERENCE);
                    int[] stringSlots = new int[paramCount];
                    for (int i10 = 0; i10 < paramCount; i10++) {
                        Class<?> cl2 = MethodType.this.parameterType(i10);
                        if (InlineHiddenClassStrategy.needStringOf(cl2)) {
                            if (cl2 == Float.TYPE) {
                                methodTypeDesc = InlineHiddenClassStrategy.MTD_String_float;
                            } else if (cl2 == Double.TYPE) {
                                methodTypeDesc = InlineHiddenClassStrategy.MTD_String_double;
                            } else {
                                methodTypeDesc = InlineHiddenClassStrategy.MTD_String_Object;
                            }
                            stringSlots[i10] = cb2.allocateLocal(TypeKind.REFERENCE);
                            cb2.loadLocal(TypeKind.from(cl2), cb2.parameterSlot(i10)).invokestatic(InlineHiddenClassStrategy.CD_StringConcatHelper, "stringOf", methodTypeDesc).astore(stringSlots[i10]);
                        }
                    }
                    int coder = StringConcatFactory.JLA.stringInitCoder();
                    int length = 0;
                    if (staticConcat) {
                        for (String constant : constants) {
                            coder |= StringConcatFactory.JLA.stringCoder(constant);
                            length += constant.length();
                        }
                    }
                    if (staticConcat) {
                        if (coder == 0) {
                            cb2.iconst_0();
                        } else {
                            cb2.iconst_1();
                        }
                    } else {
                        cb2.aload(thisSlot).getfield(concatClass, "coder", ConstantDescs.CD_byte);
                    }
                    if (coderArgs != null) {
                        for (int i11 = 0; i11 < paramCount; i11++) {
                            Class<?> cl3 = MethodType.this.parameterType(i11);
                            if (InlineHiddenClassStrategy.maybeUTF16(cl3)) {
                                if (cl3 == Character.TYPE) {
                                    cb2.loadLocal(TypeKind.CHAR, cb2.parameterSlot(i11));
                                } else {
                                    cb2.aload(stringSlots[i11]);
                                }
                            }
                        }
                        cb2.invokestatic(concatClass, "coder", coderArgs);
                    }
                    cb2.istore(coderSlot);
                    if (staticConcat) {
                        cb2.loadConstant(length);
                    } else {
                        cb2.aload(thisSlot).getfield(concatClass, "length", ConstantDescs.CD_int);
                    }
                    for (int i12 = 0; i12 < paramCount; i12++) {
                        Class<?> cl4 = MethodType.this.parameterType(i12);
                        int paramSlot = cb2.parameterSlot(i12);
                        if (InlineHiddenClassStrategy.needStringOf(cl4)) {
                            paramSlot = stringSlots[i12];
                            cl4 = String.class;
                        }
                        cb2.loadLocal(TypeKind.from(cl4), paramSlot);
                    }
                    cb2.invokestatic(concatClass, "length", lengthArgs);
                    if (staticConcat) {
                        cb2.loadConstant(constants[paramCount].length()).isub().istore(lengthSlot);
                    } else {
                        cb2.aload(thisSlot).getfield(concatClass, "constants", InlineHiddenClassStrategy.CD_Array_String).dup().astore(constantsSlot).loadConstant(paramCount).aaload().dup().astore(suffixSlot).invokevirtual(ConstantDescs.CD_String, "length", InlineHiddenClassStrategy.MTD_int).isub().istore(lengthSlot);
                    }
                    if (staticConcat) {
                        cb2.loadConstant(constants[paramCount]);
                    } else {
                        cb2.aload(suffixSlot);
                    }
                    cb2.iload(lengthSlot).iload(coderSlot).invokestatic(InlineHiddenClassStrategy.CD_StringConcatHelper, "newArrayWithSuffix", InlineHiddenClassStrategy.MTD_NEW_ARRAY_SUFFIX).astore(bufSlot);
                    cb2.iload(lengthSlot).iload(coderSlot).aload(bufSlot);
                    if (!staticConcat) {
                        cb2.aload(constantsSlot);
                    }
                    for (int i13 = 0; i13 < paramCount; i13++) {
                        Class<?> cl5 = MethodType.this.parameterType(i13);
                        int paramSlot2 = cb2.parameterSlot(i13);
                        TypeKind kind = TypeKind.from(cl5);
                        if (InlineHiddenClassStrategy.needStringOf(cl5)) {
                            paramSlot2 = stringSlots[i13];
                            kind = TypeKind.REFERENCE;
                        }
                        cb2.loadLocal(kind, paramSlot2);
                    }
                    cb2.invokestatic(concatClass, "prepend", prependArgs);
                    cb2.new_(ConstantDescs.CD_String).dup().aload(bufSlot).iload(coderSlot).invokespecial(ConstantDescs.CD_String, ConstantDescs.INIT_NAME, InlineHiddenClassStrategy.MTD_STRING_INIT).areturn();
                }
            };
        }

        private static Consumer<CodeBuilder> generateLengthMethod(final MethodTypeDesc lengthArgs) {
            return new Consumer<CodeBuilder>() {
                @Override
                public void accept(CodeBuilder cb2) {
                    MethodTypeDesc methodTypeDesc;
                    int lengthSlot = cb2.parameterSlot(0);
                    cb2.iload(lengthSlot);
                    for (int i10 = 1; i10 < MethodTypeDesc.this.parameterCount(); i10++) {
                        ClassDesc cl2 = MethodTypeDesc.this.parameterType(i10);
                        if (cl2 == ConstantDescs.CD_char) {
                            methodTypeDesc = InlineHiddenClassStrategy.MTD_int_int_char;
                        } else if (cl2 == ConstantDescs.CD_int) {
                            methodTypeDesc = InlineHiddenClassStrategy.MTD_int_int_int;
                        } else if (cl2 == ConstantDescs.CD_long) {
                            methodTypeDesc = InlineHiddenClassStrategy.MTD_int_int_long;
                        } else if (cl2 == ConstantDescs.CD_boolean) {
                            methodTypeDesc = InlineHiddenClassStrategy.MTD_int_int_boolean;
                        } else {
                            methodTypeDesc = InlineHiddenClassStrategy.MTD_int_int_String;
                        }
                        MethodTypeDesc methodTypeDesc2 = methodTypeDesc;
                        cb2.loadLocal(TypeKind.from(cl2), cb2.parameterSlot(i10)).invokestatic(InlineHiddenClassStrategy.CD_StringConcatHelper, "stringSize", methodTypeDesc2);
                    }
                    cb2.ireturn();
                }
            };
        }

        private static Consumer<CodeBuilder> generateCoderMethod(final MethodTypeDesc coderArgs) {
            return new Consumer<CodeBuilder>() {
                @Override
                public void accept(CodeBuilder cb2) {
                    int coderSlot = cb2.parameterSlot(0);
                    cb2.iload(coderSlot);
                    for (int i10 = 1; i10 < MethodTypeDesc.this.parameterCount(); i10++) {
                        ClassDesc cl2 = MethodTypeDesc.this.parameterType(i10);
                        cb2.loadLocal(TypeKind.from(cl2), cb2.parameterSlot(i10));
                        if (cl2 == ConstantDescs.CD_char) {
                            cb2.invokestatic(InlineHiddenClassStrategy.CD_StringConcatHelper, "stringCoder", InlineHiddenClassStrategy.MTD_byte_char);
                        } else {
                            cb2.invokevirtual(ConstantDescs.CD_String, "coder", InlineHiddenClassStrategy.MTD_byte);
                        }
                        cb2.ior();
                    }
                    cb2.ireturn();
                }
            };
        }

        private static Consumer<CodeBuilder> generatePrependMethod(final MethodTypeDesc prependArgs, final boolean staticConcat, final String[] constants) {
            return new Consumer<CodeBuilder>() {
                @Override
                public void accept(CodeBuilder cb2) {
                    MethodTypeDesc methodTypeDesc;
                    int lengthSlot = cb2.parameterSlot(0);
                    int coderSlot = cb2.parameterSlot(1);
                    int bufSlot = cb2.parameterSlot(2);
                    int constantsSlot = cb2.parameterSlot(3);
                    cb2.iload(lengthSlot);
                    int end = staticConcat ? 3 : 4;
                    for (int i10 = MethodTypeDesc.this.parameterCount() - 1; i10 >= end; i10--) {
                        ClassDesc cl2 = MethodTypeDesc.this.parameterType(i10);
                        TypeKind kind = TypeKind.from(cl2);
                        if (cl2 == ConstantDescs.CD_int) {
                            methodTypeDesc = InlineHiddenClassStrategy.PREPEND_int;
                        } else if (cl2 == ConstantDescs.CD_long) {
                            methodTypeDesc = InlineHiddenClassStrategy.PREPEND_long;
                        } else if (cl2 == ConstantDescs.CD_boolean) {
                            methodTypeDesc = InlineHiddenClassStrategy.PREPEND_boolean;
                        } else if (cl2 == ConstantDescs.CD_char) {
                            methodTypeDesc = InlineHiddenClassStrategy.PREPEND_char;
                        } else {
                            kind = TypeKind.REFERENCE;
                            methodTypeDesc = InlineHiddenClassStrategy.PREPEND_String;
                        }
                        cb2.iload(coderSlot).aload(bufSlot).loadLocal(kind, cb2.parameterSlot(i10));
                        if (staticConcat) {
                            cb2.loadConstant(constants[i10 - 3]);
                        } else {
                            cb2.aload(constantsSlot).loadConstant(i10 - 4).aaload();
                        }
                        cb2.invokestatic(InlineHiddenClassStrategy.CD_StringConcatHelper, "prepend", methodTypeDesc);
                    }
                    cb2.ireturn();
                }
            };
        }

        static boolean needStringOf(Class<?> cl2) {
            return (cl2 == Integer.TYPE || cl2 == Long.TYPE || cl2 == Boolean.TYPE || cl2 == Character.TYPE) ? false : true;
        }

        static boolean maybeUTF16(Class<?> cl2) {
            return cl2 == Character.TYPE || !cl2.isPrimitive();
        }
    }
}
