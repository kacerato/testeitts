.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 8
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 12
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(null position)"

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->r:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "(null rotation)"

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "(null scale)"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
