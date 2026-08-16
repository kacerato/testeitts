package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.n;
import P8.q;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Vector.g;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.j;
import java.lang.reflect.Field;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Point2.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Point2.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Point2 {

    public class AnonymousClass1 implements i {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point2 point2;
            try {
                point2 = (Point2) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                point2 = null;
            }
            if (point2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setY(variable.int_value);
                }
            }, "y", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point2 point2 = (Point2) array[position];
            if (point2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setY(variable.int_value);
                }
            }, "y", aVar);
            return bVar;
        }

        @Override
        public C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            final Point2 point2 = (Point2) list.a(position);
            if (point2 == null) {
                return new C5.b(tittle + " (null)", 12);
            }
            C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[2]);
            C5.b[] bVarArr = bVar.f2081p;
            h hVar = new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getX() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setX(variable.int_value);
                }
            };
            b.a aVar = b.a.Int;
            bVarArr[0] = new C5.b(hVar, "x", aVar);
            bVar.f2081p[1] = new C5.b(new h() {
                @Override
                public Variable get() {
                    if (point2 == null) {
                        return new Variable("", "0");
                    }
                    return new Variable("", point2.getY() + "");
                }

                @Override
                public void set(Variable variable) {
                    Point2 point22;
                    if (variable == null || (point22 = point2) == null) {
                        return;
                    }
                    point22.setY(variable.int_value);
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
            return new Point2();
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2;
            if (variable.type != Variable.a.Vector2 || (vector2 = variable.vector2_value) == null) {
                return null;
            }
            return new Point2(new g(vector2));
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            g gVar;
            Point2 point2 = (Point2) value;
            return (point2 == null || (gVar = point2.vector2) == null) ? new Variable(fieldName, Variable.a.Vector2) : new Variable(fieldName, gVar.toVector2());
        }
    }

    public Point2() {
    }

    public Point2(int i10, int i11) {
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

    public Point2 mul(Point2 point2) {
        return null;
    }

    public Point2 mul(int i10, int i11) {
        return null;
    }

    public Point2 mul(int i10) {
        return null;
    }

    public Point2 div(Point2 point2) {
        return null;
    }

    public Point2 div(int i10, int i11) {
        return null;
    }

    public Point2 div(int i10) {
        return null;
    }

    public Point2 sum(Point2 point2) {
        return null;
    }

    public Point2 sum(int i10, int i11) {
        return null;
    }

    public Point2 sum(int i10) {
        return null;
    }

    public Point2 sub(Point2 point2) {
        return null;
    }

    public Point2 sub(int i10, int i11) {
        return null;
    }

    public Point2 sub(int i10) {
        return null;
    }

    public boolean equals(Point2 point2) {
        return false;
    }

    public boolean equals(int i10, int i11) {
        return false;
    }

    public boolean equals(int i10) {
        return false;
    }

    public void set(Point2 point2) {
    }

    public void set(Vector2 vector2) {
    }

    public void set(int i10, int i11) {
    }

    public void set(int i10) {
    }

    public void lerp(Point2 point2, int i10) {
    }

    public void lerp(int i10, int i11, int i12) {
    }

    public void lerp(int i10, int i11) {
    }

    public void lerpInSeconds(Point2 point2, int i10) {
    }

    public void lerpInSeconds(int i10, int i11, int i12) {
    }

    public void lerpInSeconds(int i10, int i11) {
    }

    public void blend(Point2 point2, int i10) {
    }

    public void blend(int i10, int i11, int i12) {
    }

    public void blend(int i10, int i11) {
    }

    public Point2 normalize() {
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

    public float distance(Point2 point2) {
        return 0.0f;
    }

    public float sqrDistance(Point2 point2) {
        return 0.0f;
    }

    public float dot(Point2 point2) {
        return 0.0f;
    }

    public float dot(int i10, int i11) {
        return 0.0f;
    }

    public float dot(int i10) {
        return 0.0f;
    }

    public Vector3 cross(Point2 point2) {
        return null;
    }

    public Vector3 cross(int i10, int i11) {
        return null;
    }

    public Point2 copy() {
        return null;
    }

    public String toString() {
        return null;
    }

    public static Point2 zero() {
        return null;
    }
}
