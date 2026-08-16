package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.j;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:IntSlider.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:IntSlider.class
  classes.dex
 */
@ClassCategory(cat = {A5.a.f299d0})
public final class IntSlider {
    public transient int value;
    public transient int min;
    public transient int max;

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final IntSlider intSlider;
            try {
                intSlider = (IntSlider) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                intSlider = null;
            }
            if (intSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", intSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        intSlider.value = variable.int_value;
                    }
                }
            }, tittle + " ", b.a.SLIntSlider, intSlider.min, intSlider.max, 0.0f);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final IntSlider intSlider = (IntSlider) array[position];
            if (intSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", intSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        intSlider.value = variable.int_value;
                    }
                }
            }, tittle + " ", b.a.SLIntSlider, intSlider.min, intSlider.max, 0.0f);
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final IntSlider intSlider = (IntSlider) list.a(position);
            if (intSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", intSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        intSlider.value = variable.int_value;
                    }
                }
            }, tittle + " ", b.a.SLIntSlider, intSlider.min, intSlider.max, 0.0f);
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
            return new IntSlider(0, 0, 1);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.String) {
                return IntSlider.deserialize(variable.str_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            IntSlider intSlider = (IntSlider) value;
            return intSlider != null ? new Variable(fieldName, intSlider.serialize()) : new Variable(fieldName, "");
        }
    }

    public IntSlider(int i10, int i11, int i12) {
        this.value = i10;
        this.min = i11;
        this.max = i12;
    }

    @HideGetSet
    public int getValue() {
        return this.value;
    }

    @HideGetSet
    public void setValue(int i10) {
        this.value = i10;
    }

    @HideGetSet
    public int getMin() {
        return this.min;
    }

    @HideGetSet
    public void setMin(int i10) {
        this.min = i10;
    }

    @HideGetSet
    public int getMax() {
        return this.max;
    }

    @HideGetSet
    public void setMax(int i10) {
        this.max = i10;
    }

    public String toString() {
        return "(" + this.value + ")x( " + this.min + "-" + this.max + "~0)";
    }

    public String serialize() {
        return String.valueOf(this.value) + ";" + this.min + ";" + this.max + ";0";
    }

    public static IntSlider deserialize(String str) {
        return null;
    }
}
