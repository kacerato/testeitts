package JAVARuntime;

import J9.c;
import P8.i;
import P8.k;
import P8.m;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.h;
import d8.j;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Curve.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Curve.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Curve {

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
            Curve curve = (Curve) constructor.getValue();
            if (curve != null) {
                return c.a(tittle, curve.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Curve();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Curve.Curve s10;
            if (variable.type != Variable.a.String || (s10 = com.itsmagic.engine.Engines.Engine.Curve.Curve.s(variable.str_value, N7.c.t())) == null) {
                return null;
            }
            return s10.J();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Curve curve = (Curve) value;
            return curve != null ? new Variable(fieldName, curve.instance.K(N7.c.t())) : new Variable(fieldName, Variable.a.String);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            Curve curve;
            try {
                curve = (Curve) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                curve = null;
            }
            if (curve != null) {
                return c.a(tittle, curve.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            Curve curve = (Curve) array[position];
            if (curve != null) {
                return c.a(tittle, curve.instance, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForList(Context context, h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            Curve curve = (Curve) list.a(position);
            if (curve != null) {
                return c.a(tittle, curve.instance, context);
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
            return new Curve();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Curve.Curve s10;
            if (variable.type != Variable.a.String || (s10 = com.itsmagic.engine.Engines.Engine.Curve.Curve.s(variable.str_value, N7.c.t())) == null) {
                return null;
            }
            return s10.J();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Curve curve = (Curve) value;
            return curve != null ? new Variable(fieldName, curve.instance.K(N7.c.t())) : new Variable(fieldName, Variable.a.String);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Curve$WrapMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Curve$WrapMode.class
  classes.dex
 */
    public enum WrapMode {
        Loop,
        ClampToBorder,
        PingPong;

        public static WrapMode[] valuesCustom() {
            WrapMode[] valuesCustom = values();
            int length = valuesCustom.length;
            WrapMode[] wrapModeArr = new WrapMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, wrapModeArr, 0, length);
            return wrapModeArr;
        }
    }

    public void addPoint(float f10, float f11) {
    }

    public void setPoint(int i10, float f10, float f11) {
    }

    public Vector2 pointAt(int i10) {
        return null;
    }

    public Vector2 pointAt(int i10, Vector2 vector2) {
        return null;
    }

    public void clear() {
    }

    public int pointsCount() {
        return 0;
    }

    public float evaluate(float f10) {
        return 0.0f;
    }

    public void apply() {
    }

    public WrapMode getWrapMode() {
        return null;
    }

    public void setWrapMode(WrapMode wrapMode) {
    }

    public String toJson() {
        return null;
    }

    public Curve fromJson(String str) {
        return null;
    }
}
