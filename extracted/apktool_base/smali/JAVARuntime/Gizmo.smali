.class public final LJAVARuntime/Gizmo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static draw(LJAVARuntime/GizmoElement;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gizmoElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 5
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;FLJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 9
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 10
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 11
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;FLJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture"
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
            "scale",
            "texture"
        }
    .end annotation

    .line 30
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 31
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 33
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 34
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p0

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 35
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 36
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    .line 12
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 15
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 16
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    .line 17
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 18
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 20
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 21
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 22
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawCube(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;LJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color",
            "texture"
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
            "scale",
            "color",
            "texture"
        }
    .end annotation

    .line 23
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 24
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 26
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 27
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 28
    invoke-virtual {v0, p3}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 29
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawElement(LJAVARuntime/GizmoElement;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gizmoElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawEngine(LJAVARuntime/GizmoElement;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawGizmo(LJAVARuntime/GizmoElement;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gizmoElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawPoint(LJAVARuntime/Vector3;F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    .line 5
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 6
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawPoint(LJAVARuntime/Vector3;FLJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 12
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 13
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawQuad(LJAVARuntime/Vector3;FLJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture"
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
            "scale",
            "texture"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 5
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 6
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture"
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
            "scale",
            "texture"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 10
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 12
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture",
            "color"
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
            "scale",
            "texture",
            "color"
        }
    .end annotation

    .line 13
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 14
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 16
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 18
    invoke-virtual {v0, p3}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 19
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawSphere(LJAVARuntime/Vector3;F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 5
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawSphere(LJAVARuntime/Vector3;FLJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 9
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    .line 10
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 11
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawSphere(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    .line 12
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 15
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 16
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 17
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawTransparentCube(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "color"
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
            "scale",
            "color"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture"
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
            "scale",
            "texture"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 5
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 6
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture",
            "color"
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
            "scale",
            "texture",
            "color"
        }
    .end annotation

    .line 13
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 14
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LUb/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 16
    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 18
    invoke-virtual {v0, p3}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 19
    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture",
            "color",
            "dualFaceRenderer"
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
            "scale",
            "texture",
            "color",
            "dualFace"
        }
    .end annotation

    .line 20
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 21
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x1

    sget-object v2, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {v0, v1, v2, p4}, LUb/c;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p4

    .line 22
    invoke-virtual {p4, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 23
    invoke-virtual {p4, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 24
    invoke-virtual {p4, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 25
    invoke-virtual {p4, p3}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 26
    invoke-static {p4}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;Z)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "scale",
            "texture",
            "dualFaceRenderer"
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
            "scale",
            "texture",
            "dualFace"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v1, 0x1

    sget-object v2, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {v0, v1, v2, p3}, LUb/c;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 10
    invoke-virtual {p3, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 11
    invoke-virtual {p3, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 12
    invoke-static {p3}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/GizmoElement;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gizmoElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    .line 33
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 34
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position",
            "color"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 8
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 9
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position",
            "rotation"
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 13
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 14
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale"
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
            "vertex",
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 20
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 21
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 23
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 24
    invoke-virtual {p0, p3}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 25
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "color"
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
            "vertex",
            "position",
            "rotation",
            "scale",
            "color"
        }
    .end annotation

    .line 26
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 27
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 29
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 30
    invoke-virtual {p0, p3}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 31
    invoke-virtual {p0, p4}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 32
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position",
            "scale"
        }
    .end annotation

    .line 15
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 16
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LUb/c;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 18
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 19
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawWireframeVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "color"
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
            "vertex",
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {p0, v0, v1}, LUb/c;->f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 4
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 5
    invoke-virtual {p0, p3}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 6
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawWireframeVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;LJAVARuntime/Color;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "color",
            "color"
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
            "vertex",
            "position",
            "rotation",
            "scale",
            "color"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {p0, v0, v1}, LUb/c;->f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 10
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 11
    invoke-virtual {p0, p3}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 12
    invoke-virtual {p0, p4}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 13
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static drawWireframeVertex(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;LJAVARuntime/Color;LJAVARuntime/Texture;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "color",
            "color",
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "color",
            "texture"
        }
    .end annotation

    .line 14
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 15
    iget-object p0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {p0, v0, v1}, LUb/c;->f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;)LJAVARuntime/GizmoObject;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    .line 17
    invoke-virtual {p0, p2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    .line 18
    invoke-virtual {p0, p3}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    .line 19
    invoke-virtual {p0, p4}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    .line 20
    invoke-virtual {p0, p5}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    .line 21
    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
