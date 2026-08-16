package org.eclipse.jdt.internal.compiler.env;

import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;

public interface IModuleAwareNameEnvironment extends INameEnvironment {

    public enum LookupStrategy {
        Named {
            @Override
            public <T> boolean matchesWithName(T t10, Predicate<T> predicate, Predicate<T> predicate2) {
                if (LookupStrategy.$assertionsDisabled || predicate2 != null) {
                    return predicate.test(t10) && predicate2.test(t10);
                }
                throw new AssertionError((Object) "name match needs a nameMatcher");
            }
        },
        AnyNamed {
            @Override
            public <T> boolean matchesWithName(T t10, Predicate<T> predicate, Predicate<T> predicate2) {
                return predicate.test(t10);
            }
        },
        Any {
            @Override
            public <T> boolean matchesWithName(T t10, Predicate<T> predicate, Predicate<T> predicate2) {
                return true;
            }
        },
        Unnamed {
            @Override
            public <T> boolean matchesWithName(T t10, Predicate<T> predicate, Predicate<T> predicate2) {
                return !predicate.test(t10);
            }
        };

        private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
        static final boolean $assertionsDisabled = false;

        public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy() {
            int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[valuesCustom().length];
            try {
                iArr2[Any.ordinal()] = 3;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[AnyNamed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Named.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Unnamed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy = iArr2;
            return iArr2;
        }

        public static LookupStrategy get(char[] cArr) {
            return cArr == ModuleBinding.ANY ? Any : cArr == ModuleBinding.ANY_NAMED ? AnyNamed : cArr == ModuleBinding.UNNAMED ? Unnamed : Named;
        }

        public static String getStringName(char[] cArr) {
            if ($SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[get(cArr).ordinal()] != 1) {
                return null;
            }
            return String.valueOf(cArr);
        }

        public static boolean lambda$0(Object obj) {
            return true;
        }

        public static LookupStrategy[] valuesCustom() {
            LookupStrategy[] valuesCustom = values();
            int length = valuesCustom.length;
            LookupStrategy[] lookupStrategyArr = new LookupStrategy[length];
            System.arraycopy(valuesCustom, 0, lookupStrategyArr, 0, length);
            return lookupStrategyArr;
        }

        public <T> boolean matches(T t10, Predicate<T> predicate) {
            return matchesWithName(t10, predicate, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$0;
                    lambda$0 = IModuleAwareNameEnvironment.LookupStrategy.lambda$0(obj);
                    return lambda$0;
                }
            });
        }

        public abstract <T> boolean matchesWithName(T t10, Predicate<T> predicate, Predicate<T> predicate2);

        LookupStrategy(LookupStrategy lookupStrategy) {
            this();
        }
    }

    default void applyModuleUpdates(IUpdatableModule iUpdatableModule, IUpdatableModule.UpdateKind updateKind) {
    }

    NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3);

    @Override
    default NameEnvironmentAnswer findType(char[][] cArr) {
        return findType(cArr, ModuleBinding.ANY);
    }

    NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2);

    char[][] getAllAutomaticModules();

    IModule getModule(char[] cArr);

    char[][] getModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3);

    default char[][] getUniqueModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3) {
        char[][] modulesDeclaringPackage = getModulesDeclaringPackage(cArr, cArr2, cArr3);
        if (modulesDeclaringPackage == null || modulesDeclaringPackage.length <= 1) {
            return modulesDeclaringPackage;
        }
        SimpleSetOfCharArray simpleSetOfCharArray = new SimpleSetOfCharArray(modulesDeclaringPackage.length);
        for (char[] cArr4 : modulesDeclaringPackage) {
            simpleSetOfCharArray.add(cArr4);
        }
        char[][] cArr5 = new char[simpleSetOfCharArray.elementSize];
        simpleSetOfCharArray.asArray(cArr5);
        return cArr5;
    }

    boolean hasCompilationUnit(char[][] cArr, char[] cArr2, boolean z10);

    @Override
    default boolean isPackage(char[][] cArr, char[] cArr2) {
        return getModulesDeclaringPackage(cArr, cArr2, ModuleBinding.ANY) != null;
    }

    @Override
    default NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2) {
        return findType(cArr, cArr2, ModuleBinding.ANY);
    }
}
