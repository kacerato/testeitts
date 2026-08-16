package org.google.googlejavaformat.java;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.C12534j2;
import com.google.common.collect.InterfaceC12546m2;
import com.google.common.collect.Ordering;
import com.google.common.collect.b3;
import com.google.common.collect.e3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import org.google.googlejavaformat.Input;
import org.google.googlejavaformat.java.JavaInput;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.tools.javac.parser.Tokens;

public final class ModifierOrderer {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind;

        static {
            int[] iArr = new int[Tokens.TokenKind.values().length];
            $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind = iArr;
            try {
                iArr[Tokens.TokenKind.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PROTECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STATIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DEFAULT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FINAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.TRANSIENT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.VOLATILE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SYNCHRONIZED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.NATIVE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STRICTFP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private static void addTrivia(StringBuilder replacement, AbstractC12521g1<? extends Input.Tok> toks) {
        e3<? extends Input.Tok> it = toks.iterator();
        while (it.hasNext()) {
            replacement.append(it.next().getText());
        }
    }

    private static JavaInput applyReplacements(JavaInput javaInput, b3<Integer, String> replacementMap) throws FormatterException {
        Map<C12534j2<Integer>, String> g10 = replacementMap.g();
        if (g10.isEmpty()) {
            return javaInput;
        }
        StringBuilder sb2 = new StringBuilder(javaInput.getText());
        for (Map.Entry<C12534j2<Integer>, String> entry : g10.entrySet()) {
            C12534j2<Integer> key = entry.getKey();
            sb2.replace(key.z().intValue(), key.L().intValue(), entry.getValue());
        }
        return new JavaInput(sb2.toString());
    }

    private static Modifier asModifier(Input.Token token) {
        return getModifier(((JavaInput.Tok) token.getTok()).kind());
    }

    private static Modifier getModifier(Tokens.TokenKind kind) {
        if (kind == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$org$openjdk$tools$javac$parser$Tokens$TokenKind[kind.ordinal()]) {
            case 1:
                return Modifier.PUBLIC;
            case 2:
                return Modifier.PROTECTED;
            case 3:
                return Modifier.PRIVATE;
            case 4:
                return Modifier.ABSTRACT;
            case 5:
                return Modifier.STATIC;
            case 6:
                return Modifier.DEFAULT;
            case 7:
                return Modifier.FINAL;
            case 8:
                return Modifier.TRANSIENT;
            case 9:
                return Modifier.VOLATILE;
            case 10:
                return Modifier.SYNCHRONIZED;
            case 11:
                return Modifier.NATIVE;
            case 12:
                return Modifier.STRICTFP;
            default:
                return null;
        }
    }

    public static JavaInput reorderModifiers(String text) throws FormatterException {
        return reorderModifiers(new JavaInput(text), AbstractC12521g1.y(C12534j2.g(0, Integer.valueOf(text.length()))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JavaInput reorderModifiers(JavaInput javaInput, Collection<C12534j2<Integer>> characterRanges) throws FormatterException {
        Modifier asModifier;
        Input.Token next;
        Modifier asModifier2;
        if (javaInput.getTokens().isEmpty()) {
            return javaInput;
        }
        InterfaceC12546m2<Integer> characterRangesToTokenRanges = javaInput.characterRangesToTokenRanges(characterRanges);
        e3<? extends Input.Token> it = javaInput.getTokens().iterator();
        b3 p10 = b3.p();
        while (it.hasNext()) {
            Input.Token next2 = it.next();
            if (characterRangesToTokenRanges.contains(Integer.valueOf(next2.getTok().getIndex())) && (asModifier = asModifier(next2)) != null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int position = next2.getTok().getPosition();
                arrayList2.add(asModifier);
                arrayList.add(next2);
                int i10 = -1;
                while (it.hasNext() && (asModifier2 = asModifier((next = it.next()))) != null) {
                    arrayList2.add(asModifier2);
                    arrayList.add(next);
                    i10 = next.getTok().getPosition() + next.getTok().length();
                }
                if (!Ordering.A().m(arrayList2)) {
                    Collections.sort(arrayList2);
                    StringBuilder sb2 = new StringBuilder();
                    for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                        if (i11 > 0) {
                            addTrivia(sb2, ((Input.Token) arrayList.get(i11)).getToksBefore());
                        }
                        sb2.append(((Modifier) arrayList2.get(i11)).toString());
                        if (i11 < arrayList.size() - 1) {
                            addTrivia(sb2, ((Input.Token) arrayList.get(i11)).getToksAfter());
                        }
                    }
                    p10.k(C12534j2.g(Integer.valueOf(position), Integer.valueOf(i10)), sb2.toString());
                }
            }
        }
        return applyReplacements(javaInput, p10);
    }
}
