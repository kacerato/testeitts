package java.lang.constant;

import java.lang.Enum;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.constant.ConstantUtils;
import org.openjdk.tools.doclint.DocLint;

public abstract class DynamicConstantDesc<T> implements ConstantDesc {
    private final DirectMethodHandleDesc bootstrapMethod;
    private final ConstantDesc[] bootstrapArgs;
    private final String constantName;
    private final ClassDesc constantType;

    public DynamicConstantDesc(DirectMethodHandleDesc bootstrapMethod, String constantName, ClassDesc constantType, ConstantDesc... bootstrapArgs) {
        this.bootstrapMethod = (DirectMethodHandleDesc) Objects.requireNonNull(bootstrapMethod);
        this.constantName = ConstantUtils.validateMemberName(constantName, true);
        this.constantType = (ClassDesc) Objects.requireNonNull(constantType);
        this.bootstrapArgs = bootstrapArgs.length == 0 ? ConstantUtils.EMPTY_CONSTANTDESC : (ConstantDesc[]) bootstrapArgs.clone();
    }

    public static <T> ConstantDesc ofCanonical(DirectMethodHandleDesc bootstrapMethod, String constantName, ClassDesc constantType, ConstantDesc[] bootstrapArgs) {
        return ofNamed(bootstrapMethod, constantName, constantType, bootstrapArgs).tryCanonicalize();
    }

    public static <T> DynamicConstantDesc<T> ofNamed(DirectMethodHandleDesc bootstrapMethod, String constantName, ClassDesc constantType, ConstantDesc... bootstrapArgs) {
        return new AnonymousDynamicConstantDesc(bootstrapMethod, constantName, constantType, bootstrapArgs);
    }

    public static <T> DynamicConstantDesc<T> of(DirectMethodHandleDesc bootstrapMethod, ConstantDesc... bootstrapArgs) {
        return ofNamed(bootstrapMethod, ConstantDescs.DEFAULT_NAME, bootstrapMethod.invocationType().returnType(), bootstrapArgs);
    }

    public static <T> DynamicConstantDesc<T> of(DirectMethodHandleDesc bootstrapMethod) {
        return of(bootstrapMethod, ConstantUtils.EMPTY_CONSTANTDESC);
    }

    public String constantName() {
        return this.constantName;
    }

    public ClassDesc constantType() {
        return this.constantType;
    }

    public DirectMethodHandleDesc bootstrapMethod() {
        return this.bootstrapMethod;
    }

    public ConstantDesc[] bootstrapArgs() {
        return (ConstantDesc[]) this.bootstrapArgs.clone();
    }

    public List<ConstantDesc> bootstrapArgsList() {
        return List.of(this.bootstrapArgs);
    }

    @Override
    public T resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException {
        try {
            MethodHandle resolveConstantDesc = this.bootstrapMethod.resolveConstantDesc(lookup);
            if (resolveConstantDesc.type().parameterCount() < 2 || !MethodHandles.Lookup.class.isAssignableFrom(resolveConstantDesc.type().parameterType(0))) {
                throw new BootstrapMethodError("Invalid bootstrap method declared for resolving a dynamic constant: " + ((Object) this.bootstrapMethod));
            }
            Object[] objArr = new Object[3 + this.bootstrapArgs.length];
            objArr[0] = lookup;
            objArr[1] = this.constantName;
            objArr[2] = this.constantType.resolveConstantDesc(lookup);
            for (int i10 = 0; i10 < this.bootstrapArgs.length; i10++) {
                objArr[3 + i10] = this.bootstrapArgs[i10].resolveConstantDesc(lookup);
            }
            return (T) resolveConstantDesc.invokeWithArguments(objArr);
        } catch (Error e10) {
            throw e10;
        } catch (Throwable th2) {
            throw new BootstrapMethodError(th2);
        }
    }

    private ConstantDesc tryCanonicalize() {
        Function<DynamicConstantDesc<?>, ConstantDesc> f10 = CanonicalMapHolder.CANONICAL_MAP.get(this.bootstrapMethod);
        if (f10 != null) {
            try {
                return f10.apply(this);
            } catch (Throwable th2) {
                return this;
            }
        }
        return this;
    }

    private static ConstantDesc canonicalizeNull(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 0) {
            return desc;
        }
        return ConstantDescs.NULL;
    }

    private static ConstantDesc canonicalizeEnum(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 0 || ((DynamicConstantDesc) desc).constantName == null) {
            return desc;
        }
        return Enum.EnumDesc.of(((DynamicConstantDesc) desc).constantType, ((DynamicConstantDesc) desc).constantName);
    }

    private static ConstantDesc canonicalizePrimitiveClass(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 0 || !desc.constantType().equals(ConstantDescs.CD_Class) || ((DynamicConstantDesc) desc).constantName == null) {
            return desc;
        }
        return ClassDesc.ofDescriptor(((DynamicConstantDesc) desc).constantName);
    }

    private static ConstantDesc canonicalizeStaticFieldVarHandle(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 2 || !desc.constantType().equals(ConstantDescs.CD_VarHandle)) {
            return desc;
        }
        return VarHandle.VarHandleDesc.ofStaticField((ClassDesc) ((DynamicConstantDesc) desc).bootstrapArgs[0], ((DynamicConstantDesc) desc).constantName, (ClassDesc) ((DynamicConstantDesc) desc).bootstrapArgs[1]);
    }

    private static ConstantDesc canonicalizeFieldVarHandle(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 2 || !desc.constantType().equals(ConstantDescs.CD_VarHandle)) {
            return desc;
        }
        return VarHandle.VarHandleDesc.ofField((ClassDesc) ((DynamicConstantDesc) desc).bootstrapArgs[0], ((DynamicConstantDesc) desc).constantName, (ClassDesc) ((DynamicConstantDesc) desc).bootstrapArgs[1]);
    }

    private static ConstantDesc canonicalizeArrayVarHandle(DynamicConstantDesc<?> desc) {
        if (((DynamicConstantDesc) desc).bootstrapArgs.length != 1 || !desc.constantType().equals(ConstantDescs.CD_VarHandle)) {
            return desc;
        }
        return VarHandle.VarHandleDesc.ofArray((ClassDesc) ((DynamicConstantDesc) desc).bootstrapArgs[0]);
    }

    public final boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 instanceof DynamicConstantDesc) {
            DynamicConstantDesc<?> desc = (DynamicConstantDesc) o10;
            if (Objects.equals(this.bootstrapMethod, desc.bootstrapMethod) && Arrays.equals(this.bootstrapArgs, desc.bootstrapArgs) && Objects.equals(this.constantName, desc.constantName) && Objects.equals(this.constantType, desc.constantType)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = Objects.hash(this.bootstrapMethod, this.constantName, this.constantType);
        return (31 * result) + Arrays.hashCode(this.bootstrapArgs);
    }

    public String toString() {
        Object[] objArr = new Object[5];
        objArr[0] = this.bootstrapMethod.owner().displayName();
        objArr[1] = this.bootstrapMethod.methodName();
        objArr[2] = this.constantName.equals(ConstantDescs.DEFAULT_NAME) ? "" : this.constantName + "/";
        objArr[3] = Stream.of((Object[]) this.bootstrapArgs).map((v0) -> {
            return v0.toString();
        }).collect(Collectors.joining(DocLint.SEPARATOR));
        objArr[4] = this.constantType.displayName();
        return String.format("DynamicConstantDesc[%s::%s(%s%s)%s]", objArr);
    }

    public static class AnonymousDynamicConstantDesc<T> extends DynamicConstantDesc<T> {
        AnonymousDynamicConstantDesc(DirectMethodHandleDesc bootstrapMethod, String constantName, ClassDesc constantType, ConstantDesc... bootstrapArgs) {
            super(bootstrapMethod, constantName, constantType, bootstrapArgs);
        }
    }

    public static final class CanonicalMapHolder {
        static final Map<MethodHandleDesc, Function<DynamicConstantDesc<?>, ConstantDesc>> CANONICAL_MAP = Map.ofEntries(new Map.Entry[]{Map.entry(ConstantDescs.BSM_PRIMITIVE_CLASS, DynamicConstantDesc::canonicalizePrimitiveClass), Map.entry(ConstantDescs.BSM_ENUM_CONSTANT, DynamicConstantDesc::canonicalizeEnum), Map.entry(ConstantDescs.BSM_NULL_CONSTANT, DynamicConstantDesc::canonicalizeNull), Map.entry(ConstantDescs.BSM_VARHANDLE_STATIC_FIELD, DynamicConstantDesc::canonicalizeStaticFieldVarHandle), Map.entry(ConstantDescs.BSM_VARHANDLE_FIELD, DynamicConstantDesc::canonicalizeFieldVarHandle), Map.entry(ConstantDescs.BSM_VARHANDLE_ARRAY, DynamicConstantDesc::canonicalizeArrayVarHandle)});

        private CanonicalMapHolder() {
        }
    }
}
