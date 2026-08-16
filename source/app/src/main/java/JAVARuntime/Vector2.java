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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Vector2.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Vector2.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Vector2 implements SumOperator, SubOperator, MulOperator, DivOperator, SumEqualOperator, SubEqualOperator, MulEqualOperator, DivEqualOperator, EqualsComparator, GreaterThanComparator, LessThanComparator, AddAddOperator, RemoveRemoveOperator, JsonSerializer {

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
            final Vector2 vector2 = (Vector2) constructor.getValue();
            if (vector2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setX(variable.float_value);
                    }
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setY(variable.float_value);
                    }
                }
            }, "y", aVar);
            return bVar;
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Vector2();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2;
            if (variable.type != Variable.a.Vector2 || (vector2 = variable.vector2_value) == null) {
                return null;
            }
            return new Vector2(vector2);
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Vector2 vector2 = (Vector2) value;
            return vector2 != null ? new Variable(fieldName, vector2.instance) : new Variable(fieldName, Variable.a.Vector2);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector2 vector2;
            try {
                vector2 = (Vector2) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                vector2 = null;
            }
            if (vector2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setX(variable.float_value);
                    }
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setY(variable.float_value);
                    }
                }
            }, "y", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector2 vector2 = (Vector2) array[position];
            if (vector2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setX(variable.float_value);
                    }
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setY(variable.float_value);
                    }
                }
            }, "y", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector2 vector2 = (Vector2) list.a(position);
            if (vector2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setX(variable.float_value);
                    }
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        vector2.setY(variable.float_value);
                    }
                }
            }, "y", aVar);
            return bVar;
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
            return new Vector2();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2;
            if (variable.type != Variable.a.Vector2 || (vector2 = variable.vector2_value) == null) {
                return null;
            }
            return new Vector2(vector2);
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Vector2 vector2 = (Vector2) value;
            return vector2 != null ? new Variable(fieldName, vector2.instance) : new Variable(fieldName, Variable.a.Vector2);
        }
    }

    public Vector2() {
    }

    public Vector2(float f10, float f11) {
    }

    public Vector2(int i10, float f10) {
    }

    public Vector2(float f10, int i10) {
    }

    public Vector2(int i10, int i11) {
    }

    public Vector2(float f10) {
    }

    @HideGetSet
    public float getX() {
        return 0.0f;
    }

    @HideGetSet
    public void setX(float f10) {
    }

    @HideGetSet
    public float getY() {
        return 0.0f;
    }

    @HideGetSet
    public void setY(float f10) {
    }

    public Vector2 mul(Vector2 vector2) {
        return null;
    }

    public Vector2 mul(float f10, float f11) {
        return null;
    }

    public Vector2 mul(float f10) {
        return null;
    }

    public void mulLocal(Vector3 vector3) {
    }

    public void mulLocal(Vector2 vector2) {
    }

    public void mulLocal(float f10, float f11) {
    }

    public void mulLocal(float f10) {
    }

    public Vector2 multiply(Vector2 vector2) {
        return null;
    }

    public Vector2 multiply(float f10, float f11) {
        return null;
    }

    public Vector2 multiply(float f10) {
        return null;
    }

    public Vector2 div(Vector2 vector2) {
        return null;
    }

    public Vector2 div(float f10, float f11) {
        return null;
    }

    public Vector2 div(float f10) {
        return null;
    }

    public void divLocal(Vector3 vector3) {
    }

    public void divLocal(Vector2 vector2) {
    }

    public void divLocal(float f10, float f11) {
    }

    public void divLocal(float f10) {
    }

    public Vector2 divide(Vector2 vector2) {
        return null;
    }

    public Vector2 divide(float f10, float f11) {
        return null;
    }

    public Vector2 divide(float f10) {
        return null;
    }

    public Vector2 sum(Vector2 vector2) {
        return null;
    }

    public Vector2 sum(float f10, float f11) {
        return null;
    }

    public Vector2 sum(float f10) {
        return null;
    }

    public void sumLocal(Vector3 vector3) {
    }

    public void sumLocal(Vector2 vector2) {
    }

    public void sumLocal(float f10, float f11) {
    }

    public void sumLocal(float f10) {
    }

    public Vector2 add(Vector2 vector2) {
        return null;
    }

    public Vector2 add(float f10, float f11) {
        return null;
    }

    public Vector2 add(float f10) {
        return null;
    }

    public Vector2 sub(Vector2 vector2) {
        return null;
    }

    public Vector2 sub(float f10, float f11) {
        return null;
    }

    public Vector2 sub(float f10) {
        return null;
    }

    public void subLocal(Vector3 vector3) {
    }

    public void subLocal(Vector2 vector2) {
    }

    public void subLocal(float f10, float f11) {
    }

    public void subLocal(float f10) {
    }

    public Vector2 subtract(Vector2 vector2) {
        return null;
    }

    public Vector2 subtract(float f10, float f11) {
        return null;
    }

    public Vector2 subtract(float f10) {
        return null;
    }

    public boolean equals(Vector2 vector2) {
        return false;
    }

    public boolean equals(float f10, float f11) {
        return false;
    }

    public boolean equals(float f10) {
        return false;
    }

    public void set(Vector2 vector2) {
    }

    public void set(float f10, float f11) {
    }

    public void set(float f10) {
    }

    public void lerp(Vector2 vector2, float f10) {
    }

    public void lerp(float f10, float f11, float f12) {
    }

    public void lerp(float f10, float f11) {
    }

    public void lerpInSeconds(Vector2 vector2, float f10) {
    }

    public void lerpInSeconds(float f10, float f11, float f12) {
    }

    public void lerpInSeconds(float f10, float f11) {
    }

    public Vector2 blend(Vector2 vector2, float f10) {
        return null;
    }

    public Vector2 blend(float f10, float f11, float f12) {
        return null;
    }

    public Vector2 blend(float f10, float f11) {
        return null;
    }

    public void blendLocal(Vector2 vector2, float f10) {
    }

    public void blendLocal(float f10, float f11, float f12) {
    }

    public void blendLocal(float f10, float f11) {
    }

    public Vector2 normalize() {
        return null;
    }

    public void normalizeLocal() {
    }

    public void rotateLocal(float f10) {
    }

    public float length() {
        return 0.0f;
    }

    public float sqrLength() {
        return 0.0f;
    }

    public float distance(Vector2 vector2) {
        return 0.0f;
    }

    public float sqrDistance(Vector2 vector2) {
        return 0.0f;
    }

    public float dot(Vector2 vector2) {
        return 0.0f;
    }

    public float dot(float f10, float f11) {
        return 0.0f;
    }

    public float dot(float f10) {
        return 0.0f;
    }

    public Vector3 cross(Vector2 vector2) {
        return null;
    }

    public Vector3 cross(float f10, float f11) {
        return null;
    }

    public Vector2 copy() {
        return null;
    }

    public String toString() {
        return null;
    }

    public String toString(int i10) {
        return null;
    }

    public static Vector2 zero() {
        return null;
    }

    public static Vector2 rotateAroundPivot(Vector2 vector2, float f10) {
        return null;
    }

    public static Vector2 rotateAroundPivot(Vector2 vector2, Vector2 vector22, float f10) {
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
    public void addAdd() {
    }

    @Override
    public void removeRemove() {
    }

    @Override
    public String serializeToString() {
        return null;
    }

    @Override
    public void deserializeLocal(String str) {
    }
}
