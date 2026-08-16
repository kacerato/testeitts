package org.eclipse.jdt.internal.core.nd.field;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.internal.core.nd.IDestructable;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;
import org.eclipse.jdt.internal.core.nd.util.MathUtils;

public final class StructDef<T> {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics;
    Class<T> clazz;
    private DeletionSemantics deletionSemantics;
    private Set<StructDef<?>> dependencies;
    private List<StructDef<? extends T>> dependents;
    final ModificationLog.Tag destructTag;
    List<IDestructableField> destructableFields;
    private boolean doneCalled;
    private ITypeFactory<T> factory;
    private List<IField> fields;
    protected boolean hasUserDestructor;
    boolean isAbstract;
    private boolean isNdNode;
    private boolean offsetsComputed;
    private List<IRefCountedField> ownerFields;
    boolean refCounted;
    private List<IRefCountedField> refCountedFields;
    private int size;
    private StructDef<? super T> superClass;

    public enum DeletionSemantics {
        EXPLICIT,
        OWNED,
        REFCOUNTED;

        public static DeletionSemantics[] valuesCustom() {
            DeletionSemantics[] valuesCustom = values();
            int length = valuesCustom.length;
            DeletionSemantics[] deletionSemanticsArr = new DeletionSemantics[length];
            System.arraycopy(valuesCustom, 0, deletionSemanticsArr, 0, length);
            return deletionSemanticsArr;
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[DeletionSemantics.valuesCustom().length];
        try {
            iArr2[DeletionSemantics.EXPLICIT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[DeletionSemantics.OWNED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[DeletionSemantics.REFCOUNTED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics = iArr2;
        return iArr2;
    }

    private StructDef(Class<T> cls) {
        this(cls, null);
    }

    private boolean areAllDependenciesResolved() {
        Iterator<StructDef<?>> it = this.dependencies.iterator();
        while (it.hasNext()) {
            if (!it.next().areOffsetsComputed()) {
                return false;
            }
        }
        return true;
    }

    private void checkMutable() {
        if (this.doneCalled) {
            throw new IllegalStateException("May not modify a StructDef after done() has been called");
        }
    }

    private void computeOffsets() {
        StructDef<? super T> structDef = this.superClass;
        int size = structDef == null ? 0 : structDef.size();
        for (IField iField : this.fields) {
            int roundUpToNearestMultiple = MathUtils.roundUpToNearestMultiple(size, iField.getAlignment());
            iField.setOffset(roundUpToNearestMultiple);
            size = roundUpToNearestMultiple + iField.getRecordSize();
        }
        this.size = size;
        if (this.refCounted) {
            this.deletionSemantics = DeletionSemantics.REFCOUNTED;
        } else if (this.ownerFields.isEmpty()) {
            StructDef<? super T> structDef2 = this.superClass;
            if (structDef2 != null) {
                this.deletionSemantics = structDef2.deletionSemantics;
            } else {
                this.deletionSemantics = DeletionSemantics.EXPLICIT;
            }
        } else {
            this.deletionSemantics = DeletionSemantics.OWNED;
        }
        StructDef<? super T> structDef3 = this.superClass;
        if (structDef3 != null) {
            DeletionSemantics deletionSemantics = this.deletionSemantics;
            DeletionSemantics deletionSemantics2 = structDef3.deletionSemantics;
            if (deletionSemantics != deletionSemantics2 && deletionSemantics2 != DeletionSemantics.EXPLICIT) {
                throw new IllegalStateException("A class (" + this.clazz.getName() + ") that uses " + this.deletionSemantics.toString() + " deletion semantics may not inherit from a class that uses " + this.superClass.deletionSemantics.toString() + " semantics");
            }
        }
        this.offsetsComputed = true;
        for (StructDef<? extends T> structDef4 : this.dependents) {
            if (structDef4.doneCalled) {
                structDef4.computeOffsets();
            }
        }
    }

    public static <T> StructDef<T> create(Class<T> cls) {
        return new StructDef<>(cls);
    }

    public static <T> StructDef<T> createAbstract(Class<T> cls) {
        return new StructDef<>(cls, null, true);
    }

    private boolean hasIndirectDependent(Set<StructDef<?>> set, StructDef<?> structDef) {
        for (StructDef<? extends T> structDef2 : this.dependents) {
            if (set.add(structDef2) && (structDef2.equals(structDef) || structDef2.hasIndirectDependent(set, structDef))) {
                return true;
            }
        }
        return false;
    }

    public void add(IField iField) {
        checkMutable();
        this.fields.add(iField);
    }

    public FieldByte addByte() {
        FieldByte fieldByte = new FieldByte(getStructName(), this.fields.size());
        add(fieldByte);
        return fieldByte;
    }

    public FieldChar addChar() {
        FieldChar fieldChar = new FieldChar(getStructName(), this.fields.size());
        add(fieldChar);
        return fieldChar;
    }

    public void addDependency(StructDef<?> structDef) {
        if (!structDef.hasIndirectDependent(new HashSet(), this)) {
            if (this.dependencies.add(structDef)) {
                this.superClass.dependents.add(this);
            }
        } else {
            throw new IllegalArgumentException("Circular dependency detected. Struct " + getStructName() + " and struct " + structDef.getStructName() + " both depend on one another");
        }
    }

    public void addDestructableField(IDestructableField iDestructableField) {
        checkMutable();
        this.destructableFields.add(iDestructableField);
    }

    public FieldDouble addDouble() {
        FieldDouble fieldDouble = new FieldDouble(getStructName(), this.fields.size());
        add(fieldDouble);
        return fieldDouble;
    }

    public FieldFloat addFloat() {
        FieldFloat fieldFloat = new FieldFloat(getStructName(), this.fields.size());
        add(fieldFloat);
        return fieldFloat;
    }

    public FieldInt addInt() {
        FieldInt fieldInt = new FieldInt(getStructName(), this.fields.size());
        add(fieldInt);
        return fieldInt;
    }

    public FieldLong addLong() {
        FieldLong fieldLong = new FieldLong(getStructName(), this.fields.size());
        add(fieldLong);
        return fieldLong;
    }

    public void addOwnerField(IRefCountedField iRefCountedField) {
        checkMutable();
        this.ownerFields.add(iRefCountedField);
    }

    public FieldPointer addPointer() {
        FieldPointer fieldPointer = new FieldPointer(getStructName(), this.fields.size());
        add(fieldPointer);
        return fieldPointer;
    }

    public void addRefCountedField(IRefCountedField iRefCountedField) {
        checkMutable();
        this.refCountedFields.add(iRefCountedField);
    }

    public FieldShort addShort() {
        FieldShort fieldShort = new FieldShort(getStructName(), this.fields.size());
        add(fieldShort);
        return fieldShort;
    }

    public FieldString addString() {
        FieldString fieldString = new FieldString(getStructName(), this.fields.size());
        add(fieldString);
        addDestructableField(fieldString);
        return fieldString;
    }

    public boolean areOffsetsComputed() {
        return this.offsetsComputed;
    }

    public void checkNotMutable() {
        if (!this.offsetsComputed) {
            throw new IllegalStateException("Must call done() before using the struct");
        }
    }

    public void destructFields(Nd nd2, long j10) {
        Iterator<IDestructableField> it = this.destructableFields.iterator();
        while (it.hasNext()) {
            it.next().destruct(nd2, j10);
        }
        StructDef<? super T> structDef = this.superClass;
        if (structDef != null) {
            structDef.destructFields(nd2, j10);
        }
    }

    public void done() {
        if (this.doneCalled) {
            throw new IllegalStateException("May not call done() more than once");
        }
        this.doneCalled = true;
        if (areAllDependenciesResolved()) {
            computeOffsets();
        }
    }

    public DeletionSemantics getDeletionSemantics() {
        return this.deletionSemantics;
    }

    public ITypeFactory<T> getFactory() {
        return this.factory;
    }

    public int getNumFields() {
        return this.fields.size();
    }

    public Class<T> getStructClass() {
        return this.clazz;
    }

    public String getStructName() {
        return this.clazz.getSimpleName();
    }

    public boolean hasDestructableFields() {
        if (!this.destructableFields.isEmpty()) {
            return true;
        }
        StructDef<? super T> structDef = this.superClass;
        return structDef != null && structDef.hasDestructableFields();
    }

    public boolean isNdNode() {
        return this.isNdNode;
    }

    public boolean isReadyForDeletion(Nd nd2, long j10) {
        List<IRefCountedField> list = Collections.EMPTY_LIST;
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics()[this.deletionSemantics.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                list = this.ownerFields;
            } else if (i10 == 3) {
                list = this.refCountedFields;
            }
            Iterator<IRefCountedField> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().hasReferences(nd2, j10)) {
                }
            }
            StructDef<? super T> structDef = this.superClass;
            if (structDef == null || structDef.deletionSemantics == DeletionSemantics.EXPLICIT) {
                return true;
            }
            return structDef.isReadyForDeletion(nd2, j10);
        }
        return false;
    }

    public int size() {
        checkNotMutable();
        return this.size;
    }

    public String toString() {
        return this.clazz.getName();
    }

    public StructDef<T> useStandardRefCounting() {
        checkMutable();
        this.refCounted = true;
        return this;
    }

    private StructDef(Class<T> cls, StructDef<? super T> structDef) {
        this(cls, structDef, Modifier.isAbstract(cls.getModifiers()));
    }

    public static <T> StructDef<T> create(Class<T> cls, StructDef<? super T> structDef) {
        return new StructDef<>(cls, structDef);
    }

    public static <T> StructDef<T> createAbstract(Class<T> cls, StructDef<? super T> structDef) {
        return new StructDef<>(cls, structDef, true);
    }

    private StructDef(Class<T> cls, StructDef<? super T> structDef, boolean z10) {
        final Constructor<T> constructor;
        this.dependencies = new HashSet();
        this.fields = new ArrayList();
        this.dependents = new ArrayList();
        this.destructableFields = new ArrayList();
        this.refCountedFields = new ArrayList();
        this.ownerFields = new ArrayList();
        this.destructTag = ModificationLog.createTag("Destructing struct " + cls.getSimpleName());
        this.clazz = cls;
        this.isNdNode = NdNode.class.isAssignableFrom(cls);
        this.superClass = structDef;
        if (structDef != null) {
            addDependency(structDef);
        }
        this.isAbstract = z10;
        final String name = cls.getName();
        if (this.isAbstract) {
            constructor = null;
        } else {
            try {
                constructor = cls.getConstructor(Nd.class, Long.TYPE);
            } catch (NoSuchMethodException | SecurityException unused) {
                throw new IllegalArgumentException("The node class " + name + " does not have an appropriate constructor for it to be used with Nd");
            }
        }
        this.hasUserDestructor = IDestructable.class.isAssignableFrom(cls);
        this.factory = new ITypeFactory<T>() {
            @Override
            public T create(Nd nd2, long j10) {
                if (StructDef.this.isAbstract) {
                    throw new UnsupportedOperationException("Attempting to instantiate abstract class" + name);
                }
                try {
                    return (T) constructor.newInstance(nd2, Long.valueOf(j10));
                } catch (IllegalAccessException e10) {
                    e = e10;
                    throw new RuntimeException("Error in AutoTypeFactory", e);
                } catch (InstantiationException e11) {
                    e = e11;
                    throw new RuntimeException("Error in AutoTypeFactory", e);
                } catch (InvocationTargetException e12) {
                    Throwable cause = e12.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    throw new RuntimeException("Error in AutoTypeFactory", e12);
                }
            }

            @Override
            public void destruct(Nd nd2, long j10) {
                StructDef.this.checkNotMutable();
                Database db2 = nd2.getDB();
                db2.getLog().start(StructDef.this.destructTag);
                try {
                    if (StructDef.this.hasUserDestructor) {
                        ((IDestructable) create(nd2, j10)).destruct();
                    }
                    destructFields(nd2, j10);
                    db2.getLog().end(StructDef.this.destructTag);
                } catch (Throwable th2) {
                    db2.getLog().end(StructDef.this.destructTag);
                    throw th2;
                }
            }

            @Override
            public void destructFields(Nd nd2, long j10) {
                StructDef.this.destructFields(nd2, j10);
            }

            @Override
            public DeletionSemantics getDeletionSemantics() {
                return StructDef.this.getDeletionSemantics();
            }

            @Override
            public Class<?> getElementClass() {
                return StructDef.this.clazz;
            }

            @Override
            public int getRecordSize() {
                return StructDef.this.size();
            }

            @Override
            public boolean hasDestructor() {
                StructDef structDef2 = StructDef.this;
                return structDef2.hasUserDestructor || structDef2.hasDestructableFields();
            }

            @Override
            public boolean isReadyForDeletion(Nd nd2, long j10) {
                return StructDef.this.isReadyForDeletion(nd2, j10);
            }
        };
    }

    public <F> Field<F> add(ITypeFactory<F> iTypeFactory) {
        Field<F> field = new Field<>(iTypeFactory, getStructName(), this.fields.size());
        add(field);
        if (field.factory.hasDestructor()) {
            this.destructableFields.add(field);
        }
        return field;
    }
}
