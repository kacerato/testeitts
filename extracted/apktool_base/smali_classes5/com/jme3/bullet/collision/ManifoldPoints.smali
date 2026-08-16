.class public final Lcom/jme3/bullet/collision/ManifoldPoints;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/ManifoldPoints;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/ManifoldPoints;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createTestPoint()J
.end method

.method public static native getAppliedImpulse(J)F
.end method

.method public static native getAppliedImpulseLateral1(J)F
.end method

.method public static native getAppliedImpulseLateral2(J)F
.end method

.method public static native getCombinedFriction(J)F
.end method

.method public static native getCombinedRestitution(J)F
.end method

.method public static native getCombinedRollingFriction(J)F
.end method

.method public static native getCombinedSpinningFriction(J)F
.end method

.method public static native getContactMotion1(J)F
.end method

.method public static native getContactMotion2(J)F
.end method

.method public static native getDistance1(J)F
.end method

.method public static native getFlags(J)I
.end method

.method public static native getIndex0(J)I
.end method

.method public static native getIndex1(J)I
.end method

.method public static native getLateralFrictionDir1(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getLateralFrictionDir2(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getLifeTime(J)I
.end method

.method public static native getLocalPointA(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getLocalPointB(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getNormalWorldOnB(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getPartId0(J)I
.end method

.method public static native getPartId1(J)I
.end method

.method public static native getPositionWorldOnA(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getPositionWorldOnADp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method public static native getPositionWorldOnB(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native getPositionWorldOnBDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method public static native isContactCalcArea3Points()Z
.end method

.method public static native setAppliedImpulse(JF)V
.end method

.method public static native setAppliedImpulseLateral1(JF)V
.end method

.method public static native setAppliedImpulseLateral2(JF)V
.end method

.method public static native setCombinedFriction(JF)V
.end method

.method public static native setCombinedRestitution(JF)V
.end method

.method public static native setCombinedRollingFriction(JF)V
.end method

.method public static native setCombinedSpinningFriction(JF)V
.end method

.method public static native setContactCalcArea3Points(Z)V
.end method

.method public static native setContactMotion1(JF)V
.end method

.method public static native setContactMotion2(JF)V
.end method

.method public static native setDistance1(JF)V
.end method

.method public static native setFlags(JI)V
.end method

.method public static native setLateralFrictionDir1(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setLateralFrictionDir2(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setLocalPointA(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setLocalPointB(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setNormalWorldOnB(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setPositionWorldOnA(JLcom/jme3/math/Vector3f;)V
.end method

.method public static native setPositionWorldOnB(JLcom/jme3/math/Vector3f;)V
.end method
