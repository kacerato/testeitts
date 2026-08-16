package java.lang.invoke;

import java.lang.invoke.AbstractConstantGroup;

interface BootstrapCallInfo<T> extends ConstantGroup {
    MethodHandle bootstrapMethod();

    String invocationName();

    T invocationType();

    static <T> BootstrapCallInfo<T> makeBootstrapCallInfo(MethodHandle bsm, String name, T type, ConstantGroup constants) {
        AbstractConstantGroup.BSCIWithCache<T> bsci = new AbstractConstantGroup.BSCIWithCache<>(bsm, name, type, constants.size());
        Object NP = AbstractConstantGroup.BSCIWithCache.NOT_PRESENT;
        bsci.initializeCache(constants.asList(NP), NP);
        return bsci;
    }
}
