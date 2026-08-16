package com.github.javaparser.metamodel;

import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.utils.Utils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public abstract class BaseNodeMetaModel {
    private final boolean hasWildcard;
    private final boolean isAbstract;
    private final String name;
    private final String packageName;
    private final Optional<BaseNodeMetaModel> superNodeMetaModel;
    private final Class<? extends Node> type;
    private final List<PropertyMetaModel> declaredPropertyMetaModels = new ArrayList();
    private final List<PropertyMetaModel> derivedPropertyMetaModels = new ArrayList();
    private final List<PropertyMetaModel> constructorParameters = new ArrayList();

    public BaseNodeMetaModel(Optional<BaseNodeMetaModel> superNodeMetaModel, Class<? extends Node> type, String name, String packageName, boolean isAbstract, boolean hasWildcard) {
        this.superNodeMetaModel = superNodeMetaModel;
        this.type = type;
        this.name = name;
        this.packageName = packageName;
        this.isAbstract = isAbstract;
        this.hasWildcard = hasWildcard;
    }

    public Node construct(Map<String, Object> parameters) {
        int i10 = 0;
        for (Constructor<?> constructor : getType().getConstructors()) {
            if (constructor.getAnnotation(AllFieldsConstructor.class) != null) {
                try {
                    Object[] objArr = new Object[constructor.getParameterCount()];
                    for (PropertyMetaModel propertyMetaModel : getConstructorParameters()) {
                        Object obj = parameters.get(propertyMetaModel.getName());
                        objArr[i10] = obj;
                        if (obj == null && propertyMetaModel.isRequired() && propertyMetaModel.isNodeList()) {
                            objArr[i10] = new NodeList();
                        }
                        i10++;
                    }
                    return (Node) constructor.newInstance(objArr);
                } catch (IllegalAccessException e10) {
                    e = e10;
                    throw new RuntimeException(e);
                } catch (InstantiationException e11) {
                    e = e11;
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e12) {
                    e = e12;
                    throw new RuntimeException(e);
                }
            }
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.type.equals(((BaseNodeMetaModel) o10).type);
    }

    public List<PropertyMetaModel> getAllPropertyMetaModels() {
        ArrayList arrayList = new ArrayList(getDeclaredPropertyMetaModels());
        BaseNodeMetaModel baseNodeMetaModel = this;
        while (baseNodeMetaModel.getSuperNodeMetaModel().isPresent()) {
            baseNodeMetaModel = baseNodeMetaModel.getSuperNodeMetaModel().get();
            arrayList.addAll(baseNodeMetaModel.getDeclaredPropertyMetaModels());
        }
        return arrayList;
    }

    public List<PropertyMetaModel> getConstructorParameters() {
        return this.constructorParameters;
    }

    public List<PropertyMetaModel> getDeclaredPropertyMetaModels() {
        return this.declaredPropertyMetaModels;
    }

    public List<PropertyMetaModel> getDerivedPropertyMetaModels() {
        return this.derivedPropertyMetaModels;
    }

    public String getMetaModelFieldName() {
        return Utils.decapitalize(getClass().getSimpleName());
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getQualifiedClassName() {
        return this.packageName + "." + this.name;
    }

    public Optional<BaseNodeMetaModel> getSuperNodeMetaModel() {
        return this.superNodeMetaModel;
    }

    public Class<? extends Node> getType() {
        return this.type;
    }

    public String getTypeName() {
        return this.type.getSimpleName();
    }

    public String getTypeNameGenerified() {
        if (!this.hasWildcard) {
            return getTypeName();
        }
        return getTypeName() + "<?>";
    }

    public boolean hasWildcard() {
        return this.hasWildcard;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    public boolean is(Class<? extends Node> c10) {
        return this.type.equals(c10);
    }

    public boolean isAbstract() {
        return this.isAbstract;
    }

    public boolean isInstanceOfMetaModel(BaseNodeMetaModel baseMetaModel) {
        if (this == baseMetaModel) {
            return true;
        }
        if (isRootNode()) {
            return false;
        }
        return getSuperNodeMetaModel().get().isInstanceOfMetaModel(baseMetaModel);
    }

    public boolean isRootNode() {
        return !this.superNodeMetaModel.isPresent();
    }

    public String toString() {
        return this.name;
    }
}
