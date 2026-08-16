.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "BakedArmature"

.field public static final J:Ljava/lang/Class;


# instance fields
.field public transient E:Z

.field public transient F:J

.field public transient G:I

.field public H:LJAVARuntime/Component;

.field private final animationsList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private armatureID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private boneList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;"
        }
    .end annotation
.end field

.field public startAnimation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BakedArmature"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->boneList:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->G:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "armatureID"
        }
    .end annotation

    .line 6
    const-string v0, "BakedArmature"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->boneList:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->G:I

    .line 11
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;LJAVARuntime/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->runOnEngineForListMutation(LJAVARuntime/Runnable;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->setStartAnimationFromEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V

    return-void
.end method

.method private applyStartAnimationIfNeeded()V
    .locals 2

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->E:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getStartAnimationEntry()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    :cond_1
    return-void
.end method

.method private buildPoseID(II)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animationIndex",
            "frame"
        }
    .end annotation

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private createStartAnimationDropdown()LC5/b;
    .locals 7

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v1, "None"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getAnimationDisplayName(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$e;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getStartAnimationDisplayName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v5, "Start animation"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method

.method private getAnimationDisplayName(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "Empty"

    return-object p1
.end method

.method private getStartAnimationDisplayName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getStartAnimationEntry()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "None"

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getAnimationDisplayName(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartAnimationEntry()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private runOnEngineForListMutation(LJAVARuntime/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;LJAVARuntime/Runnable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setStartAnimationFromEntry(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    return-void
.end method

.method private updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;->b(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->h(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load animation file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;->a(Ljava/lang/String;II)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b:Ljava/lang/String;

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updatePoseOf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    iget-wide v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    invoke-virtual {v2, v3, v4, v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->onPoseChanged(IJLcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updatePoseOf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateSelectedAnimationFrame()V
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->G:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->h()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->getFps()I

    move-result v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x1e

    :goto_1
    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    invoke-static {}, LK8/d;->b()F

    move-result v5

    int-to-float v2, v2

    mul-float/2addr v5, v2

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    int-to-float v2, v3

    cmpl-float v3, v4, v2

    const/4 v4, 0x0

    if-lez v3, :cond_4

    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    if-eqz v3, :cond_3

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    goto :goto_2

    :cond_3
    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :cond_4
    :goto_2
    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    if-eqz v3, :cond_5

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    goto :goto_3

    :cond_5
    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :cond_6
    :goto_3
    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    float-to-int v1, v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->G:I

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->p:I

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->buildPoseID(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    return-void
.end method


# virtual methods
.method public addEntryInternal(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-static {}, LK8/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 4

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->boneList:Ljava/util/List;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->boneList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public findAnimation(I)Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    .line 3
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".anim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAnimationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    return-object v0
.end method

.method public getArmatureID()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    return v0
.end method

.method public getBoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->boneList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getSelectedEntry()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BakedArmature"

    return-object v0
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
    .locals 6
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->createStartAnimationDropdown()LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_ANIMATION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(LD5/a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ANIMATION_LIST:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getAnimationDisplayName(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;

    invoke-direct {v5, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V

    invoke-static {v3, v4, v5}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getArmatureID()I

    move-result v3

    invoke-static {v3}, LS8/e;->j(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " baked poses"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public getPoseFrame()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->G:I

    return v0
.end method

.method public getPoseID()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    return-wide v0
.end method

.method public getSelectedEntry()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BakedArmature"

    return-object v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$f;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;LLb/a;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V

    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-static {p0}, LS8/e;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->applyStartAnimationIfNeeded()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-static {p0}, LS8/e;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onGameStateChanged(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "running",
            "paused"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onGameStateChanged(ZZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->applyStartAnimationIfNeeded()V

    return-void
.end method

.method public play()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->play()V

    :cond_0
    return-void
.end method

.method public playInLoop()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    :cond_0
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateSelectedAnimationFrame()V

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->F:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updatePoseOf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BakedArmature: REPLACING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->g(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->h(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->f(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeEntryInternal(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-static {}, LK8/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->animationsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimationEntry;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->startAnimation:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->updateAnimations(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$g;)V

    :cond_2
    return-void
.end method

.method public setArmatureID(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "armatureID"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LS8/e;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LS8/e;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    :cond_1
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->armatureID:I

    if-eqz v0, :cond_2

    invoke-static {p0}, LS8/e;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    :cond_2
    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :cond_0
    return-void
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->H:LJAVARuntime/Component;

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->getCurrentAnimation()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->stop()V

    :cond_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->H:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/BakedArmature;

    invoke-direct {v0, p0}, LJAVARuntime/BakedArmature;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->H:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
