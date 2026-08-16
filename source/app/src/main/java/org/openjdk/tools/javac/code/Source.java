package org.openjdk.tools.javac.code;

import java.util.HashMap;
import java.util.Map;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Options;

public enum Source {
    JDK1_2("1.2"),
    JDK1_3("1.3"),
    JDK1_4("1.4"),
    JDK1_5("1.5"),
    JDK1_6("1.6"),
    JDK1_7("1.7"),
    JDK1_8("1.8"),
    JDK1_9("1.9");

    public static final Source DEFAULT;
    private static final Source MAX;
    public static final Source MIN;
    private static final Context.Key<Source> sourceKey = new Context.Key<>();
    private static final Map<String, Source> tab = new HashMap();
    public final String name;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Source;

        static {
            int[] iArr = new int[Source.values().length];
            $SwitchMap$com$sun$tools$javac$code$Source = iArr;
            try {
                iArr[Source.JDK1_2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_5.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_6.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_7.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_8.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Source[Source.JDK1_9.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        for (Source source : values()) {
            tab.put(source.name, source);
        }
        Map<String, Source> map = tab;
        map.put("5", JDK1_5);
        Source source2 = JDK1_6;
        map.put("6", source2);
        map.put("7", JDK1_7);
        Source source3 = JDK1_8;
        map.put("8", source3);
        map.put("9", JDK1_9);
        MIN = source2;
        MAX = values()[values().length - 1];
        DEFAULT = source3;
    }

    Source(String str) {
        this.name = str;
    }

    public static Source instance(Context context) {
        Context.Key<Source> key = sourceKey;
        Source source = (Source) context.get(key);
        if (source == null) {
            String str = Options.instance(context).get(Option.SOURCE);
            if (str != null) {
                source = lookup(str);
            }
            if (source == null) {
                source = DEFAULT;
            }
            context.put((Context.Key<Context.Key<Source>>) key, (Context.Key<Source>) source);
        }
        return source;
    }

    public static Source lookup(String str) {
        return tab.get(str);
    }

    public static SourceVersion toSourceVersion(Source source) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Source[source.ordinal()]) {
            case 1:
                return SourceVersion.RELEASE_2;
            case 2:
                return SourceVersion.RELEASE_3;
            case 3:
                return SourceVersion.RELEASE_4;
            case 4:
                return SourceVersion.RELEASE_5;
            case 5:
                return SourceVersion.RELEASE_6;
            case 6:
                return SourceVersion.RELEASE_7;
            case 7:
                return SourceVersion.RELEASE_8;
            case 8:
                return SourceVersion.RELEASE_9;
            default:
                return null;
        }
    }

    public boolean allowAnnotationsAfterTypeParams() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowBinaryLiterals() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowDefaultMethods() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowDeprecationOnImport() {
        return compareTo(JDK1_9) < 0;
    }

    public boolean allowDiamond() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowDiamondWithAnonymousClassCreation() {
        return compareTo(JDK1_9) >= 0;
    }

    public boolean allowEffectivelyFinalInInnerClasses() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowEffectivelyFinalVariablesInTryWithResources() {
        return compareTo(JDK1_9) >= 0;
    }

    public boolean allowFunctionalInterfaceMostSpecific() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowGraphInference() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowImprovedCatchAnalysis() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowImprovedRethrowAnalysis() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowIntersectionTypesInCast() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowLambda() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowMethodReferences() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowModules() {
        return compareTo(JDK1_9) >= 0;
    }

    public boolean allowMulticatch() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowObjectToPrimitiveCast() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowPoly() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowPostApplicabilityVarargsAccessCheck() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowPrivateInterfaceMethods() {
        return compareTo(JDK1_9) >= 0;
    }

    public boolean allowPrivateSafeVarargs() {
        return compareTo(JDK1_9) >= 0;
    }

    public boolean allowRepeatedAnnotations() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowSimplifiedVarargs() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowStaticInterfaceMethods() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowStrictMethodClashCheck() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowStringsInSwitch() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowTryWithResources() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean allowTypeAnnotations() {
        return compareTo(JDK1_8) >= 0;
    }

    public boolean allowUnderscoreIdentifier() {
        return compareTo(JDK1_8) <= 0;
    }

    public boolean allowUnderscoresInLiterals() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean enforceThisDotInit() {
        return compareTo(JDK1_7) >= 0;
    }

    public boolean mapCapturesToBounds() {
        return compareTo(JDK1_8) < 0;
    }

    public Target requiredTarget() {
        return compareTo(JDK1_9) >= 0 ? Target.JDK1_9 : compareTo(JDK1_8) >= 0 ? Target.JDK1_8 : compareTo(JDK1_7) >= 0 ? Target.JDK1_7 : compareTo(JDK1_6) >= 0 ? Target.JDK1_6 : compareTo(JDK1_5) >= 0 ? Target.JDK1_5 : compareTo(JDK1_4) >= 0 ? Target.JDK1_4 : Target.JDK1_1;
    }
}
