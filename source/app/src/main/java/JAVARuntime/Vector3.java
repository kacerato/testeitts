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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Vector3.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Vector3.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Vector3 implements SumOperator, SubOperator, MulOperator, DivOperator, SumEqualOperator, SubEqualOperator, MulEqualOperator, DivEqualOperator, EqualsComparator, GreaterThanComparator, LessThanComparator, AddAddOperator, RemoveRemoveOperator, JsonSerializer {

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
            final Vector3 vector3 = (Vector3) constructor.getValue();
            if (vector3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setX(variable.float_value);
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setY(variable.float_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setZ(variable.float_value);
                }
            }, "z", aVar);
            return bVar;
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Vector3();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector3 vector3;
            if (variable.type != Variable.a.Vector3 || (vector3 = variable.vector3_value) == null) {
                return null;
            }
            return new Vector3(vector3);
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Vector3 vector3 = (Vector3) value;
            return vector3 != null ? new Variable(fieldName, vector3.instance) : new Variable(fieldName, Variable.a.Vector3);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector3 vector3;
            try {
                vector3 = (Vector3) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                vector3 = null;
            }
            if (vector3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setX(variable.float_value);
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setY(variable.float_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setZ(variable.float_value);
                }
            }, "z", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector3 vector3 = (Vector3) array[position];
            if (vector3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setX(variable.float_value);
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setY(variable.float_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setZ(variable.float_value);
                }
            }, "z", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Vector3 vector3 = (Vector3) list.a(position);
            if (vector3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setX(variable.float_value);
                }
            };
            b.a aVar = b.a.Float;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setY(variable.float_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (vector3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", vector3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Vector3 vector32;
                    if (variable == null || (vector32 = vector3) == null) {
                        return;
                    }
                    vector32.setZ(variable.float_value);
                }
            }, "z", aVar);
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
            return new Vector3();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector3 vector3;
            if (variable.type != Variable.a.Vector3 || (vector3 = variable.vector3_value) == null) {
                return null;
            }
            return new Vector3(vector3);
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Vector3 vector3 = (Vector3) value;
            return vector3 != null ? new Variable(fieldName, vector3.instance) : new Variable(fieldName, Variable.a.Vector3);
        }
    }

    public Vector3() {
    }

    public Vector3(float f10) {
    }

    public Vector3(int i10) {
    }

    public Vector3(float f10, float f11, float f12) {
    }

    public Vector3(int i10, int i11, int i12) {
    }

    public Vector3(float f10, float f11, int i10) {
    }

    public Vector3(int i10, float f10, int i11) {
    }

    public Vector3(int i10, float f10, float f11) {
    }

    public Vector3(int i10, int i11, float f10) {
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

    @HideGetSet
    public float getZ() {
        return 0.0f;
    }

    @HideGetSet
    public void setZ(float f10) {
    }

    public Vector2 getXY() {
        return null;
    }

    public Vector2 getXZ() {
        return null;
    }

    public Vector2 getYZ() {
        return null;
    }

    public Vector2 getYX() {
        return null;
    }

    public Vector2 getZX() {
        return null;
    }

    public Vector2 getZY() {
        return null;
    }

    public void setXY(Vector2 vector2) {
    }

    public void setXZ(Vector2 vector2) {
    }

    public void setYZ(Vector2 vector2) {
    }

    public void setYX(Vector2 vector2) {
    }

    public void setZX(Vector2 vector2) {
    }

    public void setZY(Vector2 vector2) {
    }

    public void setXY(float f10, float f11) {
    }

    public void setXZ(float f10, float f11) {
    }

    public void setYZ(float f10, float f11) {
    }

    public void setYX(float f10, float f11) {
    }

    public void setZX(float f10, float f11) {
    }

    public void setZY(float f10, float f11) {
    }

    public void sumX(float f10) {
    }

    public void sumY(float f10) {
    }

    public void sumZ(float f10) {
    }

    public void subX(float f10) {
    }

    public void subY(float f10) {
    }

    public void subZ(float f10) {
    }

    public void mulX(float f10) {
    }

    public void mulY(float f10) {
    }

    public void mulZ(float f10) {
    }

    public void divX(float f10) {
    }

    public void divY(float f10) {
    }

    public void divZ(float f10) {
    }

    public Vector3 mul(Vector3 vector3) {
        return null;
    }

    public Vector3 mul(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 mul(float f10) {
        return null;
    }

    public void mulLocal(Vector3 vector3) {
    }

    public void mulLocal(Vector2 vector2) {
    }

    public void mulLocal(float f10, float f11, float f12) {
    }

    public void mulLocal(float f10) {
    }

    public Vector3 multiply(Vector3 vector3) {
        return null;
    }

    public Vector3 multiply(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 multiply(float f10) {
        return null;
    }

    public Vector3 div(Vector3 vector3) {
        return null;
    }

    public Vector3 div(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 div(float f10) {
        return null;
    }

    public void divLocal(Vector3 vector3) {
    }

    public void divLocal(Vector2 vector2) {
    }

    public void divLocal(float f10, float f11, float f12) {
    }

    public void divLocal(float f10) {
    }

    public Vector3 divide(Vector3 vector3) {
        return null;
    }

    public Vector3 divide(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 divide(float f10) {
        return null;
    }

    public Vector3 sum(Vector3 vector3) {
        return null;
    }

    public Vector3 sum(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 sum(float f10) {
        return null;
    }

    public void sumLocal(Vector3 vector3) {
    }

    public void sumLocal(Vector2 vector2) {
    }

    public void sumLocal(float f10, float f11, float f12) {
    }

    public void sumLocal(float f10) {
    }

    public Vector3 add(Vector3 vector3) {
        return null;
    }

    public Vector3 add(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 add(float f10) {
        return null;
    }

    public Vector3 sub(Vector3 vector3) {
        return null;
    }

    public Vector3 sub(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 sub(float f10) {
        return null;
    }

    public void subLocal(Vector3 vector3) {
    }

    public void subLocal(Vector2 vector2) {
    }

    public void subLocal(float f10, float f11, float f12) {
    }

    public void subLocal(float f10) {
    }

    public Vector3 subtract(Vector3 vector3) {
        return null;
    }

    public Vector3 subtract(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 subtract(float f10) {
        return null;
    }

    public boolean equals(Vector3 vector3) {
        return false;
    }

    public boolean equals(float f10, float f11, float f12) {
        return false;
    }

    public boolean equals(float f10) {
        return false;
    }

    public void set(Vector3 vector3) {
    }

    public void set(float f10, float f11, float f12) {
    }

    public void set(float f10) {
    }

    public void lerp(Vector3 vector3, float f10) {
    }

    public void lerp(float f10, float f11, float f12, float f13) {
    }

    public void lerp(float f10, float f11) {
    }

    public void lerpInSeconds(Vector3 vector3, float f10) {
    }

    public void lerpInSeconds(float f10, float f11, float f12, float f13) {
    }

    public void lerpInSeconds(float f10, float f11) {
    }

    public Vector3 blend(Vector3 vector3, float f10) {
        return null;
    }

    public Vector3 blend(float f10, float f11, float f12, float f13) {
        return null;
    }

    public Vector3 blend(float f10, float f11) {
        return null;
    }

    public void blendLocal(Vector3 vector3, float f10) {
    }

    public void blendLocal(float f10, float f11, float f12, float f13) {
    }

    public void blendLocal(float f10, float f11) {
    }

    public Vector3 normalize() {
        return null;
    }

    public void normalizeLocal() {
    }

    public float length() {
        return 0.0f;
    }

    public float sqrLength() {
        return 0.0f;
    }

    public float magnitude() {
        return 0.0f;
    }

    public float sqrMagnitude() {
        return 0.0f;
    }

    public Vector3 rotate(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 rotate(Vector3 vector3) {
        return null;
    }

    public Vector3 rotate(Quaternion quaternion) {
        return null;
    }

    public Vector3 rotateAroundPivot(float f10, float f11, float f12, Vector3 vector3) {
        return null;
    }

    public Vector3 rotateAroundPivot(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public Vector3 rotateAroundPivot(Quaternion quaternion, Vector3 vector3) {
        return null;
    }

    public float distance(Vector3 vector3) {
        return 0.0f;
    }

    public float sqrDistance(Vector3 vector3) {
        return 0.0f;
    }

    public float dot(Vector3 vector3) {
        return 0.0f;
    }

    public float dot(float f10, float f11, float f12) {
        return 0.0f;
    }

    public float dot(float f10) {
        return 0.0f;
    }

    public Vector3 cross(Vector3 vector3) {
        return null;
    }

    public Vector3 cross(float f10, float f11, float f12) {
        return null;
    }

    public Vector3 copy() {
        return null;
    }

    public String toString() {
        return null;
    }

    public String toString(int i10) {
        return null;
    }

    public static Vector3 zero() {
        return null;
    }

    public static Vector3 one() {
        return null;
    }

    public static Vector3 smoothDamp(Vector3 vector3, Vector3 vector32, Vector3 vector33, float f10, float f11, float f12) {
        return null;
    }

    public static Vector3 smoothDamp(Vector3 vector3, Vector3 vector32, Vector3 vector33, float f10, float f11, float f12, Vector3 vector34) {
        return null;
    }

    public static Vector3 reflect(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public static Vector3 reflect(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        return null;
    }

    public static float angle(Vector3 vector3, Vector3 vector32) {
        return 0.0f;
    }

    public static Vector3 triangleNormal(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        return null;
    }

    public static Vector3 triangleNormal(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        return null;
    }

    public static Vector3 Max(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public static Vector3 Min(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public static Vector3 Negate(Vector3 vector3) {
        return null;
    }

    public static Vector3 up() {
        return new Vector3(0, 1, 0);
    }

    public static Vector3 down() {
        return new Vector3(0, -1, 0);
    }

    public static Vector3 back() {
        return new Vector3(0, 0, -1);
    }

    public static Vector3 forward() {
        return new Vector3(0, 0, 1);
    }

    public static Vector3 left() {
        return new Vector3(-1, 0, 0);
    }

    public static Vector3 right() {
        return new Vector3(1, 0, 0);
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
