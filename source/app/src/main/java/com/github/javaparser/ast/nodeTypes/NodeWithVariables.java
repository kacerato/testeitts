package com.github.javaparser.ast.nodeTypes;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.metamodel.DerivedProperty;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;

public interface NodeWithVariables<N extends Node> {

    public class C1Helper {
        public Optional<Type> toArrayLevel(Type type, int level) {
            if (level > type.getArrayLevel()) {
                return Optional.empty();
            }
            for (int arrayLevel = type.getArrayLevel(); arrayLevel > level; arrayLevel--) {
                if (!(type instanceof ArrayType)) {
                    return Optional.empty();
                }
                type = ((ArrayType) type).getComponentType();
            }
            return Optional.of(type);
        }
    }

    static Optional<Type> calculateMaximumCommonType(List<Type> types) {
        final C1Helper c1Helper = new C1Helper();
        final int i10 = 0;
        boolean z10 = true;
        while (z10) {
            Object[] array = types.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$calculateMaximumCommonType$1;
                    lambda$calculateMaximumCommonType$1 = NodeWithVariables.lambda$calculateMaximumCommonType$1(NodeWithVariables.C1Helper.this, i10, (Type) obj);
                    return lambda$calculateMaximumCommonType$1;
                }
            }).distinct().toArray();
            if (array.length != 1 || array[0] == null) {
                z10 = false;
            } else {
                i10++;
            }
        }
        return c1Helper.toArrayLevel(types.get(0), i10 - 1);
    }

    static String lambda$calculateMaximumCommonType$1(final C1Helper helper, final int currentLevel, Type v10) {
        return (String) helper.toArrayLevel(v10, currentLevel).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Type) obj).toString();
            }
        }).orElse(null);
    }

    default N addVariable(VariableDeclarator variableDeclarator) {
        getVariables().add((NodeList<VariableDeclarator>) variableDeclarator);
        return (N) this;
    }

    default Type getCommonType() {
        NodeList<VariableDeclarator> variables = getVariables();
        if (variables.isEmpty()) {
            throw new AssertionError((Object) "There is no common type since there are no variables.");
        }
        Type type2 = variables.get(0).getType2();
        for (int i10 = 1; i10 < variables.size(); i10++) {
            if (!variables.get(i10).getType2().equals(type2)) {
                throw new AssertionError((Object) "The variables do not have a common type.");
            }
        }
        return type2;
    }

    default Type getElementType() {
        NodeList<VariableDeclarator> variables = getVariables();
        if (variables.isEmpty()) {
            throw new AssertionError((Object) "There is no element type since there are no variables.");
        }
        Type elementType = variables.get(0).getType2().getElementType();
        for (int i10 = 1; i10 < variables.size(); i10++) {
            if (!variables.get(i10).getType2().getElementType().equals(elementType)) {
                throw new AssertionError((Object) "The variables do not have a common type.");
            }
        }
        return elementType;
    }

    @DerivedProperty
    default Optional<Type> getMaximumCommonType() {
        return calculateMaximumCommonType((List) getVariables().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type2;
                type2 = ((VariableDeclarator) obj).getType2();
                return type2;
            }
        }).collect(Collectors.toList()));
    }

    default VariableDeclarator getVariable(int i10) {
        return getVariables().get(i10);
    }

    NodeList<VariableDeclarator> getVariables();

    default N setAllTypes(Type newType) {
        Iterator<VariableDeclarator> it = getVariables().iterator();
        while (it.hasNext()) {
            it.next().setType(newType);
        }
        return (N) this;
    }

    default N setVariable(int i10, VariableDeclarator variableDeclarator) {
        getVariables().set(i10, (int) variableDeclarator);
        return (N) this;
    }

    N setVariables(NodeList<VariableDeclarator> variables);
}
