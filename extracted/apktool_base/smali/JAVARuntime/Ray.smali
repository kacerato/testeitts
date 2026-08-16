.class public final LJAVARuntime/Ray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Laser"
    }
.end annotation


# instance fields
.field public transient ray:Laa/c;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    invoke-direct {v1}, Laa/d;-><init>()V

    invoke-direct {v0, v1}, Laa/c;-><init>(Laa/d;)V

    iput-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/RayDirection;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rayDirection",
            "distance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rayDirection",
            "distance"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Laa/c;

    iget-object p1, p1, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    invoke-direct {v0, p1, p2}, Laa/c;-><init>(Laa/d;F)V

    iput-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Vector3;F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v0, v1, p3}, Laa/c;-><init>(Laa/d;F)V

    iput-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    return-void
.end method

.method public constructor <init>(Laa/c;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Ray;->ray:Laa/c;

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia deste Ray."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iget v0, v0, Laa/c;->c:F

    return v0
.end method

.method public getPhysicsLayer()LJAVARuntime/PhysicsLayer;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the PhysicsLayer of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o PhysicsLayer deste Ray."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iget-object v0, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->u()LJAVARuntime/PhysicsLayer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRayDirection()LJAVARuntime/RayDirection;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the RayDirection of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a RayDirection deste Ray."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iget-object v0, v0, Laa/c;->b:Laa/d;

    invoke-virtual {v0}, Laa/d;->j()LJAVARuntime/RayDirection;

    move-result-object v0

    return-object v0
.end method

.method public setDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the distance of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia deste Ray."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "distance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iput p1, v0, Laa/c;->c:F

    return-void
.end method

.method public setPhysicsLayer(LJAVARuntime/PhysicsLayer;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the PhysicsLayer of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o PhysicsLayer deste Ray."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iget-object p1, p1, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Ray;->ray:Laa/c;

    const/4 v0, 0x0

    iput-object v0, p1, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    :goto_0
    return-void
.end method

.method public setRayDirection(LJAVARuntime/RayDirection;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the RayDirection of this Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a RayDirection deste Ray."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rayDirection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rayDirection"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Ray;->ray:Laa/c;

    iget-object p1, p1, LJAVARuntime/RayDirection;->rayDirection:Laa/d;

    iput-object p1, v0, Laa/c;->b:Laa/d;

    return-void
.end method
