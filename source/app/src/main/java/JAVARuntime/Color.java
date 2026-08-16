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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Color.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Color.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Color implements SumOperator, SubOperator, MulOperator, DivOperator, SumEqualOperator, SubEqualOperator, MulEqualOperator, DivEqualOperator, EqualsComparator, GreaterThanComparator, LessThanComparator, JsonSerializer {

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
            if (((Color) constructor.getValue()) != null) {
                return new C5.b(new h() {
                    @Override
                    public Variable get() {
                        Color color = (Color) constructor.getValue();
                        if (color != null) {
                            return new Variable("temp", color.instance);
                        }
                        return null;
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable == null || variable.e()) {
                            return;
                        }
                        constructor.setValue(variable.color_value.e0());
                    }
                }, tittle, b.a.Color, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Color();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.Color) {
                return new Color(variable.color_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Color color = (Color) value;
            return color != null ? new Variable(fieldName, color.instance) : new Variable(fieldName, Variable.a.Color);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            Color color;
            try {
                color = (Color) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                color = null;
            }
            if (color != null) {
                return new C5.b(new h() {
                    @Override
                    public Variable get() {
                        try {
                            Color color2 = (Color) field.get(classInstance);
                            if (color2 != null) {
                                return new Variable("temp", color2.instance);
                            }
                            return null;
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
                        try {
                            field.set(classInstance, variable.color_value.e0());
                        } catch (IllegalAccessException e11) {
                            e11.printStackTrace();
                        }
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(variable.color_value.e0());
                        }
                    }
                }, tittle, b.a.Color, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            if (((Color) array[position]) != null) {
                return new C5.b(new h() {
                    @Override
                    public Variable get() {
                        Color color = (Color) array[position];
                        if (color != null) {
                            return new Variable("temp", color.instance);
                        }
                        return null;
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable == null || variable.e()) {
                            return;
                        }
                        array[position] = variable.color_value.e0();
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(variable.color_value.e0());
                        }
                    }
                }, tittle, b.a.Color, context);
            }
            return new C5.b(tittle + " (null)", 12);
        }

        @Override
        public C5.b getInspectorForList(Context context, final d8.h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            if (((Color) list.a(position)) != null) {
                return new C5.b(new h() {
                    @Override
                    public Variable get() {
                        Color color = (Color) list.a(position);
                        if (color != null) {
                            return new Variable("temp", color.instance);
                        }
                        return null;
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable == null || variable.e()) {
                            return;
                        }
                        list.b(position, variable.color_value.e0());
                        n nVar = getSetterListener;
                        if (nVar != null) {
                            nVar.a(variable.color_value.e0());
                        }
                    }
                }, tittle, b.a.Color, context);
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
            return new Color();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            if (variable.type == Variable.a.Color) {
                return new Color(variable.color_value);
            }
            return null;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Color color = (Color) value;
            return color != null ? new Variable(fieldName, color.instance) : new Variable(fieldName, Variable.a.Color);
        }
    }

    public Color() {
    }

    public Color(int i10, int i11, int i12) {
    }

    public Color(float f10, float f11, float f12) {
    }

    public Color(int i10, int i11, int i12, int i13) {
    }

    public Color(float f10, float f11, float f12, float f13) {
    }

    public Color(String str) {
    }

    public void set(Color color) {
    }

    public int getInt() {
        return 0;
    }

    public void setInt(int i10) {
    }

    public void fromHexString(String str) {
    }

    public void fromHex(String str) {
    }

    public String getHexString() {
        return "";
    }

    public String toHex() {
        return "";
    }

    public int getIntAlpha() {
        return 0;
    }

    public void setIntAlpha(int i10) {
    }

    public int getIntRed() {
        return 0;
    }

    public void setIntRed(int i10) {
    }

    public int getIntGreen() {
        return 0;
    }

    public void setIntGreen(int i10) {
    }

    public int getIntBlue() {
        return 0;
    }

    public void setIntBlue(int i10) {
    }

    public void setInts(int i10, int i11, int i12, int i13) {
    }

    public void setInts(int i10, int i11, int i12) {
    }

    public float getFloatAlpha() {
        return 0.0f;
    }

    public void setFloatAlpha(float f10) {
    }

    public float getFloatRed() {
        return 0.0f;
    }

    public void setFloatRed(float f10) {
    }

    public float getFloatGreen() {
        return 0.0f;
    }

    public void setFloatGreen(float f10) {
    }

    public float getFloatBlue() {
        return 0.0f;
    }

    public void setFloatBlue(float f10) {
    }

    public void setFloats(float f10, float f11, float f12, float f13) {
    }

    public void setFloats(float f10, float f11, float f12) {
    }

    public Color sum(Color color) {
        return null;
    }

    public Color sum(Vector3 vector3) {
        return null;
    }

    public Color sum(Vector2 vector2) {
        return null;
    }

    public Color sub(Color color) {
        return null;
    }

    public Color sub(Vector3 vector3) {
        return null;
    }

    public Color sub(Vector2 vector2) {
        return null;
    }

    public Color mul(Color color) {
        return null;
    }

    public Color mul(Vector3 vector3) {
        return null;
    }

    public Color mul(Vector2 vector2) {
        return null;
    }

    public Color div(Color color) {
        return null;
    }

    public Color div(Vector3 vector3) {
        return null;
    }

    public Color div(Vector2 vector2) {
        return null;
    }

    public void sumLocal(Color color) {
    }

    public void sumLocal(Vector3 vector3) {
    }

    public void sumLocal(Vector2 vector2) {
    }

    public void subLocal(Color color) {
    }

    public void subLocal(Vector3 vector3) {
    }

    public void subLocal(Vector2 vector2) {
    }

    public void mulLocal(Color color) {
    }

    public void mulLocal(Vector3 vector3) {
    }

    public void mulLocal(Vector2 vector2) {
    }

    public void divLocal(Color color) {
    }

    public void divLocal(Vector3 vector3) {
    }

    public void divLocal(Vector2 vector2) {
    }

    public void lerp(Color color, float f10) {
    }

    public void lerp(float f10, float f11, float f12, float f13, float f14) {
    }

    public void lerp(float f10, float f11) {
    }

    @UnimplementedDoc
    public Color lerpOut(Color color, float f10) {
        return null;
    }

    @UnimplementedDoc
    public Color lerpOut(float f10, float f11, float f12, float f13, float f14) {
        return null;
    }

    @UnimplementedDoc
    public Color lerpOut(float f10, float f11) {
        return null;
    }

    public void lerpInSeconds(Color color, float f10) {
    }

    public void lerpInSeconds(float f10, float f11, float f12, float f13, float f14) {
    }

    public void lerpInSeconds(float f10, float f11) {
    }

    @UnimplementedDoc
    public Color lerpOutInSeconds(Color color, float f10) {
        return null;
    }

    @UnimplementedDoc
    public Color lerpOutInSeconds(float f10, float f11, float f12, float f13, float f14) {
        return null;
    }

    @UnimplementedDoc
    public Color lerpOutInSeconds(float f10, float f11) {
        return null;
    }

    public void blend(Color color, float f10) {
    }

    public void blend(float f10, float f11, float f12, float f13, float f14) {
    }

    public void blend(float f10, float f11) {
    }

    @UnimplementedDoc
    public Color blendOut(Color color, float f10) {
        return null;
    }

    @UnimplementedDoc
    public Color blendOut(float f10, float f11, float f12, float f13, float f14) {
        return null;
    }

    @UnimplementedDoc
    public Color blendOut(float f10, float f11) {
        return null;
    }

    public String toString() {
        return "";
    }

    public static Color RED() {
        return null;
    }

    public static Color WHITE() {
        return null;
    }

    public static Color BLACK() {
        return null;
    }

    public static Color GREEN() {
        return null;
    }

    public static Color BLUE() {
        return null;
    }

    public static Color YELLOW() {
        return null;
    }

    public static Color PINK() {
        return null;
    }

    public Color copy() {
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        return false;
    }

    @Override
    public boolean pointerEquals(Object obj) {
        return false;
    }

    @Override
    public boolean notEquals(Object obj) {
        return false;
    }

    public static boolean isNull(Object obj) {
        return false;
    }

    @Override
    public boolean greaterThan(Object obj) {
        return false;
    }

    @Override
    public boolean greaterThan(float f10) {
        return false;
    }

    @Override
    public boolean greaterThan(int i10) {
        return false;
    }

    @Override
    public boolean greaterThan(long j10) {
        return false;
    }

    @Override
    public boolean greaterThan(double d10) {
        return false;
    }

    @Override
    public boolean greaterOrEqualsThan(Object obj) {
        return false;
    }

    @Override
    public boolean greaterOrEqualsThan(float f10) {
        return false;
    }

    @Override
    public boolean greaterOrEqualsThan(int i10) {
        return false;
    }

    @Override
    public boolean greaterOrEqualsThan(long j10) {
        return false;
    }

    @Override
    public boolean greaterOrEqualsThan(double d10) {
        return false;
    }

    @Override
    public boolean lessThan(Object obj) {
        return false;
    }

    @Override
    public boolean lessThan(float f10) {
        return false;
    }

    @Override
    public boolean lessThan(int i10) {
        return false;
    }

    @Override
    public boolean lessThan(long j10) {
        return false;
    }

    @Override
    public boolean lessThan(double d10) {
        return false;
    }

    @Override
    public boolean lessOrEqualsThan(Object obj) {
        return false;
    }

    @Override
    public boolean lessOrEqualsThan(float f10) {
        return false;
    }

    @Override
    public boolean lessOrEqualsThan(int i10) {
        return false;
    }

    @Override
    public boolean lessOrEqualsThan(long j10) {
        return false;
    }

    @Override
    public boolean lessOrEqualsThan(double d10) {
        return false;
    }

    @Override
    public <T> T sum(Object obj) {
        return null;
    }

    @Override
    public void sumEqual(Object obj) {
    }

    @Override
    public <T> T div(Object obj) {
        return null;
    }

    @Override
    public void divEqual(Object obj) {
    }

    @Override
    public <T> T mul(Object obj) {
        return null;
    }

    @Override
    public void mulEqual(Object obj) {
    }

    @Override
    public <T> T sub(Object obj) {
        return null;
    }

    @Override
    public void subEqual(Object obj) {
    }

    @Override
    public String serializeToString() {
        return null;
    }

    @Override
    public void deserializeLocal(String str) {
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Color$Android.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Color$Android.class
  classes.dex
 */
    public static class Android {
        public static final int BLACK = -16777216;
        public static final int DKGRAY = -12303292;
        public static final int GRAY = -7829368;
        public static final int LTGRAY = -3355444;
        public static final int WHITE = -1;
        public static final int RED = -65536;
        public static final int GREEN = -16711936;
        public static final int BLUE = -16776961;
        public static final int YELLOW = -256;
        public static final int CYAN = -16711681;
        public static final int MAGENTA = -65281;
        public static final int TRANSPARENT = 0;

        public static int parseColor(String str) {
            return 0;
        }

        private static float saturate(float f10) {
            if (f10 <= 0.0f) {
                return 0.0f;
            }
            if (f10 >= 1.0f) {
                return 1.0f;
            }
            return f10;
        }

        public static int alpha(int i10) {
            return i10 >>> 24;
        }

        public static int red(int i10) {
            return (i10 >> 16) & 255;
        }

        public static int green(int i10) {
            return (i10 >> 8) & 255;
        }

        public static int blue(int i10) {
            return i10 & 255;
        }

        public static int rgb(int i10, int i11, int i12) {
            return (-16777216) | (i10 << 16) | (i11 << 8) | i12;
        }

        public static int rgb(float f10, float f11, float f12) {
            return (-16777216) | (((int) ((f10 * 255.0f) + 0.5f)) << 16) | (((int) ((f11 * 255.0f) + 0.5f)) << 8) | ((int) ((f12 * 255.0f) + 0.5f));
        }

        public static int argb(int i10, int i11, int i12, int i13) {
            return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
        }

        public static int argb(float f10, float f11, float f12, float f13) {
            return (((int) ((f10 * 255.0f) + 0.5f)) << 24) | (((int) ((f11 * 255.0f) + 0.5f)) << 16) | (((int) ((f12 * 255.0f) + 0.5f)) << 8) | ((int) ((f13 * 255.0f) + 0.5f));
        }
    }
}
