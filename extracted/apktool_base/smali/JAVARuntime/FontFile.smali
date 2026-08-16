.class public LJAVARuntime/FontFile;
.super Ljb/a;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Fonts"
    }
.end annotation


# static fields
.field private static FILE_FORMAT:Ljava/lang/String; = ".ttf|.otf"
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljb/a;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

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

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, LJAVARuntime/FontFile;->FILE_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/FontFile$1;

    const-class v2, LJAVARuntime/FontFile;

    invoke-direct {v1, v2}, LJAVARuntime/FontFile$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/FontFile$2;

    const-class v2, LJAVARuntime/FontFile;

    invoke-direct {v1, v2}, LJAVARuntime/FontFile$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the class name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome da classe."
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
