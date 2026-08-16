package JAVARuntime;

import N7.c;
import P8.i;
import P8.k;
import P8.m;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.h;
import d8.j;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ColorGradient.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ColorGradient.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class ColorGradient {

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
        public C5.b getInspector(Context context, k constructor, String tittle, q userPointer) {
            ColorGradient colorGradient = (ColorGradient) constructor.getValue();
            if (colorGradient != null) {
                return N9.a.a(tittle, colorGradient.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new ColorGradient();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            Gradient m10;
            if (variable.type != Variable.a.String || (m10 = Gradient.m(variable.str_value, c.t())) == null) {
                return null;
            }
            return m10.s();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ColorGradient colorGradient = (ColorGradient) value;
            return colorGradient != null ? new Variable(fieldName, colorGradient.instance.u(c.t())) : new Variable(fieldName, Variable.a.String);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            ColorGradient colorGradient;
            try {
                colorGradient = (ColorGradient) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                colorGradient = null;
            }
            if (colorGradient != null) {
                return N9.a.a(tittle, colorGradient.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            ColorGradient colorGradient = (ColorGradient) array[position];
            if (colorGradient != null) {
                return N9.a.a(tittle, colorGradient.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForList(Context context, h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            ColorGradient colorGradient = (ColorGradient) list.a(position);
            if (colorGradient != null) {
                return N9.a.a(tittle, colorGradient.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
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
            return new ColorGradient();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            Gradient m10;
            if (variable.type != Variable.a.String || (m10 = Gradient.m(variable.str_value, c.t())) == null) {
                return null;
            }
            return m10.s();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            ColorGradient colorGradient = (ColorGradient) value;
            return colorGradient != null ? new Variable(fieldName, colorGradient.instance.u(c.t())) : new Variable(fieldName, Variable.a.String);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ColorGradient$Point.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ColorGradient$Point.class
  classes.dex
 */
    public static class Point {
        public float getLocation() {
            return 0.0f;
        }

        public void setLocation(float f10) {
        }

        public Color getColor() {
            return null;
        }

        public void setColor(Color color) {
        }
    }

    public Point addPoint(float f10, Color color) {
        return null;
    }

    public void removePointAt(int i10) {
    }

    public Point pointAt(int i10) {
        return null;
    }

    public void clear() {
    }

    public int pointsCount() {
        return 0;
    }

    public Color evaluate(float f10) {
        return null;
    }

    public String toJson() {
        return null;
    }

    public ColorGradient fromJson(String str) {
        return null;
    }
}
