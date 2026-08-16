package org.openjdk.tools.javac.code;

import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.lang.annotation.Repeatable;
import java.lang.reflect.Array;
import java.util.Iterator;
import org.openjdk.javax.lang.model.AnnotatedConstruct;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.model.AnnotationProxyMaker;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;

public abstract class AnnoConstruct implements AnnotatedConstruct {
    private static Class<? extends Annotation> getContainer(Class<? extends Annotation> cls) {
        Repeatable repeatable = (Repeatable) cls.getAnnotation(Repeatable.class);
        if (repeatable == null) {
            return null;
        }
        return repeatable.value();
    }

    private static Attribute[] unpackAttributes(Attribute.Compound compound) {
        return ((Attribute.Array) compound.member(compound.type.tsym.name.table.names.value)).values;
    }

    private Attribute.Compound[] unpackContained(Attribute.Compound compound) {
        Attribute[] unpackAttributes = compound != null ? unpackAttributes(compound) : null;
        ListBuffer listBuffer = new ListBuffer();
        if (unpackAttributes != null) {
            for (Attribute attribute : unpackAttributes) {
                if (attribute instanceof Attribute.Compound) {
                    listBuffer = listBuffer.append((Attribute.Compound) attribute);
                }
            }
        }
        return (Attribute.Compound[]) listBuffer.toArray(new Attribute.Compound[listBuffer.size()]);
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        if (cls.isAnnotation()) {
            Attribute.Compound attribute = getAttribute(cls);
            if (attribute == null) {
                return null;
            }
            return (A) AnnotationProxyMaker.generateAnnotation(attribute, cls);
        }
        throw new IllegalArgumentException("Not an annotation type: " + ((Object) cls));
    }

    @Override
    public abstract List<? extends Attribute.Compound> getAnnotationMirrors();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c2 A[LOOP:1: B:53:0x00be->B:55:0x00c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cd A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        int i10;
        if (!cls.isAnnotation()) {
            throw new IllegalArgumentException("Not an annotation type: " + ((Object) cls));
        }
        Class<? extends Annotation> container = getContainer(cls);
        int i11 = 0;
        if (container == null) {
            Annotation annotation = getAnnotation(cls);
            A[] aArr = (A[]) ((Annotation[]) Array.newInstance((Class<?>) cls, annotation == null ? 0 : 1));
            if (annotation != null) {
                aArr[0] = annotation;
            }
            return aArr;
        }
        String name = cls.getName();
        String name2 = container.getName();
        Iterator<? extends Attribute.Compound> it = getAnnotationMirrors().iterator();
        Attribute.Compound compound = null;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        Attribute.Compound compound2 = null;
        while (it.hasNext()) {
            Attribute.Compound next = it.next();
            i12++;
            if (next.type.tsym.flatName().contentEquals(name)) {
                i13 = i12;
                compound = next;
            } else if (next.type.tsym.flatName().contentEquals(name2)) {
                i14 = i12;
                compound2 = next;
            }
        }
        if (compound == null && compound2 == null && cls.isAnnotationPresent(Inherited.class)) {
            return (A[]) getInheritedAnnotations(cls);
        }
        Attribute.Compound[] unpackContained = unpackContained(compound2);
        if (compound == null && unpackContained.length == 0 && cls.isAnnotationPresent(Inherited.class)) {
            return (A[]) getInheritedAnnotations(cls);
        }
        A[] aArr2 = (A[]) ((Annotation[]) Array.newInstance((Class<?>) cls, (compound == null ? 0 : 1) + unpackContained.length));
        int length = aArr2.length;
        if (i13 < 0 || i14 < 0) {
            if (i13 >= 0) {
                aArr2[0] = AnnotationProxyMaker.generateAnnotation(compound, cls);
                return aArr2;
            }
        } else if (i13 < i14) {
            aArr2[0] = AnnotationProxyMaker.generateAnnotation(compound, cls);
            while (true) {
                i10 = i11 + r1;
                if (i10 < length) {
                    return aArr2;
                }
                aArr2[i10] = AnnotationProxyMaker.generateAnnotation(unpackContained[i11], cls);
                i11++;
            }
        } else {
            aArr2[aArr2.length - 1] = AnnotationProxyMaker.generateAnnotation(compound, cls);
            length--;
        }
        r1 = 0;
        while (true) {
            i10 = i11 + r1;
            if (i10 < length) {
            }
            aArr2[i10] = AnnotationProxyMaker.generateAnnotation(unpackContained[i11], cls);
            i11++;
        }
    }

    public <A extends Annotation> Attribute.Compound getAttribute(Class<A> cls) {
        String name = cls.getName();
        Iterator<? extends Attribute.Compound> it = getAnnotationMirrors().iterator();
        while (it.hasNext()) {
            Attribute.Compound next = it.next();
            if (name.equals(next.type.tsym.flatName().toString())) {
                return next;
            }
        }
        return null;
    }

    public <A extends Annotation> A[] getInheritedAnnotations(Class<A> cls) {
        return (A[]) ((Annotation[]) Array.newInstance((Class<?>) cls, 0));
    }
}
