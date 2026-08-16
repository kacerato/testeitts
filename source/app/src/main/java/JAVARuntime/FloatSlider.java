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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FloatSlider.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FloatSlider.class
  classes.dex
 */
@ClassCategory(cat = {A5.a.f299d0})
public final class FloatSlider {
    public transient float value;
    public transient float min;
    public transient float max;

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final FloatSlider floatSlider;
            try {
                floatSlider = (FloatSlider) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                floatSlider = null;
            }
            if (floatSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", floatSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        floatSlider.value = variable.float_value;
                    }
                }
            }, tittle + " ", b.a.SLFloatSlider, floatSlider.min, floatSlider.max, 0.0f);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final FloatSlider floatSlider = (FloatSlider) array[position];
            if (floatSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", floatSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        floatSlider.value = variable.float_value;
                    }
                }
            }, tittle + " ", b.a.SLFloatSlider, floatSlider.min, floatSlider.max, 0.0f);
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final FloatSlider floatSlider = (FloatSlider) list.a(position);
            if (floatSlider == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    return new Variable("", floatSlider.value + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        floatSlider.value = variable.float_value;
                    }
                }
            }, tittle + " ", b.a.SLFloatSlider, floatSlider.min, floatSlider.max, 0.0f);
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
            return new FloatSlider(0.0f, 0.0f, 1.0f);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.String) {
                return FloatSlider.deserialize(variable.str_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            FloatSlider floatSlider = (FloatSlider) value;
            return floatSlider != null ? new Variable(fieldName, floatSlider.serialize()) : new Variable(fieldName, "");
        }
    }

    public FloatSlider(float f10, float f11, float f12) {
        this.value = f10;
        this.min = f11;
        this.max = f12;
    }

    @HideGetSet
    public float getValue() {
        return this.value;
    }

    @HideGetSet
    public void setValue(float f10) {
        this.value = f10;
    }

    @HideGetSet
    public float getMin() {
        return this.min;
    }

    @HideGetSet
    public void setMin(float f10) {
        this.min = f10;
    }

    @HideGetSet
    public float getMax() {
        return this.max;
    }

    @HideGetSet
    public void setMax(float f10) {
        this.max = f10;
    }

    public FloatSlider copy() {
        return new FloatSlider(this.value, this.min, this.max);
    }

    public String toString() {
        return "(" + this.value + ")x( " + this.min + "-" + this.max + "~0)";
    }

    public String serialize() {
        return String.valueOf(this.value) + ";" + this.min + ";" + this.max + ";0";
    }

    public static FloatSlider deserialize(String str) {
        return null;
    }
}
