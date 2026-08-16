package java.lang.constant;

import java.lang.invoke.CallSite;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.util.Arrays;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.constant.ConstantUtils;
import org.openjdk.tools.doclint.DocLint;

public final class DynamicCallSiteDesc {
    private final DirectMethodHandleDesc bootstrapMethod;
    private final ConstantDesc[] bootstrapArgs;
    private final String invocationName;
    private final MethodTypeDesc invocationType;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !DynamicCallSiteDesc.class.desiredAssertionStatus();
    }

    private DynamicCallSiteDesc(DirectMethodHandleDesc bootstrapMethod, String invocationName, MethodTypeDesc invocationType, ConstantDesc[] bootstrapArgs) {
        this.invocationName = ConstantUtils.validateMemberName((String) Objects.requireNonNull(invocationName), true);
        this.invocationType = (MethodTypeDesc) Objects.requireNonNull(invocationType);
        this.bootstrapMethod = (DirectMethodHandleDesc) Objects.requireNonNull(bootstrapMethod);
        this.bootstrapArgs = (ConstantDesc[]) Objects.requireNonNull((ConstantDesc[]) bootstrapArgs.clone());
        for (int i10 = 0; i10 < this.bootstrapArgs.length; i10++) {
            Objects.requireNonNull(this.bootstrapArgs[i10]);
        }
        if (invocationName.length() == 0) {
            throw new IllegalArgumentException("Illegal invocation name: " + invocationName);
        }
    }

    public static DynamicCallSiteDesc of(DirectMethodHandleDesc bootstrapMethod, String invocationName, MethodTypeDesc invocationType, ConstantDesc... bootstrapArgs) {
        return new DynamicCallSiteDesc(bootstrapMethod, invocationName, invocationType, bootstrapArgs);
    }

    public static DynamicCallSiteDesc of(DirectMethodHandleDesc bootstrapMethod, String invocationName, MethodTypeDesc invocationType) {
        return new DynamicCallSiteDesc(bootstrapMethod, invocationName, invocationType, ConstantUtils.EMPTY_CONSTANTDESC);
    }

    public static DynamicCallSiteDesc of(DirectMethodHandleDesc bootstrapMethod, MethodTypeDesc invocationType) {
        return of(bootstrapMethod, ConstantDescs.DEFAULT_NAME, invocationType);
    }

    public DynamicCallSiteDesc withArgs(ConstantDesc... bootstrapArgs) {
        return new DynamicCallSiteDesc(this.bootstrapMethod, this.invocationName, this.invocationType, bootstrapArgs);
    }

    public DynamicCallSiteDesc withNameAndType(String invocationName, MethodTypeDesc invocationType) {
        return new DynamicCallSiteDesc(this.bootstrapMethod, invocationName, invocationType, this.bootstrapArgs);
    }

    public String invocationName() {
        return this.invocationName;
    }

    public MethodTypeDesc invocationType() {
        return this.invocationType;
    }

    public MethodHandleDesc bootstrapMethod() {
        return this.bootstrapMethod;
    }

    public ConstantDesc[] bootstrapArgs() {
        return (ConstantDesc[]) this.bootstrapArgs.clone();
    }

    public CallSite resolveCallSiteDesc(MethodHandles.Lookup lookup) throws Throwable {
        if (!$assertionsDisabled && !this.bootstrapMethod.invocationType().parameterType(1).equals(ConstantDescs.CD_String)) {
            throw new AssertionError();
        }
        MethodHandle bsm = this.bootstrapMethod.resolveConstantDesc(lookup);
        Object[] args = new Object[this.bootstrapArgs.length + 3];
        args[0] = lookup;
        args[1] = this.invocationName;
        args[2] = this.invocationType.resolveConstantDesc(lookup);
        System.arraycopy(this.bootstrapArgs, 0, args, 3, this.bootstrapArgs.length);
        return (CallSite) bsm.invokeWithArguments(args);
    }

    public final boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        DynamicCallSiteDesc specifier = (DynamicCallSiteDesc) o10;
        return Objects.equals(this.bootstrapMethod, specifier.bootstrapMethod) && Arrays.equals(this.bootstrapArgs, specifier.bootstrapArgs) && Objects.equals(this.invocationName, specifier.invocationName) && Objects.equals(this.invocationType, specifier.invocationType);
    }

    public final int hashCode() {
        int result = Objects.hash(this.bootstrapMethod, this.invocationName, this.invocationType);
        return (31 * result) + Arrays.hashCode(this.bootstrapArgs);
    }

    public String toString() {
        Object[] objArr = new Object[5];
        objArr[0] = this.bootstrapMethod.owner().displayName();
        objArr[1] = this.bootstrapMethod.methodName();
        objArr[2] = this.invocationName.equals(ConstantDescs.DEFAULT_NAME) ? "" : this.invocationName + "/";
        objArr[3] = Stream.of((Object[]) this.bootstrapArgs).map((v0) -> {
            return v0.toString();
        }).collect(Collectors.joining(DocLint.SEPARATOR));
        objArr[4] = this.invocationType.displayDescriptor();
        return String.format("DynamicCallSiteDesc[%s::%s(%s%s):%s]", objArr);
    }
}
