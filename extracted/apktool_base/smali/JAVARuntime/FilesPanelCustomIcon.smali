.class public LJAVARuntime/FilesPanelCustomIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public applyIcon(LJAVARuntime/File;Landroid/widget/ImageView;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file",
            "imageViw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "imageView"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getIconForFile(LJAVARuntime/File;)LJAVARuntime/File;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public supportFile(LJAVARuntime/File;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

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
