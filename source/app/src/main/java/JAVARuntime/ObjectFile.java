package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.k;
import P8.m;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.j;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ObjectFile.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ObjectFile.class
  classes.dex
 */
@ClassCategory(cat = {"Files", "Object"})
public class ObjectFile {

    public class AnonymousClass1 implements m {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public Class getCls() {
            return this.val$thisClass;
        }

        @Override
        public String getFullName() {
            return this.val$thisClass.getName();
        }

        @Override
        public C5.b getInspector(Context context, final k constructor, String tittle, q userPointer) {
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [JAVARuntime.ObjectFile, jb.a] */
                @Override
                public Variable get() {
                    ?? r02 = (ObjectFile) constructor.getValue();
                    return r02 != 0 ? new Variable("", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    constructor.setValue(new ObjectFile(variable.str_value));
                }
            }, tittle, b.a.InputFile, ObjectFile.access$000());
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new ObjectFile();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type != Variable.a.File) {
                return null;
            }
            ObjectFile objectFile = new ObjectFile(variable.str_value);
            String str = variable.str_value;
            if (str != null && !str.isEmpty()) {
                ObjectFile.access$100(objectFile);
            }
            return objectFile;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [JAVARuntime.ObjectFile, jb.a] */
        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ?? r32 = (ObjectFile) value;
            return r32 != 0 ? new Variable(fieldName, r32.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v4, types: [JAVARuntime.ObjectFile, jb.a] */
                @Override
                public Variable get() {
                    try {
                        ?? r02 = (ObjectFile) field.get(classInstance);
                        return r02 != 0 ? new Variable("", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                        return null;
                    }
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    ObjectFile objectFile = new ObjectFile(variable.str_value);
                    try {
                        field.set(classInstance, objectFile);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(objectFile);
                    }
                }
            }, tittle, b.a.InputFile, ObjectFile.access$000());
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [JAVARuntime.ObjectFile, jb.a] */
                @Override
                public Variable get() {
                    ?? r02 = (ObjectFile) array[position];
                    return r02 != 0 ? new Variable("temp", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    ObjectFile objectFile = new ObjectFile(variable.str_value);
                    array[position] = objectFile;
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(objectFile);
                    }
                }
            }, tittle, b.a.InputFile, ObjectFile.access$000());
        }

        @Override
        public C5.b getInspectorForList(Context context, final d8.h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [JAVARuntime.ObjectFile, jb.a] */
                @Override
                public Variable get() {
                    ?? r02 = (ObjectFile) list.a(position);
                    return r02 != 0 ? new Variable("temp", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    ObjectFile objectFile = new ObjectFile(variable.str_value);
                    list.b(position, objectFile);
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(objectFile);
                    }
                }
            }, tittle, b.a.InputFile, ObjectFile.access$000());
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public boolean match(String className, q userPointer) {
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return new ObjectFile();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type != Variable.a.File) {
                return null;
            }
            ObjectFile objectFile = new ObjectFile(variable.str_value);
            String str = variable.str_value;
            if (str != null && !str.isEmpty()) {
                ObjectFile.access$100(objectFile);
            }
            return objectFile;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [JAVARuntime.ObjectFile, jb.a] */
        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ?? r32 = (ObjectFile) value;
            return r32 != 0 ? new Variable(fieldName, r32.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
        }
    }

    public String toString() {
        return getClass().getName();
    }
}
