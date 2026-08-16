package org.openjdk.tools.javac.model;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.annotation.Annotation;
import java.lang.annotation.AnnotationTypeMismatchException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.openjdk.javax.lang.model.type.MirroredTypeException;
import org.openjdk.javax.lang.model.type.MirroredTypesException;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Pair;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.AnnotationType;
import sun.reflect.annotation.EnumConstantNotPresentExceptionProxy;
import sun.reflect.annotation.ExceptionProxy;

public class AnnotationProxyMaker {
    private final Attribute.Compound anno;
    private final Class<? extends Annotation> annoType;

    public static final class MirroredTypeExceptionProxy extends ExceptionProxy {
        static final long serialVersionUID = 269;
        private transient TypeMirror type;
        private final String typeString;

        public MirroredTypeExceptionProxy(TypeMirror typeMirror) {
            this.type = typeMirror;
            this.typeString = typeMirror.toString();
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.type = null;
        }

        public boolean equals(Object obj) {
            TypeMirror typeMirror = this.type;
            return typeMirror != null && (obj instanceof MirroredTypeExceptionProxy) && typeMirror.equals(((MirroredTypeExceptionProxy) obj).type);
        }

        public RuntimeException generateException() {
            return new MirroredTypeException(this.type);
        }

        public int hashCode() {
            Object obj = this.type;
            if (obj == null) {
                obj = this.typeString;
            }
            return obj.hashCode();
        }

        public String toString() {
            return this.typeString;
        }
    }

    public static final class MirroredTypesExceptionProxy extends ExceptionProxy {
        static final long serialVersionUID = 269;
        private final String typeStrings;
        private transient List<TypeMirror> types;

        public MirroredTypesExceptionProxy(List<TypeMirror> list) {
            this.types = list;
            this.typeStrings = list.toString();
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.types = null;
        }

        public boolean equals(Object obj) {
            List<TypeMirror> list = this.types;
            return list != null && (obj instanceof MirroredTypesExceptionProxy) && list.equals(((MirroredTypesExceptionProxy) obj).types);
        }

        public RuntimeException generateException() {
            return new MirroredTypesException(this.types);
        }

        public int hashCode() {
            Object obj = this.types;
            if (obj == null) {
                obj = this.typeStrings;
            }
            return obj.hashCode();
        }

        public String toString() {
            return this.typeStrings;
        }
    }

    public class ValueVisitor implements Attribute.Visitor {
        private Symbol.MethodSymbol meth;
        private Class<?> returnClass;
        private Object value;

        public ValueVisitor(Symbol.MethodSymbol methodSymbol) {
            this.meth = methodSymbol;
        }

        private void typeMismatch(Method method, Attribute attribute) {
            this.value = new ExceptionProxy(method, attribute) {
                static final long serialVersionUID = 269;
                final transient Method method;
                final Attribute val$attr;

                {
                    this.val$attr = attribute;
                    this.method = method;
                }

                public RuntimeException generateException() {
                    return new AnnotationTypeMismatchException(this.method, this.val$attr.type.toString());
                }

                public String toString() {
                    return "<error>";
                }
            };
        }

        public Object getValue(Attribute attribute) {
            try {
                Method method = AnnotationProxyMaker.this.annoType.getMethod(this.meth.name.toString(), null);
                this.returnClass = method.getReturnType();
                attribute.accept(this);
                if (!(this.value instanceof ExceptionProxy) && !AnnotationType.invocationHandlerReturnType(this.returnClass).isInstance(this.value)) {
                    typeMismatch(method, attribute);
                }
                return this.value;
            } catch (NoSuchMethodException unused) {
                return null;
            }
        }

        @Override
        public void visitArray(Attribute.Array array) {
            Name qualifiedName = ((Type.ArrayType) array.type).elemtype.tsym.getQualifiedName();
            int i10 = 0;
            if (qualifiedName.equals(qualifiedName.table.names.java_lang_Class)) {
                ListBuffer listBuffer = new ListBuffer();
                Attribute[] attributeArr = array.values;
                int length = attributeArr.length;
                while (i10 < length) {
                    listBuffer.append(((Attribute.Class) attributeArr[i10]).classType);
                    i10++;
                }
                this.value = new MirroredTypesExceptionProxy(listBuffer.toList());
                return;
            }
            int length2 = array.values.length;
            Class<?> cls = this.returnClass;
            Class<?> componentType = cls.getComponentType();
            this.returnClass = componentType;
            try {
                Object newInstance = Array.newInstance(componentType, length2);
                while (i10 < length2) {
                    array.values[i10].accept(this);
                    Object obj = this.value;
                    if (obj == null || (obj instanceof ExceptionProxy)) {
                        return;
                    }
                    Array.set(newInstance, i10, obj);
                    i10++;
                }
                this.value = newInstance;
            } catch (IllegalArgumentException unused) {
                this.value = null;
            } finally {
                this.returnClass = cls;
            }
        }

        @Override
        public void visitClass(Attribute.Class r22) {
            this.value = new MirroredTypeExceptionProxy(r22.classType);
        }

        @Override
        public void visitCompound(Attribute.Compound compound) {
            try {
                this.value = AnnotationProxyMaker.generateAnnotation(compound, this.returnClass.asSubclass(Annotation.class));
            } catch (ClassCastException unused) {
                this.value = null;
            }
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
            this.value = constant.getValue();
        }

        @Override
        public void visitEnum(Attribute.Enum r32) {
            if (!this.returnClass.isEnum()) {
                this.value = null;
                return;
            }
            String varSymbol = r32.value.toString();
            try {
                this.value = Enum.valueOf(this.returnClass, varSymbol);
            } catch (IllegalArgumentException unused) {
                this.value = new EnumConstantNotPresentExceptionProxy(this.returnClass, varSymbol);
            }
        }

        @Override
        public void visitError(Attribute.Error error) {
            if (error instanceof Attribute.UnresolvedClass) {
                this.value = new MirroredTypeExceptionProxy(((Attribute.UnresolvedClass) error).classType);
            } else {
                this.value = null;
            }
        }
    }

    private AnnotationProxyMaker(Attribute.Compound compound, Class<? extends Annotation> cls) {
        this.anno = compound;
        this.annoType = cls;
    }

    public static <A extends Annotation> A generateAnnotation(Attribute.Compound compound, Class<A> cls) {
        return cls.cast(new AnnotationProxyMaker(compound, cls).generateAnnotation());
    }

    private Object generateValue(Symbol.MethodSymbol methodSymbol, Attribute attribute) {
        return new ValueVisitor(methodSymbol).getValue(attribute);
    }

    private Map<String, Object> getAllReflectedValues() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Symbol.MethodSymbol, Attribute> entry : getAllValues().entrySet()) {
            Symbol.MethodSymbol key = entry.getKey();
            Object generateValue = generateValue(key, entry.getValue());
            if (generateValue != null) {
                linkedHashMap.put(key.name.toString(), generateValue);
            }
        }
        return linkedHashMap;
    }

    private Map<Symbol.MethodSymbol, Attribute> getAllValues() {
        Symbol.MethodSymbol methodSymbol;
        Attribute defaultValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Symbol symbol : ((Symbol.ClassSymbol) this.anno.type.tsym).members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol.kind == Kinds.Kind.MTH && (defaultValue = (methodSymbol = (Symbol.MethodSymbol) symbol).getDefaultValue()) != null) {
                linkedHashMap.put(methodSymbol, defaultValue);
            }
        }
        Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = this.anno.values.iterator();
        while (it.hasNext()) {
            Pair<Symbol.MethodSymbol, Attribute> next = it.next();
            linkedHashMap.put(next.fst, next.snd);
        }
        return linkedHashMap;
    }

    private Annotation generateAnnotation() {
        return AnnotationParser.annotationForMap(this.annoType, getAllReflectedValues());
    }
}
