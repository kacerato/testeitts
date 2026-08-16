.class public LJAVARuntime/ScriptingExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getScriptingInterface()LF6/d;
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public openScript(LJAVARuntime/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "script"
        }
    .end annotation

    return-void
.end method

.method public replaceScript(LJAVARuntime/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newScript"
        }
    .end annotation

    return-void
.end method

.method public saveScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportFile(LJAVARuntime/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public unload()V
    .locals 0

    return-void
.end method
