.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static F:Ljava/lang/String; = "TimedObjectDestructor"

.field public static G:Ljava/lang/Class;


# instance fields
.field public E:F

.field public timer:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->G:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->F:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->E:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->F:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->E:F

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;)V

    const-string v3, "Timer"

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_1

    const-string v2, "timer"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTimer()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TimedObjectDestructor"

    return-object v0
.end method

.method public parallelUpdate()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->E:F

    invoke-static {}, LK8/d;->b()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->E:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->E:F

    :cond_0
    return-void
.end method

.method public setTimer(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/TimedObjectDestructor;->timer:F

    return-void
.end method
