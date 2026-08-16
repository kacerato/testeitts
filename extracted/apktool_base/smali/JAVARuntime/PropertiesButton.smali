.class public LJAVARuntime/PropertiesButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Inspector"
    }
.end annotation


# instance fields
.field private transient listener:LJAVARuntime/PropertiesButtonListener;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field public transient runOnEngineThread:Z
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJAVARuntime/PropertiesButtonListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LJAVARuntime/PropertiesButton;->runOnEngineThread:Z

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, LJAVARuntime/PropertiesButton;->listener:LJAVARuntime/PropertiesButtonListener;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .annotation runtime Lo8/c;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LJAVARuntime/PropertiesButton;->runOnEngineThread:Z

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/PropertiesButton;)LJAVARuntime/PropertiesButtonListener;
    .locals 0

    iget-object p0, p0, LJAVARuntime/PropertiesButton;->listener:LJAVARuntime/PropertiesButtonListener;

    return-object p0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/PropertiesButton$1;

    const-class v2, LJAVARuntime/PropertiesButton;

    invoke-direct {v1, v2}, LJAVARuntime/PropertiesButton$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method
