.class public LJAVARuntime/FilesPanelFileMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation


# instance fields
.field private transient menu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "menu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput-object p1, p0, LJAVARuntime/FilesPanelFileMenu;->menu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filterFormat(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public getMenu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/FilesPanelFileMenu;->menu:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(LJAVARuntime/File;)V
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

    .line 1
    return-void
.end method

.method public onClick(LJAVARuntime/File;Landroid/view/View;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "view"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public setMenu(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "menu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/FilesPanelFileMenu;->menu:Ljava/lang/String;

    return-void
.end method
