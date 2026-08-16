package h9;

import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;

public final class C13436b {

    public CompoundCollisionShape f90467a;

    public ChildCollisionShape[] f90468b = InterfaceC13435a.f90466J4;

    public int f90469c = -1;

    public boolean f90470d = true;

    public void a() {
        this.f90467a = null;
        this.f90468b = InterfaceC13435a.f90466J4;
        this.f90469c = -1;
        this.f90470d = true;
    }

    public ChildCollisionShape[] b(CompoundCollisionShape shape) {
        if (shape == null) {
            this.f90467a = null;
            ChildCollisionShape[] childCollisionShapeArr = InterfaceC13435a.f90466J4;
            this.f90468b = childCollisionShapeArr;
            this.f90469c = 0;
            this.f90470d = false;
            return childCollisionShapeArr;
        }
        int countChildren = shape.countChildren();
        if (this.f90470d || this.f90467a != shape || this.f90469c != countChildren) {
            this.f90467a = shape;
            this.f90469c = countChildren;
            this.f90468b = countChildren == 0 ? InterfaceC13435a.f90466J4 : shape.listChildren();
            this.f90470d = false;
        }
        return this.f90468b;
    }

    public void c() {
        this.f90470d = true;
    }
}
