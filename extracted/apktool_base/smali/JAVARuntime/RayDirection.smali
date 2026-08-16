.class public final LJAVARuntime/RayDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Laser"
    }
.end annotation


# instance fields
.field public transient rayDirection:Laa/d;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "origin",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    return-void
.end method

.method public constructor <init>(Laa/d;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rayDirection"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    return-void
.end method


# virtual methods
.method public getDirection()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the direction of this RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dire\u00e7\u00e3o deste RayDirection."
    .end annotation

    iget-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    iget-object v0, v0, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the origin position of this RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o de origem deste RayDirection."
    .end annotation

    iget-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    iget-object v0, v0, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setDirection(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the direction of this RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dire\u00e7\u00e3o deste RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, v0, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setOrigin(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the origin position of this RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a posi\u00e7\u00e3o de origem deste RayDirection."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, v0, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
