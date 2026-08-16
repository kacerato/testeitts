.class public LJAVARuntime/Matcap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private textureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, LJAVARuntime/Matcap;->file:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/Matcap;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LJAVARuntime/Matcap;->file:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(LJAVARuntime/Matcap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Matcap;->file:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(LJAVARuntime/Matcap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Matcap;->textureFile:Ljava/lang/String;

    return-object p1
.end method

.method public static fromJson(Ljava/lang/String;)LJAVARuntime/Matcap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, LJAVARuntime/Matcap;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Matcap;

    return-object p0
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Matcap$1;

    const-class v2, LJAVARuntime/Matcap;

    invoke-direct {v1, v2}, LJAVARuntime/Matcap$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Matcap$2;

    const-class v2, LJAVARuntime/Matcap;

    invoke-direct {v1, v2}, LJAVARuntime/Matcap$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getTexture()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap;->textureFile:Ljava/lang/String;

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap;->textureFile:Ljava/lang/String;

    return-object v0
.end method

.method public setTextureFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap;->textureFile:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
