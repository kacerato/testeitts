.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final P:Ljava/lang/String; = "SkinJoint"

.field public static final Q:Ljava/lang/Class;


# instance fields
.field public final E:[F

.field public final F:[F

.field public final G:[F

.field public H:Lp9/b;

.field public I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

.field public J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:[F

.field public final N:Lib/h;

.field public O:LJAVARuntime/Component;

.field public index:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public inverseMatrix:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private localOriginalMatrix:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->Q:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "SkinJoint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->E:[F

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->F:[F

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->G:[F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->K:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->M:[F

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "localOriginalMatrix"
        }
    .end annotation

    .line 20
    const-string v0, "SkinJoint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 21
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->E:[F

    .line 22
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->F:[F

    .line 23
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->G:[F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->K:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->M:[F

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    .line 27
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    .line 28
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    return-void
.end method

.method public constructor <init>(I[F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "localOriginalMatrix",
            "inverseMatrix"
        }
    .end annotation

    .line 8
    const-string v0, "SkinJoint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 9
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->E:[F

    .line 10
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->F:[F

    .line 11
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->G:[F

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->K:Z

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->M:[F

    .line 14
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    .line 15
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    .line 16
    new-array p1, v0, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    .line 17
    array-length v2, p2

    invoke-static {p2, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    new-array p1, v0, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->inverseMatrix:[F

    .line 19
    array-length p2, p3

    invoke-static {p3, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    return-object p0
.end method

.method private calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "c"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private clearSkinningOwners(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyStructureChange"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;->notifyBoneStructureChanged()V

    :cond_1
    return-void
.end method

.method private drawCG(LX8/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gizmo",
            "copyFrom",
            "scale"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, LX8/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 2
    invoke-virtual {p1, p3}, LX8/a;->i(F)V

    .line 3
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, LX8/a;->h(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, LX8/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method private drawCG(LX8/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gizmo",
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 5
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    .line 6
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    .line 7
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    .line 8
    invoke-virtual {p1, v0, v1, p2}, LX8/a;->f(FFF)V

    .line 9
    invoke-virtual {p1, p4}, LX8/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 10
    invoke-virtual {p1, p3}, LX8/a;->h(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 11
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, LX8/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method private isSelectedAParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private refreshSkinningOwners(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyStructureChange"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinnedModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Armature:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    instance-of v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    :cond_3
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->N:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_4
    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;->notifyBoneStructureChanged()V

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;->notifyBoneStructureChanged()V

    :cond_6
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 4

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->inverseMatrix:[F

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;-><init>(I[F[F)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createGizmo()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    if-nez v0, :cond_0

    new-instance v0, Lp9/b;

    invoke-direct {v0}, Lp9/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    new-instance v1, LX8/a;

    invoke-direct {v1}, LX8/a;-><init>()V

    iput-object v1, v0, Lp9/b;->a:LX8/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    new-instance v1, LX8/a;

    invoke-direct {v1}, LX8/a;-><init>()V

    iput-object v1, v0, Lp9/b;->b:LX8/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    new-instance v1, LX8/a;

    invoke-direct {v1}, LX8/a;-><init>()V

    iput-object v1, v0, Lp9/b;->c:LX8/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v0, v0, Lp9/b;->a:LX8/a;

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v2, v1, LC8/a;->a:LD8/a;

    iget-object v2, v2, LD8/a;->q:LD8/b;

    const-string v3, "@BONEPIVOT"

    invoke-virtual {v0, v3, v2}, LX8/a;->a(Ljava/lang/String;LD8/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v0, v0, Lp9/b;->b:LX8/a;

    iget-object v2, v1, LC8/a;->a:LD8/a;

    iget-object v2, v2, LD8/a;->q:LD8/b;

    const-string v3, "@BONETARGET"

    invoke-virtual {v0, v3, v2}, LX8/a;->a(Ljava/lang/String;LD8/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v0, v0, Lp9/b;->c:LX8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    iget-object v1, v1, LD8/a;->r:LD8/b;

    const-string v2, "@BONEMODEL"

    invoke-virtual {v0, v2, v1}, LX8/a;->a(Ljava/lang/String;LD8/b;)V

    return-void
.end method

.method public drawGizmo()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->isSelectedAParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->showSkinBonesGizmo:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->K:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->createGizmo()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v3, v3, Lp9/b;->a:LX8/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const v5, 0x3ca3d70a    # 0.02f

    invoke-direct {p0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->drawCG(LX8/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v3, v3, Lp9/b;->b:LX8/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->drawCG(LX8/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    iget-object v3, v3, Lp9/b;->c:LX8/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->S(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v2, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->drawCG(LX8/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_3
    return-void
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SKIN_JOINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009f

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INDEX:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->NoteText:LC5/b$a;

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SkinJoint"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->refreshSkinningOwners(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->clearSkinningOwners(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->H:Lp9/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp9/b;->a()V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onParentChanged()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->refreshSkinningOwners(Z)V

    return-void
.end method

.method public restoreOriginalTransform()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->set([F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->O:LJAVARuntime/Component;

    return-void
.end method

.method public storeOriginalTransform()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->localOriginalMatrix:[F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W0([F)[F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->O:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SkinJoint;

    invoke-direct {v0, p0}, LJAVARuntime/SkinJoint;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->O:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;->drawGizmo()V

    return-void
.end method
