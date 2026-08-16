.class Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

.field private objectUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ou:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transform:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    .line 4
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "transform"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 7
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    .line 8
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    :cond_0
    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationPlayerObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-static {p1, v0}, Lgb/e;->m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->objectUID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->objectUID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->transform:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->transform:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->h()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->t:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(null transform)"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
