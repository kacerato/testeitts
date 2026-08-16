.class public LJAVARuntime/ObjectFile;
.super Ljb/a;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files",
        "Object"
    }
.end annotation


# static fields
.field private static FILE_FORMAT:Ljava/lang/String; = ".go"
    .annotation runtime LH6/g;
    .end annotation
.end field


# instance fields
.field private final transient block:Ljava/lang/Object;

.field private transient gameObjectFile:Lhb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljb/a;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/ObjectFile;->block:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljb/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/ObjectFile;->block:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, LJAVARuntime/ObjectFile;->FILE_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(LJAVARuntime/ObjectFile;)V
    .locals 0

    invoke-direct {p0}, LJAVARuntime/ObjectFile;->prepare()V

    return-void
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/ObjectFile$1;

    const-class v2, LJAVARuntime/ObjectFile;

    invoke-direct {v1, v2}, LJAVARuntime/ObjectFile$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/ObjectFile$2;

    const-class v2, LJAVARuntime/ObjectFile;

    invoke-direct {v1, v2}, LJAVARuntime/ObjectFile$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method private prepare()V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    iget-object v0, p0, LJAVARuntime/ObjectFile;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhb/c;->b(Ljava/lang/String;)Lhb/a;

    move-result-object v1

    iput-object v1, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public instantiate()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    iget-object v0, p0, LJAVARuntime/ObjectFile;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhb/c;->b(Ljava/lang/String;)Lhb/a;

    move-result-object v1

    iput-object v1, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lhb/a;->h()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ObjectLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_2
    monitor-exit v0

    return-object v1

    :cond_3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-super {p0, p1}, Ljb/a;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, LJAVARuntime/ObjectFile;->block:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LJAVARuntime/ObjectFile;->gameObjectFile:Lhb/a;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
