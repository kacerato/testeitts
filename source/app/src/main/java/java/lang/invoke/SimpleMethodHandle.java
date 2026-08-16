package java.lang.invoke;

import java.lang.invoke.BoundMethodHandle;
import jdk.internal.vm.annotation.Stable;

public final class SimpleMethodHandle extends BoundMethodHandle {

    @Stable
    static BoundMethodHandle.SpeciesData BMH_SPECIES;

    private SimpleMethodHandle(MethodType type, LambdaForm form) {
        super(type, form);
    }

    public static BoundMethodHandle make(MethodType type, LambdaForm form) {
        return new SimpleMethodHandle(type, form);
    }

    @Override
    public BoundMethodHandle.SpeciesData speciesData() {
        return BMH_SPECIES;
    }

    @Override
    public BoundMethodHandle copyWith(MethodType mt, LambdaForm lf2) {
        return make(mt, lf2);
    }

    @Override
    public String internalProperties() {
        return "\n& Class=" + getClass().getSimpleName();
    }

    @Override
    public final BoundMethodHandle copyWithExtendL(MethodType mt, LambdaForm lf2, Object narg) {
        return BoundMethodHandle.bindSingleL(mt, lf2, narg);
    }

    @Override
    public final BoundMethodHandle copyWithExtendI(MethodType mt, LambdaForm lf2, int narg) {
        return BoundMethodHandle.bindSingleI(mt, lf2, narg);
    }

    @Override
    public final BoundMethodHandle copyWithExtendJ(MethodType mt, LambdaForm lf2, long narg) {
        return BoundMethodHandle.bindSingleJ(mt, lf2, narg);
    }

    @Override
    public final BoundMethodHandle copyWithExtendF(MethodType mt, LambdaForm lf2, float narg) {
        return BoundMethodHandle.bindSingleF(mt, lf2, narg);
    }

    @Override
    public final BoundMethodHandle copyWithExtendD(MethodType mt, LambdaForm lf2, double narg) {
        return BoundMethodHandle.bindSingleD(mt, lf2, narg);
    }
}
