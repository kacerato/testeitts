package p000if;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;

public abstract class AbstractC13699B extends AbstractC13730z {

    public static final Logger f92059c = Logger.getLogger(AbstractC13699B.class.getName());

    public static final boolean f92060d = false;

    public Spatial f92061b = null;

    public AbstractC13699B() {
        super.setEnabled(false);
    }

    @Override
    public AbstractC13699B clone() throws CloneNotSupportedException {
        return (AbstractC13699B) super.clone();
    }

    public Spatial c() {
        return this.f92061b;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.f92061b = (Spatial) cloner.clone(this.f92061b);
    }

    @Override
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public final void d(Spatial spatial) {
        this.f92061b = spatial;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.f92061b = (Spatial) jmeImporter.getCapsule(this).readSavable("subtree", null);
    }

    @Override
    public void setEnabled(boolean z10) {
        Spatial spatial;
        Node node = (Node) this.spatial;
        boolean z11 = this.enabled;
        if (!z11 || z10) {
            if (!z11 && z10) {
                if (node == null) {
                    throw new IllegalStateException("control should be added to a node");
                }
                Spatial spatial2 = this.f92061b;
                if (spatial2 == null) {
                    throw new IllegalStateException("subtree should be initialized");
                }
                node.attachChild(spatial2);
            }
        } else if (node != null && (spatial = this.f92061b) != null) {
            node.detachChild(spatial);
        }
        super.setEnabled(z10);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        if (spatial != null && !(spatial instanceof Node)) {
            throw new IllegalArgumentException("Controlled spatial must be a Node or null.");
        }
        Spatial spatial2 = this.f92061b;
        if (spatial2 != null && spatial2.getParent() != spatial) {
            this.f92061b.removeFromParent();
            if (this.enabled && spatial != null) {
                ((Node) spatial).attachChild(this.f92061b);
            }
        }
        super.setSpatial(spatial);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.f92061b, "subtree", (Savable) null);
    }
}
