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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Point3.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Point3.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Point3 {

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point3 point3;
            try {
                point3 = (Point3) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                point3 = null;
            }
            if (point3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setY(variable.int_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setZ(variable.int_value);
                }
            }, "z", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point3 point3 = (Point3) array[position];
            if (point3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setY(variable.int_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setZ(variable.int_value);
                }
            }, "z", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point3 point3 = (Point3) list.a(position);
            if (point3 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[3]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setY(variable.int_value);
                }
            }, "y", aVar);
            bVar.f2081p[2] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point3 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point3.getZ() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point3 point32;
                    if (variable == null || (point32 = point3) == null) {
                        return;
                    }
                    point32.setZ(variable.int_value);
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
            return new Point3();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector3 vector3;
            if (variable.type != Variable.a.Vector3 || (vector3 = variable.vector3_value) == null) {
                return null;
            }
            return new Point3(new com.itsmagic.engine.Engines.Engine.Vector.h(vector3));
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.h hVar;
            Point3 point3 = (Point3) value;
            return (point3 == null || (hVar = point3.vector) == null) ? new Variable(fieldName, Variable.a.Vector3) : new Variable(fieldName, hVar.q0());
        }
    }

    public Point3() {
    }

    public Point3(int i10) {
    }

    public Point3(int i10, int i11, int i12) {
    }

    @HideGetSet
    public int getX() {
        return 0;
    }

    @HideGetSet
    public void setX(int i10) {
    }

    @HideGetSet
    public int getY() {
        return 0;
    }

    @HideGetSet
    public void setY(int i10) {
    }

    @HideGetSet
    public int getZ() {
        return 0;
    }

    @HideGetSet
    public void setZ(int i10) {
    }

    public Point3 mul(Point3 point3) {
        return null;
    }

    public Point3 mul(int i10, int i11, int i12) {
        return null;
    }

    public Point3 mul(int i10) {
        return null;
    }

    public void mulLocal(Vector3 vector3) {
    }

    public void mulLocal(Point3 point3) {
    }

    public void mulLocal(float f10, float f11, float f12) {
    }

    public void mulLocal(float f10) {
    }

    public Point3 div(Point3 point3) {
        return null;
    }

    public Point3 div(int i10, int i11, int i12) {
        return null;
    }

    public Point3 div(int i10) {
        return null;
    }

    public void divLocal(Vector3 vector3) {
    }

    public void divLocal(Point3 point3) {
    }

    public void divLocal(float f10, float f11, float f12) {
    }

    public void divLocal(float f10) {
    }

    public Point3 sum(Point3 point3) {
        return null;
    }

    public Point3 sum(int i10, int i11, int i12) {
        return null;
    }

    public Point3 sum(int i10) {
        return null;
    }

    public void sumLocal(Vector3 vector3) {
    }

    public void sumLocal(Point3 point3) {
    }

    public void sumLocal(float f10, float f11, float f12) {
    }

    public void sumLocal(float f10) {
    }

    public Point3 sub(Point3 point3) {
        return null;
    }

    public Point3 sub(int i10, int i11, int i12) {
        return null;
    }

    public Point3 sub(int i10) {
        return null;
    }

    public void subLocal(Vector3 vector3) {
    }

    public void subLocal(Point3 point3) {
    }

    public void subLocal(float f10, float f11, float f12) {
    }

    public void subLocal(float f10) {
    }

    public boolean equals(Point3 point3) {
        return false;
    }

    public boolean equals(int i10, int i11, int i12) {
        return false;
    }

    public boolean equals(int i10) {
        return false;
    }

    public void set(Point3 point3) {
    }

    public void set(int i10, int i11, int i12) {
    }

    public void set(int i10) {
    }

    public void lerp(Point3 point3, int i10) {
    }

    public void lerp(int i10, int i11, int i12, int i13) {
    }

    public void lerp(int i10, int i11) {
    }

    public void lerpInSeconds(Point3 point3, int i10) {
    }

    public void lerpInSeconds(int i10, int i11, int i12, int i13) {
    }

    public void lerpInSeconds(int i10, int i11) {
    }

    public void blend(Point3 point3, int i10) {
    }

    public void blend(int i10, int i11, int i12, int i13) {
    }

    public void blend(int i10, int i11) {
    }

    public Point3 normalize() {
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

    public float distance(Point3 point3) {
        return 0.0f;
    }

    public float sqrDistance(Point3 point3) {
        return 0.0f;
    }

    public float dot(Point3 point3) {
        return 0.0f;
    }

    public float dot(int i10, int i11, int i12) {
        return 0.0f;
    }

    public float dot(int i10) {
        return 0.0f;
    }

    public Vector3 cross(Point3 point3) {
        return null;
    }

    public Vector3 cross(int i10, int i11, int i12) {
        return null;
    }

    public Point3 copy() {
        return null;
    }

    public String toString() {
        return null;
    }

    public static Point3 zero() {
        return null;
    }
}
