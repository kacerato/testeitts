package com.jme3.bullet.debug;

import com.jme3.bullet.MultiBody;
import com.jme3.bullet.MultiBodySpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.scene.Node;
import com.jme3.scene.control.Control;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MultiBodyDebugAppState extends BulletDebugAppState {
    public static final Logger logger2 = Logger.getLogger(MultiBodyDebugAppState.class.getName());
    private Map<MultiBodyCollider, Node> colliderMap;

    public MultiBodyDebugAppState(DebugConfiguration debugConfiguration) {
        super(debugConfiguration);
        this.colliderMap = new HashMap(64);
    }

    private void updateMultiBodies() {
        Map<MultiBodyCollider, Node> map = this.colliderMap;
        this.colliderMap = new HashMap(map.size());
        Iterator<MultiBody> it = ((MultiBodySpace) getConfiguration().getSpace()).getMultiBodyList().iterator();
        while (it.hasNext()) {
            for (MultiBodyCollider multiBodyCollider : it.next().listColliders()) {
                Node remove = map.remove(multiBodyCollider);
                if (remove == null) {
                    remove = new Node(multiBodyCollider.toString());
                    attachChild(remove);
                }
                this.colliderMap.put(multiBodyCollider, remove);
            }
        }
        Iterator<Node> it2 = map.values().iterator();
        while (it2.hasNext()) {
            it2.next().removeFromParent();
        }
        BulletDebugAppState.DebugAppStateFilter filter = getConfiguration().getFilter();
        for (Map.Entry<MultiBodyCollider, Node> entry : this.colliderMap.entrySet()) {
            MultiBodyCollider key = entry.getKey();
            boolean z10 = filter == null || filter.displayObject(key);
            Node value = entry.getValue();
            Control control = value.getControl((Class<Control>) ColliderDebugControl.class);
            if (control == null && z10) {
                BulletDebugAppState.logger.log(Level.FINE, "Create new MultiBodyDebugControl");
                value.addControl(new ColliderDebugControl(this, key));
            } else if (control != null && !z10) {
                value.removeControl(control);
            }
            updateAxes(value, z10);
        }
    }

    @Override
    public void updateShapes() {
        super.updateShapes();
        updateMultiBodies();
    }
}
