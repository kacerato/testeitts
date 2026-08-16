package com.github.javaparser.metamodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.utils.CodeGenerationUtils;
import java.lang.reflect.Field;
import java.util.Optional;
import yd.C16181m;

public class PropertyMetaModel {
    private final BaseNodeMetaModel containingNodeMetaModel;
    private final boolean hasWildcard;
    private final boolean isNodeList;
    private final boolean isNonEmpty;
    private final boolean isOptional;
    private final String name;
    private final Optional<BaseNodeMetaModel> nodeReference;
    private final Class<?> type;

    public PropertyMetaModel(BaseNodeMetaModel containingNodeMetaModel, String name, Class<?> type, Optional<BaseNodeMetaModel> nodeReference, boolean isOptional, boolean isNonEmpty, boolean isNodeList, boolean hasWildcard) {
        this.containingNodeMetaModel = containingNodeMetaModel;
        this.name = name;
        this.type = type;
        this.nodeReference = nodeReference;
        this.isOptional = isOptional;
        this.isNonEmpty = isNonEmpty;
        this.isNodeList = isNodeList;
        this.hasWildcard = hasWildcard;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        PropertyMetaModel propertyMetaModel = (PropertyMetaModel) o10;
        return this.name.equals(propertyMetaModel.name) && this.type.equals(propertyMetaModel.type);
    }

    public BaseNodeMetaModel getContainingNodeMetaModel() {
        return this.containingNodeMetaModel;
    }

    public String getGetterMethodName() {
        return CodeGenerationUtils.getterName(this.type, this.name);
    }

    public String getMetaModelFieldName() {
        return getName() + "PropertyMetaModel";
    }

    public String getName() {
        return this.name;
    }

    public Optional<BaseNodeMetaModel> getNodeReference() {
        return this.nodeReference;
    }

    public String getSetterMethodName() {
        return CodeGenerationUtils.setterName(this.name);
    }

    public Class<?> getType() {
        return this.type;
    }

    public String getTypeName() {
        return this.type.getSimpleName();
    }

    public String getTypeNameForGetter() {
        if (!this.isOptional) {
            return getTypeNameForSetter();
        }
        return "Optional<" + getTypeNameForSetter() + ">";
    }

    public String getTypeNameForSetter() {
        if (!this.isNodeList) {
            return getTypeNameGenerified();
        }
        return "NodeList<" + getTypeNameGenerified() + ">";
    }

    public String getTypeNameGenerified() {
        if (!this.hasWildcard) {
            return getTypeName();
        }
        return getTypeName() + "<?>";
    }

    public Object getValue(Node node) {
        try {
            for (Class<?> cls = node.getClass(); cls != null; cls = cls.getSuperclass()) {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.getName().equals(getName())) {
                        field.setAccessible(true);
                        return field.get(node);
                    }
                }
            }
            throw new NoSuchFieldError(getName());
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean hasWildcard() {
        return this.hasWildcard;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.type.hashCode();
    }

    public boolean is(Class<? extends Node> c10, String fieldName) {
        return this.containingNodeMetaModel.is(c10) && this.name.equals(fieldName);
    }

    public boolean isAttribute() {
        return !isNode();
    }

    public boolean isNode() {
        return getNodeReference().isPresent();
    }

    public boolean isNodeList() {
        return this.isNodeList;
    }

    public boolean isNonEmpty() {
        return this.isNonEmpty;
    }

    public boolean isOptional() {
        return this.isOptional;
    }

    public boolean isRequired() {
        return !this.isOptional;
    }

    public boolean isSingular() {
        return !this.isNodeList;
    }

    public String toString() {
        return "(" + getTypeName() + ")\t" + ((Object) this.containingNodeMetaModel) + C16181m.f130230g + this.name;
    }

    public boolean is(String fieldName) {
        return this.name.equals(fieldName);
    }
}
