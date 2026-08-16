.class public LJAVARuntime/ObjectsPanelMenu;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-object p1, p0, LJAVARuntime/ObjectsPanelMenu;->menu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMenu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ObjectsPanelMenu;->menu:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(LJAVARuntime/SpatialObject;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

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

    iput-object p1, p0, LJAVARuntime/ObjectsPanelMenu;->menu:Ljava/lang/String;

    return-void
.end method
