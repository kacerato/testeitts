package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.AccessSpecifier;
import com.github.javaparser.ast.C11778x;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public interface NodeWithModifiers<N extends Node> {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$ast$Modifier$Keyword;

        static {
            int[] iArr = new int[Modifier.Keyword.values().length];
            $SwitchMap$com$github$javaparser$ast$Modifier$Keyword = iArr;
            try {
                iArr[Modifier.Keyword.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.PROTECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$ast$Modifier$Keyword[Modifier.Keyword.PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static boolean lambda$addModifier$0(final Modifier.Keyword newModifier, Modifier m10) {
        return m10.getKeyword() == newModifier;
    }

    static boolean lambda$removeModifier$1(final List modifiersToRemoveAsList, Modifier existingModifier) {
        return !modifiersToRemoveAsList.contains(existingModifier.getKeyword());
    }

    default N addModifier(Modifier.Keyword... newModifiers) {
        NodeList<Modifier> nodeList = new NodeList<>(getModifiers());
        for (final Modifier.Keyword keyword : newModifiers) {
            if (!nodeList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$addModifier$0;
                    lambda$addModifier$0 = NodeWithModifiers.lambda$addModifier$0(Modifier.Keyword.this, (Modifier) obj);
                    return lambda$addModifier$0;
                }
            })) {
                nodeList.add((NodeList<Modifier>) new Modifier(keyword));
            }
        }
        setModifiers(nodeList);
        return (N) this;
    }

    default AccessSpecifier getAccessSpecifier() {
        Iterator<Modifier> it = getModifiers().iterator();
        while (it.hasNext()) {
            int i10 = AnonymousClass1.$SwitchMap$com$github$javaparser$ast$Modifier$Keyword[it.next().getKeyword().ordinal()];
            if (i10 == 1) {
                return AccessSpecifier.PUBLIC;
            }
            if (i10 == 2) {
                return AccessSpecifier.PROTECTED;
            }
            if (i10 == 3) {
                return AccessSpecifier.PRIVATE;
            }
        }
        return AccessSpecifier.NONE;
    }

    NodeList<Modifier> getModifiers();

    default boolean hasModifier(Modifier.Keyword modifier) {
        Iterator<Modifier> it = getModifiers().iterator();
        while (it.hasNext()) {
            if (it.next().getKeyword() == modifier) {
                return true;
            }
        }
        return false;
    }

    default N removeModifier(Modifier.Keyword... modifiersToRemove) {
        final List asList = Arrays.asList(modifiersToRemove);
        setModifiers((NodeList<Modifier>) getModifiers().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$removeModifier$1;
                lambda$removeModifier$1 = NodeWithModifiers.lambda$removeModifier$1(List.this, (Modifier) obj);
                return lambda$removeModifier$1;
            }
        }).collect(NodeList.toNodeList()));
        return (N) this;
    }

    default N setModifier(Modifier.Keyword m10, boolean set) {
        return set ? addModifier(m10) : removeModifier(m10);
    }

    N setModifiers(NodeList<Modifier> modifiers);

    default N setModifiers(final Modifier.Keyword... modifiers) {
        return setModifiers((NodeList<Modifier>) Arrays.stream(modifiers).map(new C11778x()).collect(NodeList.toNodeList()));
    }
}
