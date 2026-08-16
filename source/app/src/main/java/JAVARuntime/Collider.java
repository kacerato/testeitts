package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Collider.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Collider.class
  classes.dex
 */
@ClassCategory(cat = {"Physics", "Components"})
public final class Collider extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Collider$Shape.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Collider$Shape.class
  classes.dex
 */
    public enum Shape {
        Box,
        Sphere,
        Capsule,
        Model,
        ConvexModel,
        Decomposition;

        public static Shape[] valuesCustom() {
            Shape[] valuesCustom = values();
            int length = valuesCustom.length;
            Shape[] shapeArr = new Shape[length];
            java.lang.System.arraycopy(valuesCustom, 0, shapeArr, 0, length);
            return shapeArr;
        }
    }

    public Collider() {
    }

    public Collider(Shape shape) {
    }

    public Shape getShape() {
        return null;
    }

    public void setShape(Shape shape) {
    }

    @HideGetSet
    public void setVertexFile(VertexFile vertexFile) {
    }

    @HideGetSet
    public Vertex getVertex() {
        return null;
    }

    @HideGetSet
    public void setVertex(Vertex vertex) {
    }

    @HideGetSet
    public void setConvexVertex(Vertex vertex) {
    }

    public boolean colliderWithName(String str) {
        return false;
    }

    public boolean isColliding() {
        return false;
    }

    public List<Collision> getCollisionList() {
        return null;
    }

    public int getCollisionsCount() {
        return 0;
    }

    public Collision getCollisionAt(int i10) {
        return null;
    }
}
