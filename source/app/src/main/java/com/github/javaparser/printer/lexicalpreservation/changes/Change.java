package com.github.javaparser.printer.lexicalpreservation.changes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.concretesyntaxmodel.CsmConditional;
import com.github.javaparser.utils.Utils;
import java.util.function.Predicate;

public interface Change {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition;

        static {
            int[] iArr = new int[CsmConditional.Condition.values().length];
            $SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition = iArr;
            try {
                iArr[CsmConditional.Condition.FLAG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition[CsmConditional.Condition.IS_NOT_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition[CsmConditional.Condition.IS_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition[CsmConditional.Condition.IS_PRESENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    default boolean lambda$evaluate$0(final Node node, ObservableProperty p10) {
        return ((Boolean) getValue(p10, node)).booleanValue();
    }

    default boolean evaluate(CsmConditional csmConditional, final Node node) {
        int i10 = AnonymousClass1.$SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition[csmConditional.getCondition().ordinal()];
        if (i10 == 1) {
            return csmConditional.getProperties().stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$evaluate$0;
                    lambda$evaluate$0 = Change.this.lambda$evaluate$0(node, (ObservableProperty) obj);
                    return lambda$evaluate$0;
                }
            });
        }
        if (i10 == 2) {
            return !Utils.valueIsNullOrEmpty(getValue(csmConditional.getProperty(), node));
        }
        if (i10 == 3) {
            return Utils.valueIsNullOrEmpty(getValue(csmConditional.getProperty(), node));
        }
        if (i10 == 4) {
            return (Utils.valueIsNullOrEmptyStringOrOptional(getValue(csmConditional.getProperty(), node)) || isEvaluatedOnDerivedProperty(csmConditional.getProperty())) ? false : true;
        }
        throw new UnsupportedOperationException("" + ((Object) csmConditional.getProperty()) + " " + ((Object) csmConditional.getCondition()));
    }

    ObservableProperty getProperty();

    Object getValue(ObservableProperty property, Node node);

    default boolean isEvaluatedOnDerivedProperty(ObservableProperty property) {
        ObservableProperty property2 = getProperty();
        return property2 != null && property.isDerived() && property.name().endsWith(property2.name());
    }
}
