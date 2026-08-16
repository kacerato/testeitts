package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.j;
import d8.m;
import java.lang.reflect.Field;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PropertiesButton.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PropertiesButton.class
  classes.dex
 */
@ClassCategory(cat = {A5.a.f299d0})
public class PropertiesButton {

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public class C03131 implements h {
            final PropertiesButton val$finalVar;

            public C03131(final PropertiesButton val$finalVar) {
                this.val$finalVar = val$finalVar;
            }

            @Override
            public Variable get() {
                return null;
            }

            @Override
            public void set(Variable variable) {
                try {
                    Thread.runOnEngine(new Runnable() {
                        @Override
                        public void run() {
                            m.d(new InterfaceC14490d() {
                                @Override
                                public void run() {
                                    PropertiesButton.access$000(C03131.this.val$finalVar).onClicked();
                                }
                            });
                        }
                    });
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class AnonymousClass2 implements h {
            final PropertiesButton val$finalVar;

            public AnonymousClass2(final PropertiesButton val$finalVar) {
                this.val$finalVar = val$finalVar;
            }

            @Override
            public Variable get() {
                return null;
            }

            @Override
            public void set(Variable variable) {
                try {
                    Thread.runOnEngine(new Runnable() {
                        @Override
                        public void run() {
                            m.d(new InterfaceC14490d() {
                                @Override
                                public void run() {
                                    PropertiesButton.access$000(AnonymousClass2.this.val$finalVar).onClicked();
                                }
                            });
                        }
                    });
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class AnonymousClass3 implements h {
            final PropertiesButton val$finalVar;

            public AnonymousClass3(final PropertiesButton val$finalVar) {
                this.val$finalVar = val$finalVar;
            }

            @Override
            public Variable get() {
                return null;
            }

            @Override
            public void set(Variable variable) {
                try {
                    Thread.runOnEngine(new Runnable() {
                        @Override
                        public void run() {
                            m.d(new InterfaceC14490d() {
                                @Override
                                public void run() {
                                    PropertiesButton.access$000(AnonymousClass3.this.val$finalVar).onClicked();
                                }
                            });
                        }
                    });
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            PropertiesButton propertiesButton;
            try {
                propertiesButton = (PropertiesButton) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                propertiesButton = null;
            }
            if (propertiesButton != null) {
                return new C5.b(new C03131(propertiesButton), tittle, b.a.Button);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            PropertiesButton propertiesButton = (PropertiesButton) array[position];
            if (propertiesButton != null) {
                return new C5.b(new AnonymousClass2(propertiesButton), tittle, b.a.Button);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            PropertiesButton propertiesButton = (PropertiesButton) list.a(position);
            if (propertiesButton != null) {
                return new C5.b(new AnonymousClass3(propertiesButton), tittle, b.a.Button);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return false;
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
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            return null;
        }
    }

    public PropertiesButton(PropertiesButtonListener propertiesButtonListener) {
    }
}
