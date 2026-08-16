package java.lang.invoke;

import java.lang.invoke.LambdaForm;
import java.lang.invoke.MethodHandles;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import jdk.internal.vm.annotation.Stable;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class BoundMethodHandle extends MethodHandle {
    private static final int FIELD_COUNT_THRESHOLD = 12;
    private static final int FORM_EXPRESSION_THRESHOLD = 24;
    static final Specializer SPECIALIZER;
    static final boolean $assertionsDisabled;

    public abstract SpeciesData speciesData();

    @Override
    public abstract BoundMethodHandle copyWith(MethodType methodType, LambdaForm lambdaForm);

    public abstract BoundMethodHandle copyWithExtendL(MethodType methodType, LambdaForm lambdaForm, Object obj);

    public abstract BoundMethodHandle copyWithExtendI(MethodType methodType, LambdaForm lambdaForm, int i10);

    public abstract BoundMethodHandle copyWithExtendJ(MethodType methodType, LambdaForm lambdaForm, long j10);

    public abstract BoundMethodHandle copyWithExtendF(MethodType methodType, LambdaForm lambdaForm, float f10);

    public abstract BoundMethodHandle copyWithExtendD(MethodType methodType, LambdaForm lambdaForm, double d10);

    static {
        $assertionsDisabled = !BoundMethodHandle.class.desiredAssertionStatus();
        SPECIALIZER = new Specializer();
        SimpleMethodHandle.BMH_SPECIES = SPECIALIZER.findSpecies("");
        Species_L.BMH_SPECIES = SPECIALIZER.findSpecies("L");
    }

    public BoundMethodHandle(MethodType type, LambdaForm form) {
        super(type, form);
        if (!$assertionsDisabled && speciesData() != speciesDataFor(form)) {
            throw new AssertionError();
        }
    }

    public LambdaFormEditor editor() {
        return this.form.editor();
    }

    public static BoundMethodHandle bindSingleL(MethodType type, LambdaForm form, Object x10) {
        return Species_L.make(type, form, x10);
    }

    public static BoundMethodHandle bindSingleI(MethodType type, LambdaForm form, int x10) {
        try {
            return SimpleMethodHandle.BMH_SPECIES.extendWith(LambdaForm.BasicType.I_TYPE).factory().invokeBasic(type, form, x10);
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static BoundMethodHandle bindSingleJ(MethodType type, LambdaForm form, long x10) {
        try {
            return SimpleMethodHandle.BMH_SPECIES.extendWith(LambdaForm.BasicType.J_TYPE).factory().invokeBasic(type, form, x10);
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static BoundMethodHandle bindSingleF(MethodType type, LambdaForm form, float x10) {
        try {
            return SimpleMethodHandle.BMH_SPECIES.extendWith(LambdaForm.BasicType.F_TYPE).factory().invokeBasic(type, form, x10);
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static BoundMethodHandle bindSingleD(MethodType type, LambdaForm form, double x10) {
        try {
            return SimpleMethodHandle.BMH_SPECIES.extendWith(LambdaForm.BasicType.D_TYPE).factory().invokeBasic(type, form, x10);
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    @Override
    public BoundMethodHandle bindArgumentL(int pos, Object value) {
        return editor().bindArgumentL(this, pos, value);
    }

    public BoundMethodHandle bindArgumentI(int pos, int value) {
        return editor().bindArgumentI(this, pos, value);
    }

    public BoundMethodHandle bindArgumentJ(int pos, long value) {
        return editor().bindArgumentJ(this, pos, value);
    }

    public BoundMethodHandle bindArgumentF(int pos, float value) {
        return editor().bindArgumentF(this, pos, value);
    }

    public BoundMethodHandle bindArgumentD(int pos, double value) {
        return editor().bindArgumentD(this, pos, value);
    }

    @Override
    public BoundMethodHandle rebind() {
        if (!tooComplex()) {
            return this;
        }
        return makeReinvoker(this);
    }

    private boolean tooComplex() {
        return fieldCount() > 12 || this.form.expressionCount() > 24;
    }

    public static BoundMethodHandle makeReinvoker(MethodHandle target) {
        LambdaForm form = DelegatingMethodHandle.makeReinvokerForm(target, 7, Species_L.BMH_SPECIES, Species_L.BMH_SPECIES.getterFunction(0));
        return Species_L.make(target.type(), form, target);
    }

    public static SpeciesData speciesDataFor(LambdaForm form) {
        Object c10 = form.names[0].constraint;
        if (c10 instanceof SpeciesData) {
            SpeciesData sd2 = (SpeciesData) c10;
            return sd2;
        }
        return SPECIALIZER.topSpecies();
    }

    final int fieldCount() {
        return speciesData().fieldCount();
    }

    @Override
    Object internalProperties(int indentLevel) {
        return "\n" + debugPrefix(indentLevel) + "& BMH=" + internalValues(indentLevel);
    }

    @Override
    public final String internalValues(int indentLevel) {
        String prefix = debugPrefix(indentLevel);
        int count = fieldCount();
        if (count == 1 && indentLevel < 0) {
            return "[" + arg(0) + "]";
        }
        StringBuilder sb2 = new StringBuilder("[");
        for (int i10 = 0; i10 < count; i10++) {
            Object theArg = arg(i10);
            sb2.append("\n  ").append(prefix).append(i10);
            if (indentLevel >= 0 && (theArg instanceof MethodHandle)) {
                MethodHandle mh2 = (MethodHandle) theArg;
                sb2.append(": MethodHandle = {").append(mh2.debugString(indentLevel + 1));
                sb2.append("\n  ").append(prefix).append(VectorFormat.DEFAULT_SUFFIX);
            } else {
                sb2.append(": ( ").append(theArg).append(" )");
            }
        }
        return sb2.append("\n").append(prefix).append("]").toString();
    }

    final Object arg(int i10) {
        try {
            speciesData().fieldTypes().get(i10);
            switch (LambdaForm.BasicType.basicType(fieldType)) {
                case L_TYPE:
                    return speciesData().getter(i10).invokeBasic(this);
                case I_TYPE:
                    return Integer.valueOf(speciesData().getter(i10).invokeBasic(this));
                case J_TYPE:
                    return Long.valueOf(speciesData().getter(i10).invokeBasic(this));
                case F_TYPE:
                    return Float.valueOf(speciesData().getter(i10).invokeBasic(this));
                case D_TYPE:
                    return Double.valueOf(speciesData().getter(i10).invokeBasic(this));
                default:
                    throw new InternalError("unexpected type: " + ((String) speciesData().key()) + "." + i10);
            }
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static final class Species_L extends BoundMethodHandle {
        final Object argL0;

        @Stable
        static SpeciesData BMH_SPECIES;

        @Override
        Object internalValues(int i10) {
            return super.internalValues(i10);
        }

        private Species_L(MethodType mt, LambdaForm lf2, Object argL0) {
            super(mt, lf2);
            this.argL0 = argL0;
        }

        @Override
        SpeciesData speciesData() {
            return BMH_SPECIES;
        }

        static BoundMethodHandle make(MethodType mt, LambdaForm lf2, Object argL0) {
            return new Species_L(mt, lf2, argL0);
        }

        @Override
        public final BoundMethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new Species_L(mt, lf2, this.argL0);
        }

        @Override
        final BoundMethodHandle copyWithExtendL(MethodType mt, LambdaForm lf2, Object narg) {
            try {
                return BMH_SPECIES.extendWith(LambdaForm.BasicType.L_TYPE).factory().invokeBasic(mt, lf2, this.argL0, narg);
            } catch (Throwable ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }

        @Override
        final BoundMethodHandle copyWithExtendI(MethodType mt, LambdaForm lf2, int narg) {
            try {
                return BMH_SPECIES.extendWith(LambdaForm.BasicType.I_TYPE).factory().invokeBasic(mt, lf2, this.argL0, narg);
            } catch (Throwable ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }

        @Override
        final BoundMethodHandle copyWithExtendJ(MethodType mt, LambdaForm lf2, long narg) {
            try {
                return BMH_SPECIES.extendWith(LambdaForm.BasicType.J_TYPE).factory().invokeBasic(mt, lf2, this.argL0, narg);
            } catch (Throwable ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }

        @Override
        final BoundMethodHandle copyWithExtendF(MethodType mt, LambdaForm lf2, float narg) {
            try {
                return BMH_SPECIES.extendWith(LambdaForm.BasicType.F_TYPE).factory().invokeBasic(mt, lf2, this.argL0, narg);
            } catch (Throwable ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }

        @Override
        final BoundMethodHandle copyWithExtendD(MethodType mt, LambdaForm lf2, double narg) {
            try {
                return BMH_SPECIES.extendWith(LambdaForm.BasicType.D_TYPE).factory().invokeBasic(mt, lf2, this.argL0, narg);
            } catch (Throwable ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }
    }

    public static final class SpeciesData extends ClassSpecializer<BoundMethodHandle, String, SpeciesData>.SpeciesData {

        @Stable
        private final SpeciesData[] extensions;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !BoundMethodHandle.class.desiredAssertionStatus();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SpeciesData(Specializer outer, String key) {
            super(outer, key);
            Objects.requireNonNull(outer);
            this.extensions = new SpeciesData[LambdaForm.BasicType.ARG_TYPE_LIMIT];
        }

        @Override
        protected String deriveClassName() {
            String typeString = deriveTypeString();
            if (typeString.isEmpty()) {
                return SimpleMethodHandle.class.getName();
            }
            return BoundMethodHandle.class.getName() + "$Species_" + typeString;
        }

        @Override
        public List<Class<?>> deriveFieldTypes(String key) {
            ArrayList<Class<?>> types = new ArrayList<>(key.length());
            for (int i10 = 0; i10 < key.length(); i10++) {
                types.add(LambdaForm.BasicType.basicType(key.charAt(i10)).basicTypeClass());
            }
            return types;
        }

        @Override
        protected String deriveTypeString() {
            return (String) key();
        }

        @Override
        protected MethodHandle deriveTransformHelper(MemberName transform, int whichtm) {
            if (whichtm == Specializer.TN_COPY_NO_EXTEND) {
                return factory();
            }
            if (whichtm < LambdaForm.BasicType.ARG_TYPE_LIMIT) {
                return extendWith(LambdaForm.BasicType.basicType((byte) whichtm)).factory();
            }
            throw MethodHandleStatics.newInternalError("bad transform");
        }

        @Override
        protected <X> List<X> deriveTransformHelperArguments(MemberName transform, int whichtm, List<X> args, List<X> fields) {
            if (!$assertionsDisabled && !verifyTHAargs(transform, whichtm, args, fields)) {
                throw new AssertionError();
            }
            args.addAll(2, fields);
            return args;
        }

        private boolean verifyTHAargs(MemberName transform, int whichtm, List<?> args, List<?> fields) {
            if (!$assertionsDisabled && transform != Specializer.BMH_TRANSFORMS.get(whichtm)) {
                throw new AssertionError();
            }
            MethodType tType = transform.getMethodType();
            if (!$assertionsDisabled && args.size() != tType.parameterCount()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && fields.size() != fieldCount()) {
                throw new AssertionError();
            }
            if (whichtm == Specializer.TN_COPY_NO_EXTEND) {
                if ($assertionsDisabled || tType.parameterCount() == 2) {
                    return true;
                }
                throw new AssertionError();
            }
            if (whichtm < LambdaForm.BasicType.ARG_TYPE_LIMIT) {
                if (!$assertionsDisabled && tType.parameterCount() != 3) {
                    throw new AssertionError();
                }
                LambdaForm.BasicType type = LambdaForm.BasicType.basicType((byte) whichtm);
                if ($assertionsDisabled || tType.parameterType(2) == type.basicTypeClass()) {
                    return true;
                }
                throw new AssertionError();
            }
            return false;
        }

        public SpeciesData extendWith(LambdaForm.BasicType basicType) {
            int typeNum = basicType.ordinal();
            SpeciesData sd2 = this.extensions[typeNum];
            if (sd2 != null) {
                return sd2;
            }
            SpeciesData sd3 = BoundMethodHandle.SPECIALIZER.findSpecies(((String) key()) + basicType.basicTypeChar());
            this.extensions[typeNum] = sd3;
            return sd3;
        }
    }

    public static final class Specializer extends ClassSpecializer<BoundMethodHandle, String, SpeciesData> {
        private static final MemberName SPECIES_DATA_ACCESSOR;
        static final List<MemberName> BMH_TRANSFORMS;
        static final int TN_COPY_NO_EXTEND;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !BoundMethodHandle.class.desiredAssertionStatus();
            try {
                SPECIES_DATA_ACCESSOR = MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "speciesData", MethodType.methodType(SpeciesData.class));
                TN_COPY_NO_EXTEND = LambdaForm.BasicType.V_TYPE.ordinal();
                try {
                    BMH_TRANSFORMS = List.of(MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWithExtendL", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class, Object.class})), MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWithExtendI", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class, Integer.TYPE})), MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWithExtendJ", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class, Long.TYPE})), MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWithExtendF", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class, Float.TYPE})), MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWithExtendD", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class, Double.TYPE})), MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, BoundMethodHandle.class, "copyWith", MethodType.methodType((Class<?>) BoundMethodHandle.class, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class})));
                    if (!$assertionsDisabled && BMH_TRANSFORMS.size() != LambdaForm.BasicType.TYPE_LIMIT) {
                        throw new AssertionError();
                    }
                } catch (ReflectiveOperationException ex) {
                    throw MethodHandleStatics.newInternalError("Failed resolving copyWith methods", ex);
                }
            } catch (ReflectiveOperationException ex2) {
                throw MethodHandleStatics.newInternalError("Bootstrap link error", ex2);
            }
        }

        private Specializer() {
            super(BoundMethodHandle.class, String.class, SpeciesData.class, MethodType.methodType(Void.TYPE, (Class<?>) MethodType.class, (Class<?>[]) new Class[]{LambdaForm.class}), SPECIES_DATA_ACCESSOR, "BMH_SPECIES", BMH_TRANSFORMS);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public String topSpeciesKey() {
            return "";
        }

        @Override
        public SpeciesData newSpeciesData(String key) {
            return new SpeciesData(this, key);
        }

        public class Factory extends ClassSpecializer<BoundMethodHandle, String, SpeciesData>.Factory {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            Factory(Specializer this$0) {
                super(this$0);
                Objects.requireNonNull(this$0);
            }

            @Override
            protected String chooseFieldName(Class<?> type, int index) {
                return "arg" + super.chooseFieldName(type, index);
            }
        }

        @Override
        public Factory makeFactory() {
            return new Factory(this);
        }
    }

    public static SpeciesData speciesData_L() {
        return Species_L.BMH_SPECIES;
    }

    static SpeciesData speciesData_LL() {
        return SPECIALIZER.findSpecies("LL");
    }

    public static SpeciesData speciesData_LLL() {
        return SPECIALIZER.findSpecies("LLL");
    }

    public static SpeciesData speciesData_LLLL() {
        return SPECIALIZER.findSpecies("LLLL");
    }

    public static SpeciesData speciesData_LLLLL() {
        return SPECIALIZER.findSpecies("LLLLL");
    }
}
