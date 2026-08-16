package com.jme3.anim;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.BitSet;
import java.util.Iterator;

public class ArmatureMask implements AnimationMask, Savable {
    private BitSet affectedJoints = new BitSet();

    public ArmatureMask() {
    }

    public static ArmatureMask createMask(Armature armature, String str) {
        ArmatureMask armatureMask = new ArmatureMask();
        armatureMask.addFromJoint(armature, str);
        return armatureMask;
    }

    private Joint findJoint(Armature armature, String str) {
        Joint joint = armature.getJoint(str);
        if (joint != null) {
            return joint;
        }
        throw new IllegalArgumentException("Cannot find joint " + str);
    }

    private BitSet getAffectedJoints() {
        return this.affectedJoints;
    }

    private void recurseAddJoint(Joint joint) {
        this.affectedJoints.set(joint.getId());
        Iterator<Joint> it = joint.getChildren().iterator();
        while (it.hasNext()) {
            recurseAddJoint(it.next());
        }
    }

    public ArmatureMask addAncestors(Joint joint) {
        while (joint != null) {
            this.affectedJoints.set(joint.getId());
            joint = joint.getParent();
        }
        return this;
    }

    public void addBones(Armature armature, String... strArr) {
        for (String str : strArr) {
            this.affectedJoints.set(findJoint(armature, str).getId());
        }
    }

    public void addFromJoint(Armature armature, String str) {
        recurseAddJoint(findJoint(armature, str));
    }

    @Override
    public boolean contains(Object obj) {
        return this.affectedJoints.get(((Joint) obj).getId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        this.affectedJoints = jmeImporter.getCapsule(this).readBitSet("affectedJoints", null);
    }

    public ArmatureMask remove(ArmatureMask armatureMask) {
        this.affectedJoints.andNot(armatureMask.getAffectedJoints());
        return this;
    }

    public ArmatureMask removeAncestors(Joint joint) {
        while (joint != null) {
            this.affectedJoints.clear(joint.getId());
            joint = joint.getParent();
        }
        return this;
    }

    public ArmatureMask removeJoints(Armature armature, String... strArr) {
        for (String str : strArr) {
            this.affectedJoints.clear(findJoint(armature, str).getId());
        }
        return this;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.affectedJoints, "affectedJoints", (BitSet) null);
    }

    public ArmatureMask(Armature armature) {
        this.affectedJoints.set(0, armature.getJointCount());
    }

    public static ArmatureMask createMask(Armature armature, String... strArr) {
        ArmatureMask armatureMask = new ArmatureMask();
        armatureMask.addBones(armature, strArr);
        return armatureMask;
    }
}
