.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final G:Ljava/lang/String; = "Billboard"

.field public static final H:Ljava/lang/Class;


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

.field public F:LJAVARuntime/Component;

.field private zAlign:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->H:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Billboard"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    return p1
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;-><init>()V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SLIDE_ROTATE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;)V

    const-string v2, "Z align"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Billboard"

    return-object v0
.end method

.method public iszAlign()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    return v0
.end method

.method public parallelUpdate()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->startFrame()V

    :try_start_0
    invoke-static {}, Lc8/b;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCamera()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->acquire(I)[F

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->acquire(I)[F

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    invoke-static {v1, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/a;->d([F[FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Z)[F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f3([F)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->release([F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->release([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->endFrame()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->E:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->endFrame()V

    throw v0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->F:LJAVARuntime/Component;

    return-void
.end method

.method public setzAlign(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zAlign"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->zAlign:Z

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->F:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Billboard;

    invoke-direct {v0, p0}, LJAVARuntime/Billboard;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/Billboard;->F:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
