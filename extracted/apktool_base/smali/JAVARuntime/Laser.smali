.class public final LJAVARuntime/Laser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Laser"
    }
.end annotation


# instance fields
.field public transient raycast:Laa/e;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient showGizmo:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LJAVARuntime/Laser;->showGizmo:Z

    .line 8
    new-instance v0, Laa/e;

    invoke-direct {v0}, Laa/e;-><init>()V

    iput-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Laa/e;->n(Z)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, LJAVARuntime/Laser;->showGizmo:Z

    .line 13
    new-instance v0, Laa/e;

    invoke-direct {v0}, Laa/e;-><init>()V

    iput-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Laa/e;->n(Z)V

    .line 15
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Laa/e;->p(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public constructor <init>(Laa/e;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "raycast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LJAVARuntime/Laser;->showGizmo:Z

    .line 4
    iput-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the color shown in the editor when the Laser hits something."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a cor exibida no editor quando o Laser acerta algo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0}, Laa/e;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public getNoHitColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the color shown in the editor when the Laser hits nothing."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a cor exibida no editor quando o Laser n\u00e3o acerta nada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0}, Laa/e;->k()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public isCalculateFaceUV()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the laser should try to calculate the UV of the face at the hit point."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o laser deve tentar calcular o UV da face no ponto de impacto."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0}, Laa/e;->l()Z

    move-result v0

    return v0
.end method

.method public isDetermineHitCollider()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the laser should try to find out which child collider was hit."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o laser deve tentar descobrir qual collider filho foi atingido."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0}, Laa/e;->m()Z

    move-result v0

    return v0
.end method

.method public isShowGizmo()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the gizmo (laser visualization) is shown in the editor."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o gizmo (visualiza\u00e7\u00e3o do laser) est\u00e1 sendo exibido no editor."
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Laser;->showGizmo:Z

    return v0
.end method

.method public setCalculateFaceUV(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines whether the laser should try to calculate the UV of the face at the hit point, it is a heavy operation that should be turned off when not needed; True by default; When false: hit.getUVCoord() return null."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o laser deve tentar calcular o UV da face no hit point, \u00e9 uma opera\u00e7\u00e3o pesada que deve ser desligada quando n\u00e3o precisar; True por padr\u00e3o; Quando false: hit.getUVCoord() retorna null."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0, p1}, Laa/e;->n(Z)V

    return-void
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the color shown in the editor when the Laser hits something."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a cor exibida no editor quando o Laser acerta algo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Laa/e;->p(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDetermineHitCollider(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines whether the laser should try to find out which child collider of the object with physics was the laser\'s hit collider, it is a heavy operation that should be turned off when not needed; True by default; When false: hit.getColliderObject(), hit.getCollider() return null"
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o laser deve tentar descobrir qual collider filho do objeto com a fisica foi o colisor de batida do laser, \u00e9 uma opera\u00e7\u00e3o pesada que deve ser desligada quando n\u00e3o precisar; True por padr\u00e3o; Quando false: hit.getColliderObject(), hit.getCollider() retornam null."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    invoke-virtual {v0, p1}, Laa/e;->o(Z)V

    return-void
.end method

.method public setNoHitColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the color shown in the editor when the Laser hits nothing."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a cor exibida no editor quando o Laser n\u00e3o acerta nada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Laa/e;->q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowGizmo(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the gizmo (laser visualization) is shown in the editor."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o gizmo (visualiza\u00e7\u00e3o do laser) ser\u00e1 exibido no editor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "showGizmo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showGizmo"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    return-void
.end method

.method public trace(LJAVARuntime/Ray;)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser using the specified Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser usando o Ray especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Ray;->ray:Laa/c;

    iget-boolean v1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, LJAVARuntime/LaserHit;

    invoke-direct {v0, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public trace(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/LaserHit;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 9
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public trace(LJAVARuntime/Vector3;LJAVARuntime/Vector3;F)LJAVARuntime/LaserHit;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction, with a defined maximum distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, com uma dist\u00e2ncia m\u00e1xima definida."
    .end annotation

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v1, v2, p3}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 12
    invoke-virtual {v0, v1, p1}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 14
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public trace(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FLJAVARuntime/PhysicsLayer;)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position, direction, and distance with the indicated PhysicsLayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o, dire\u00e7\u00e3o e dist\u00e2ncia m\u00e1xima especificada no PhysicsLayer indicado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 15
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 16
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v0, v1, p3}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p4, :cond_0

    .line 17
    iget-object p1, p4, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 18
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 20
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public trace(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/PhysicsLayer;)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction, in the indicated PhysicsLayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, no PhysicsLayer indicado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "layer"
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
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 21
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 22
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p3, :cond_0

    .line 23
    iget-object p1, p3, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 24
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Laa/a;->E()LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceAll(LJAVARuntime/Ray;)Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser using the specified Ray and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser usando o Ray especificado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Ray;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Ray;->ray:Laa/c;

    iget-boolean v1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Laa/e;->s(Laa/c;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laa/a;

    new-instance v2, LJAVARuntime/LaserHit;

    invoke-direct {v2, v1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 9
    invoke-virtual {v0, v1, p1}, Laa/e;->s(Laa/c;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/a;

    new-instance v1, LJAVARuntime/LaserHit;

    invoke-direct {v1, v0}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 13
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;F)Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction, with a defined maximum distance and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, com uma dist\u00e2ncia m\u00e1xima definida e retorna todas as colis\u00f5es."
    .end annotation

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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 14
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 15
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v1, v2, p3}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 16
    invoke-virtual {v0, v1, p1}, Laa/e;->s(Laa/c;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance v0, LJAVARuntime/LaserHit;

    invoke-direct {v0, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 20
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FLJAVARuntime/PhysicsLayer;)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position, direction, and distance with the indicated PhysicsLayer and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o, dire\u00e7\u00e3o e dist\u00e2ncia m\u00e1xima especificada no PhysicsLayer indicado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "F",
            "LJAVARuntime/PhysicsLayer;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 21
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 22
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v0, v1, p3}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p4, :cond_0

    .line 23
    iget-object p1, p4, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 24
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Laa/e;->s(Laa/c;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance p4, LJAVARuntime/LaserHit;

    invoke-direct {p4, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 28
    :cond_2
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/PhysicsLayer;)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a laser from a specified position and direction, in the indicated PhysicsLayer and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, no PhysicsLayer indicado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "layer"
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
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/PhysicsLayer;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 29
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 30
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p3, :cond_0

    .line 31
    iget-object p1, p3, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 32
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Laa/e;->s(Laa/c;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance v0, LJAVARuntime/LaserHit;

    invoke-direct {v0, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 36
    :cond_2
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphere(LJAVARuntime/Ray;F)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser using the specified Ray."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser usando o Ray especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Ray;->ray:Laa/c;

    iget-boolean v1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Laa/e;->E(Laa/c;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 5
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;F)LJAVARuntime/LaserHit;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "radius"
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
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {v0, v1, p3, p1}, Laa/e;->E(Laa/c;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 10
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FF)LJAVARuntime/LaserHit;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction, with a defined maximum distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, com uma dist\u00e2ncia m\u00e1xima definida."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 11
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 12
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v1, v2, p3}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 13
    invoke-virtual {v0, v1, p4, p1}, Laa/e;->E(Laa/c;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 15
    :cond_0
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FLJAVARuntime/PhysicsLayer;F)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position, direction, and distance with the indicated PhysicsLayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o, dire\u00e7\u00e3o e dist\u00e2ncia m\u00e1xima especificada no PhysicsLayer indicado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 17
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v0, v1, p3}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p4, :cond_0

    .line 18
    iget-object p1, p4, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 19
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    .line 20
    invoke-virtual {p1, v0, p5, p2}, Laa/e;->E(Laa/c;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    new-instance p2, LJAVARuntime/LaserHit;

    invoke-direct {p2, p1}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    return-object p2

    .line 22
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/PhysicsLayer;F)LJAVARuntime/LaserHit;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction, in the indicated PhysicsLayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, no PhysicsLayer indicado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 23
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 24
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p3, :cond_0

    .line 25
    iget-object p1, p3, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 26
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    .line 27
    invoke-virtual {p1, v0, p4, p2}, Laa/e;->E(Laa/c;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Laa/a;->E()LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphereAll(LJAVARuntime/Ray;F)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser using the specified Ray and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser usando o Ray especificado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Ray;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-object p1, p1, LJAVARuntime/Ray;->ray:Laa/c;

    iget-boolean v1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Laa/e;->w(Laa/c;FZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/a;

    new-instance v1, LJAVARuntime/LaserHit;

    invoke-direct {v1, v0}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 7
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphereAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;F)Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "radius"
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
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 8
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 9
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 10
    invoke-virtual {v0, v1, p3, p1}, Laa/e;->w(Laa/c;FZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance v0, LJAVARuntime/LaserHit;

    invoke-direct {v0, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 14
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphereAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FF)Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction, with a defined maximum distance and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, com uma dist\u00e2ncia m\u00e1xima definida e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "FF)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 15
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 16
    iget-object v0, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    new-instance v1, Laa/c;

    new-instance v2, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v1, v2, p3}, Laa/c;-><init>(Laa/d;F)V

    iget-boolean p1, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p1, p1, 0x1

    .line 17
    invoke-virtual {v0, v1, p4, p1}, Laa/e;->w(Laa/c;FZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance p4, LJAVARuntime/LaserHit;

    invoke-direct {p4, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 21
    :cond_1
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphereAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;FLJAVARuntime/PhysicsLayer;F)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position, direction, and distance with the indicated PhysicsLayer and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o, dire\u00e7\u00e3o e dist\u00e2ncia m\u00e1xima especificada no PhysicsLayer indicado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "distance",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "distance",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "F",
            "LJAVARuntime/PhysicsLayer;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 22
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 23
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v0, v1, p3}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p4, :cond_0

    .line 24
    iget-object p1, p4, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 25
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    .line 26
    invoke-virtual {p1, v0, p5, p2}, Laa/e;->w(Laa/c;FZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance p4, LJAVARuntime/LaserHit;

    invoke-direct {p4, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 30
    :cond_2
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method

.method public traceSphereAll(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/PhysicsLayer;F)Ljava/util/List;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Traces a sphere sweep test laser from a specified position and direction, in the indicated PhysicsLayer and return all collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Tra\u00e7a um teste esferico laser a partir de uma posi\u00e7\u00e3o e dire\u00e7\u00e3o especificadas, no PhysicsLayer indicado e retorna todas as colis\u00f5es."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "direction",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "direction",
            "layer",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/Vector3;",
            "LJAVARuntime/PhysicsLayer;",
            "F)",
            "Ljava/util/List<",
            "LJAVARuntime/LaserHit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LJAVARuntime/NoHitException;
        }
    .end annotation

    .line 31
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 32
    new-instance v0, Laa/c;

    new-instance v1, Laa/d;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Laa/c;-><init>(Laa/d;F)V

    if-eqz p3, :cond_0

    .line 33
    iget-object p1, p3, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p1, v0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 34
    :cond_0
    iget-object p1, p0, LJAVARuntime/Laser;->raycast:Laa/e;

    iget-boolean p2, p0, LJAVARuntime/Laser;->showGizmo:Z

    xor-int/lit8 p2, p2, 0x1

    .line 35
    invoke-virtual {p1, v0, p4, p2}, Laa/e;->w(Laa/c;FZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laa/a;

    new-instance p4, LJAVARuntime/LaserHit;

    invoke-direct {p4, p3}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 39
    :cond_2
    new-instance p1, LJAVARuntime/NoHitException;

    invoke-direct {p1}, LJAVARuntime/NoHitException;-><init>()V

    throw p1
.end method
