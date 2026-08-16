.class public Lq9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sideMultiplayer",
            "parent",
            "prefix"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Arm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x42fe4799    # -0.03167f

    const v6, 0x3cb367a1    # 0.0219f

    const v7, 0x3e895183    # 0.2682f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Forearm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, 0x3ca8c155    # 0.0206f

    const v6, 0x3cadc098    # 0.02121f

    const v7, 0x3e9765fe    # 0.2957f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Wrist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, 0x3b4b295f    # 0.0031f

    const/4 v6, 0x0

    const v7, 0x3eb8c2a4    # 0.36086f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sideMultiplayer",
            "parent",
            "prefix"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Thigh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x424c2f83    # -0.0878f

    const v6, -0x43b67a10    # -0.0123f

    const v7, 0x3dd8adac    # 0.1058f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Knee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x4162b6ae    # -0.3072f

    const v6, 0x3c56a162    # 0.0131f

    const v7, 0x3c06594b    # 0.0082f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ankle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x40c50b0f    # -0.7303f

    const v6, -0x42532618    # -0.0844f

    const v7, 0x3cc710cb    # 0.0243f

    invoke-direct {v4, v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 12

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v4, "HumanSkeleton"

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v4, 0x3eb0f27c    # 0.3456f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v6, "Thorax"

    invoke-direct {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v6, -0x417c01a3    # -0.2578f

    invoke-direct {v4, v5, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v7, "Abdomen"

    invoke-direct {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7, v3, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    const-string v6, "Left "

    invoke-static {v3, v2, v6}, Lq9/a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v3, v7, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const-string v8, "Right "

    invoke-static {v3, v2, v8}, Lq9/a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v10, 0x3da339c1    # 0.0797f

    invoke-direct {v9, v5, v10, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v11, "UpperThorax"

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11, v3, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v10, 0x3e11b717    # 0.1423f

    invoke-direct {v9, v5, v10, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v11, "Neck"

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11, v3, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v11, 0x3d6a4a8c    # 0.0572f

    invoke-direct {v10, v5, v11, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    const-string v11, "Head"

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11, v9, v5, v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-static {v1, v2, v6}, Lq9/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v7, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-static {v1, v2, v8}, Lq9/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    return-object v0
.end method
