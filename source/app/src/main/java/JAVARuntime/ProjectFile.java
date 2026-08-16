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
import java.io.InputStream;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ProjectFile.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ProjectFile.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
@UnimplementedDoc
public class ProjectFile {

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
            ProjectFile projectFile = (ProjectFile) constructor.getValue();
            String format = projectFile != null ? projectFile.getFormat() : null;
            if (format == null) {
                return null;
            }
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [jb.a, JAVARuntime.ProjectFile] */
                @Override
                public Variable get() {
                    ?? r02 = (ProjectFile) constructor.getValue();
                    return r02 != 0 ? new Variable("", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    String t10 = Tc.b.t(variable.str_value);
                    if (t10 == null || t10.isEmpty()) {
                        constructor.setValue(null);
                    } else {
                        constructor.setValue(new ProjectFile(t10, variable.str_value));
                    }
                }
            }, tittle, b.a.InputFile, format);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new ProjectFile(".txt");
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String t10;
            if (variable.type != Variable.a.File || (t10 = Tc.b.t(variable.str_value)) == null || t10.isEmpty()) {
                return null;
            }
            return new ProjectFile(t10, variable.str_value);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [jb.a, JAVARuntime.ProjectFile] */
        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ?? r32 = (ProjectFile) value;
            return r32 != 0 ? new Variable(fieldName, r32.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            String str;
            ProjectFile projectFile;
            try {
                projectFile = (ProjectFile) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            }
            if (projectFile != null) {
                str = projectFile.getFormat();
                if (str != null) {
                    return null;
                }
                return new C5.b(new h() {
                    /* JADX WARN: Type inference failed for: r0v4, types: [jb.a, JAVARuntime.ProjectFile] */
                    @Override
                    public Variable get() {
                        try {
                            ?? r02 = (ProjectFile) field.get(classInstance);
                            return r02 != 0 ? new Variable("", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                        } catch (IllegalAccessException e11) {
                            e11.printStackTrace();
                            return null;
                        }
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable == null || variable.e()) {
                            return;
                        }
                        String t10 = Tc.b.t(variable.str_value);
                        if (t10 == null || t10.isEmpty()) {
                            try {
                                field.set(classInstance, null);
                            } catch (IllegalAccessException e11) {
                                e11.printStackTrace();
                            }
                            n nVar = getSetterListener;
                            if (nVar != null) {
                                nVar.a(null);
                                return;
                            }
                            return;
                        }
                        ProjectFile projectFile2 = new ProjectFile(t10, variable.str_value);
                        try {
                            field.set(classInstance, projectFile2);
                        } catch (IllegalAccessException e12) {
                            e12.printStackTrace();
                        }
                        n nVar2 = getSetterListener;
                        if (nVar2 != null) {
                            nVar2.a(projectFile2);
                        }
                    }
                }, tittle, b.a.InputFile, str);
            }
            str = null;
            if (str != null) {
            }
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            ProjectFile projectFile = (ProjectFile) array[position];
            String format = projectFile != null ? projectFile.getFormat() : null;
            if (format == null) {
                return null;
            }
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [jb.a, JAVARuntime.ProjectFile] */
                @Override
                public Variable get() {
                    ?? r02 = (ProjectFile) array[position];
                    return r02 != 0 ? new Variable("temp", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    String t10 = Tc.b.t(variable.str_value);
                    if (t10 == null || t10.isEmpty()) {
                        array[position] = null;
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(null);
                            return;
                        }
                        return;
                    }
                    ProjectFile projectFile2 = new ProjectFile(t10, variable.str_value);
                    array[position] = projectFile2;
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(projectFile2);
                    }
                }
            }, tittle, b.a.InputFile, format);
        }

        @Override
        public C5.b getInspectorForList(Context context, final d8.h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            ProjectFile projectFile = (ProjectFile) list.a(position);
            String format = projectFile != null ? projectFile.getFormat() : null;
            if (format == null) {
                return null;
            }
            return new C5.b(new h() {
                /* JADX WARN: Type inference failed for: r0v2, types: [jb.a, JAVARuntime.ProjectFile] */
                @Override
                public Variable get() {
                    ?? r02 = (ProjectFile) list.a(position);
                    return r02 != 0 ? new Variable("temp", r02.getFilePath(), Variable.a.File) : new Variable("", "", Variable.a.File);
                }

                @Override
                public void set(Variable variable) {
                    if (variable == null || variable.e()) {
                        return;
                    }
                    String t10 = Tc.b.t(variable.str_value);
                    if (t10 == null || t10.isEmpty()) {
                        list.b(position, null);
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(null);
                            return;
                        }
                        return;
                    }
                    ProjectFile projectFile2 = new ProjectFile(t10, variable.str_value);
                    list.b(position, projectFile2);
                    n nVar2 = getSetterListener;
                    if (nVar2 != null) {
                        nVar2.a(projectFile2);
                    }
                }
            }, tittle, b.a.InputFile, format);
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
            return new ProjectFile(".txt");
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String t10;
            if (variable.type != Variable.a.File || (t10 = Tc.b.t(variable.str_value)) == null || t10.isEmpty()) {
                return null;
            }
            return new ProjectFile(t10, variable.str_value);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [jb.a, JAVARuntime.ProjectFile] */
        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ?? r32 = (ProjectFile) value;
            return r32 != 0 ? new Variable(fieldName, r32.getFilePath(), Variable.a.File) : new Variable(fieldName, "", Variable.a.File);
        }
    }

    @UnimplementedDoc
    public ProjectFile(String str) {
    }

    @UnimplementedDoc
    public String getFormat() {
        return null;
    }

    @UnimplementedDoc
    public InputStream getInputStream() {
        return null;
    }

    @UnimplementedDoc
    public String loadText() {
        return null;
    }

    @UnimplementedDoc
    public String toString() {
        return getClass().getName();
    }

    public boolean copyTo(File file) {
        return false;
    }
}
