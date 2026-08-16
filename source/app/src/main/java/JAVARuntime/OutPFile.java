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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:OutPFile.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:OutPFile.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
public class OutPFile {
    private transient String filePath;

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
                @Override
                public Variable get() {
                    OutPFile outPFile = (OutPFile) constructor.getValue();
                    return outPFile != null ? new Variable("", outPFile.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    constructor.setValue(new OutPFile(variable.str_value));
                }
            }, tittle, b.a.OutputFile, context);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return null;
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.File) {
                return new OutPFile(variable.str_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            OutPFile outPFile = (OutPFile) value;
            return outPFile != null ? new Variable(fieldName, outPFile.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
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
                @Override
                public Variable get() {
                    try {
                        OutPFile outPFile = (OutPFile) field.get(classInstance);
                        return outPFile != null ? new Variable("", outPFile.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
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
                    OutPFile outPFile = new OutPFile(variable.str_value);
                    try {
                        field.set(classInstance, outPFile);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(outPFile);
                    }
                }
            }, tittle, b.a.OutputFile, context);
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    OutPFile outPFile = (OutPFile) array[position];
                    return outPFile != null ? new Variable("temp", outPFile.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    OutPFile outPFile = new OutPFile(variable.str_value);
                    array[position] = outPFile;
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(outPFile);
                    }
                }
            }, tittle, b.a.OutputFile, context);
        }

        @Override
        public C5.b getInspectorForList(Context context, final d8.h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    OutPFile outPFile = (OutPFile) list.a(position);
                    return outPFile != null ? new Variable("temp", outPFile.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    OutPFile outPFile = new OutPFile(variable.str_value);
                    list.b(position, outPFile);
                    n nVar = getSetterListener;
                    if (nVar != null) {
                        nVar.a(outPFile);
                    }
                }
            }, tittle, b.a.OutputFile, context);
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
            return null;
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.File) {
                return new OutPFile(variable.str_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            OutPFile outPFile = (OutPFile) value;
            return outPFile != null ? new Variable(fieldName, outPFile.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
        }
    }

    public OutPFile() {
    }

    public OutPFile(String str) {
        this.filePath = str;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public String getAbsolutePath() {
        return "";
    }

    public String toString() {
        return getFilePath();
    }
}
