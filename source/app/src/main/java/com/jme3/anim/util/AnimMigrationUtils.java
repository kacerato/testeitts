package com.jme3.anim.util;

import com.jme3.anim.AnimClip;
import com.jme3.anim.AnimComposer;
import com.jme3.anim.AnimTrack;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.anim.TransformTrack;
import com.jme3.animation.AnimControl;
import com.jme3.animation.Animation;
import com.jme3.animation.Bone;
import com.jme3.animation.BoneTrack;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.animation.Track;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.SceneGraphVisitor;
import com.jme3.scene.Spatial;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class AnimMigrationUtils {
    private static final AnimControlVisitor animControlVisitor;
    private static final SkeletonControlVisitor skeletonControlVisitor;

    public static class AnimControlVisitor implements SceneGraphVisitor {
        Map<Skeleton, Armature> skeletonArmatureMap;

        private AnimControlVisitor() {
        }

        public void setMappings(Map<Skeleton, Armature> map) {
            this.skeletonArmatureMap = map;
        }

        @Override
        public void visit(Spatial spatial) {
            Skeleton skeleton;
            AnimControl animControl = (AnimControl) spatial.getControl(AnimControl.class);
            if (animControl != null) {
                AnimComposer animComposer = new AnimComposer();
                Skeleton skeleton2 = animControl.getSkeleton();
                if (skeleton2 == null) {
                    return;
                }
                int boneCount = skeleton2.getBoneCount();
                Joint[] jointArr = new Joint[boneCount];
                int i10 = 0;
                for (int i11 = 0; i11 < skeleton2.getBoneCount(); i11++) {
                    Bone bone = skeleton2.getBone(i11);
                    Joint joint = jointArr[i11];
                    if (joint == null) {
                        joint = AnimMigrationUtils.fromBone(bone);
                        jointArr[i11] = joint;
                    }
                    Iterator<Bone> it = bone.getChildren().iterator();
                    while (it.hasNext()) {
                        Bone next = it.next();
                        int boneIndex = skeleton2.getBoneIndex(next);
                        Joint joint2 = jointArr[boneIndex];
                        if (joint2 == null) {
                            joint2 = AnimMigrationUtils.fromBone(next);
                        }
                        joint.addChild(joint2);
                        jointArr[boneIndex] = joint2;
                    }
                }
                Armature armature = new Armature(jointArr);
                armature.saveBindPose();
                armature.saveInitialPose();
                this.skeletonArmatureMap.put(skeleton2, armature);
                ArrayList arrayList = new ArrayList();
                for (String str : animControl.getAnimationNames()) {
                    arrayList.clear();
                    Animation anim = animControl.getAnim(str);
                    AnimClip animClip = new AnimClip(str);
                    Joint[] jointArr2 = new Joint[boneCount];
                    System.arraycopy(jointArr, i10, jointArr2, i10, boneCount);
                    Track[] tracks = anim.getTracks();
                    int length = tracks.length;
                    int i12 = i10;
                    while (i12 < length) {
                        Track track = tracks[i12];
                        if (track instanceof BoneTrack) {
                            BoneTrack boneTrack = (BoneTrack) track;
                            int targetBoneIndex = boneTrack.getTargetBoneIndex();
                            skeleton = skeleton2;
                            arrayList.add(AnimMigrationUtils.fromBoneTrack(boneTrack, skeleton2.getBone(targetBoneIndex), jointArr[targetBoneIndex]));
                            jointArr2[targetBoneIndex] = null;
                        } else {
                            skeleton = skeleton2;
                        }
                        i12++;
                        skeleton2 = skeleton;
                    }
                    Skeleton skeleton3 = skeleton2;
                    for (int i13 = 0; i13 < boneCount; i13++) {
                        AnimMigrationUtils.padJointTracks(arrayList, jointArr2[i13]);
                    }
                    animClip.setTracks((AnimTrack[]) arrayList.toArray(new TransformTrack[arrayList.size()]));
                    animComposer.addAnimClip(animClip);
                    skeleton2 = skeleton3;
                    i10 = 0;
                }
                spatial.removeControl(animControl);
                spatial.addControl(animComposer);
            }
        }
    }

    public static class SkeletonControlVisitor implements SceneGraphVisitor {
        Map<Skeleton, Armature> skeletonArmatureMap;

        private SkeletonControlVisitor() {
        }

        public void setMappings(Map<Skeleton, Armature> map) {
            this.skeletonArmatureMap = map;
        }

        @Override
        public void visit(Spatial spatial) {
            SkeletonControl skeletonControl = (SkeletonControl) spatial.getControl(SkeletonControl.class);
            if (skeletonControl != null) {
                SkinningControl skinningControl = new SkinningControl(this.skeletonArmatureMap.get(skeletonControl.getSkeleton()));
                HashMap hashMap = new HashMap();
                for (int i10 = 0; i10 < skeletonControl.getSkeleton().getBoneCount(); i10++) {
                    Bone bone = skeletonControl.getSkeleton().getBone(i10);
                    Node attachmentsNode = skeletonControl.getAttachmentsNode(bone.getName());
                    attachmentsNode.removeFromParent();
                    if (!attachmentsNode.getChildren().isEmpty()) {
                        hashMap.put(bone.getName(), attachmentsNode.getChildren());
                    }
                }
                spatial.removeControl(skeletonControl);
                spatial.addControl(skinningControl);
                for (K k10 : hashMap.o()) {
                    Iterator it = ((List) hashMap.get(k10)).iterator();
                    while (it.hasNext()) {
                        skinningControl.getAttachmentsNode(k10).attachChild((Spatial) it.next());
                    }
                }
            }
        }
    }

    static {
        animControlVisitor = new AnimControlVisitor();
        skeletonControlVisitor = new SkeletonControlVisitor();
    }

    private AnimMigrationUtils() {
    }

    public static Joint fromBone(Bone bone) {
        Joint joint = new Joint(bone.getName());
        joint.setLocalTranslation(bone.getBindPosition());
        joint.setLocalRotation(bone.getBindRotation());
        joint.setLocalScale(bone.getBindScale());
        return joint;
    }

    public static TransformTrack fromBoneTrack(BoneTrack boneTrack, Bone bone, Joint joint) {
        int length = boneTrack.getTimes().length;
        float[] fArr = new float[length];
        System.arraycopy(boneTrack.getTimes(), 0, fArr, 0, length);
        Vector3f[] vector3fArr = new Vector3f[length];
        if (boneTrack.getTranslations() != null) {
            for (int i10 = 0; i10 < boneTrack.getTranslations().length; i10++) {
                Vector3f vector3f = boneTrack.getTranslations()[i10];
                Vector3f vector3f2 = new Vector3f();
                vector3f2.set(bone.getBindPosition()).addLocal(vector3f);
                vector3fArr[i10] = vector3f2;
            }
        }
        Quaternion[] quaternionArr = new Quaternion[length];
        if (boneTrack.getRotations() != null) {
            for (int i11 = 0; i11 < boneTrack.getRotations().length; i11++) {
                Quaternion quaternion = boneTrack.getRotations()[i11];
                Quaternion quaternion2 = new Quaternion();
                quaternion2.set(bone.getBindRotation()).multLocal(quaternion);
                quaternionArr[i11] = quaternion2;
            }
        }
        Vector3f[] vector3fArr2 = new Vector3f[length];
        if (boneTrack.getScales() != null) {
            for (int i12 = 0; i12 < boneTrack.getScales().length; i12++) {
                Vector3f vector3f3 = boneTrack.getScales()[i12];
                Vector3f vector3f4 = new Vector3f();
                vector3f4.set(bone.getBindScale()).multLocal(vector3f3);
                vector3fArr2[i12] = vector3f4;
            }
        }
        return new TransformTrack(joint, fArr, vector3fArr, quaternionArr, vector3fArr2);
    }

    public static Spatial migrate(Spatial spatial) {
        HashMap hashMap = new HashMap();
        AnimControlVisitor animControlVisitor2 = animControlVisitor;
        animControlVisitor2.setMappings(hashMap);
        spatial.depthFirstTraversal(animControlVisitor2);
        SkeletonControlVisitor skeletonControlVisitor2 = skeletonControlVisitor;
        skeletonControlVisitor2.setMappings(hashMap);
        spatial.depthFirstTraversal(skeletonControlVisitor2);
        return spatial;
    }

    public static void padJointTracks(List<TransformTrack> list, Joint joint) {
        if (joint != null) {
            list.add(new TransformTrack(joint, new float[]{0.0f}, new Vector3f[]{joint.getLocalTranslation()}, new Quaternion[]{joint.getLocalRotation()}, new Vector3f[]{joint.getLocalScale()}));
        }
    }
}
