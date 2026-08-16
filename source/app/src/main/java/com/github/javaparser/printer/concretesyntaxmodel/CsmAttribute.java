package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.GeneratedJavaParserConstants;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.utils.CodeGenerationUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class CsmAttribute implements CsmElement {
    private final ObservableProperty property;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty;

        static {
            int[] iArr = new int[ObservableProperty.values().length];
            $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty = iArr;
            try {
                iArr[ObservableProperty.IDENTIFIER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[ObservableProperty.TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[ObservableProperty.KEYWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[ObservableProperty.OPERATOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[ObservableProperty.VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[ObservableProperty.NAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public CsmAttribute(ObservableProperty property) {
        this.property = property;
    }

    public ObservableProperty getProperty() {
        return this.property;
    }

    public int getTokenType(Node node, String text, String tokenText) {
        int i10 = 0;
        switch (AnonymousClass1.$SwitchMap$com$github$javaparser$ast$observer$ObservableProperty[this.property.ordinal()]) {
            case 1:
                return 98;
            case 2:
                String str = JavadocConstants.ANCHOR_PREFIX_END + text.toLowerCase() + JavadocConstants.ANCHOR_PREFIX_END;
                while (true) {
                    String[] strArr = GeneratedJavaParserConstants.tokenImage;
                    if (i10 >= strArr.length) {
                        throw new RuntimeException(CodeGenerationUtils.f("Attribute '%s' does not corresponding to any expected value. Text: %s", this.property.camelCaseName(), text));
                    }
                    if (strArr[i10].equals(str)) {
                        return i10;
                    }
                    i10++;
                }
            case 3:
            case 4:
                String str2 = JavadocConstants.ANCHOR_PREFIX_END + tokenText.toLowerCase() + JavadocConstants.ANCHOR_PREFIX_END;
                while (true) {
                    String[] strArr2 = GeneratedJavaParserConstants.tokenImage;
                    if (i10 >= strArr2.length) {
                        throw new RuntimeException(CodeGenerationUtils.f("Attribute '%s' does not corresponding to any expected value. Text: %s", this.property.camelCaseName(), tokenText));
                    }
                    if (strArr2[i10].equals(str2)) {
                        return i10;
                    }
                    i10++;
                }
            case 5:
                if (node instanceof IntegerLiteralExpr) {
                    return 81;
                }
            case 6:
                return 98;
            default:
                throw new UnsupportedOperationException("getTokenType does not know how to handle property " + ((Object) this.property) + " with text: " + text);
        }
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        printer.print(PrintingHelper.printToString(this.property.getRawValue(node)));
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), getProperty());
    }
}
