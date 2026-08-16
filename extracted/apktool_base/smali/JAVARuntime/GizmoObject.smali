.class public LJAVARuntime/GizmoObject;
.super LJAVARuntime/GizmoTransform;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# instance fields
.field private transient color:LJAVARuntime/Color;

.field private transient dualFaceRender:Z

.field private transient enableTransparency:Z

.field private transient renderMode:LJAVARuntime/GizmoElement$RenderMode;

.field private transient scaleBasedCamera:Z

.field private transient texture:LJAVARuntime/Texture;

.field private transient vertex:LJAVARuntime/Vertex;

.field private transient wireFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LJAVARuntime/GizmoTransform;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 5
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object v1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 6
    iput-boolean v0, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 7
    sget v0, LOb/a$b;->c:I

    iput v0, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, LJAVARuntime/GizmoTransform;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 12
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object v1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 13
    iput-boolean v0, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 14
    sget v0, LOb/a$b;->c:I

    iput v0, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 15
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3;)V
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

    .line 16
    invoke-direct {p0, p2}, LJAVARuntime/GizmoTransform;-><init>(LJAVARuntime/Vector3;)V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    new-instance p2, LJAVARuntime/Color;

    invoke-direct {p2}, LJAVARuntime/Color;-><init>()V

    iput-object p2, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 20
    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object v0, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 21
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 22
    sget p2, LOb/a$b;->c:I

    iput p2, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 23
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;)V
    .locals 0
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

    .line 24
    invoke-direct {p0, p2, p3}, LJAVARuntime/GizmoTransform;-><init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;)V

    .line 25
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 26
    new-instance p2, LJAVARuntime/Color;

    invoke-direct {p2}, LJAVARuntime/Color;-><init>()V

    iput-object p2, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 28
    sget-object p3, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p3, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 29
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 30
    sget p2, LOb/a$b;->c:I

    iput p2, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 31
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V
    .locals 0
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

    .line 32
    invoke-direct {p0, p2, p3, p4}, LJAVARuntime/GizmoTransform;-><init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V

    .line 33
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 34
    new-instance p2, LJAVARuntime/Color;

    invoke-direct {p2}, LJAVARuntime/Color;-><init>()V

    iput-object p2, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 36
    sget-object p3, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p3, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 37
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 38
    sget p2, LOb/a$b;->c:I

    iput p2, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 39
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "wireframe"
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
            "wireFrame"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0, p2, p3, p4}, LJAVARuntime/GizmoTransform;-><init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V

    .line 41
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 42
    new-instance p2, LJAVARuntime/Color;

    invoke-direct {p2}, LJAVARuntime/Color;-><init>()V

    iput-object p2, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 44
    sget-object p3, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p3, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 45
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 46
    sget p2, LOb/a$b;->c:I

    iput p2, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 47
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    if-eqz p5, :cond_0

    .line 48
    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    :cond_0
    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;ZLJAVARuntime/Color;LJAVARuntime/Texture;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "wireframe",
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
            0x0,
            0x0
        }
        names = {
            "vertex",
            "position",
            "rotation",
            "scale",
            "wireFrame",
            "color",
            "texture"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0, p2, p3, p4}, LJAVARuntime/GizmoTransform;-><init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V

    .line 50
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 51
    new-instance p2, LJAVARuntime/Color;

    invoke-direct {p2}, LJAVARuntime/Color;-><init>()V

    iput-object p2, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    .line 53
    sget-object p3, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p3, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    .line 54
    iput-boolean p2, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    .line 55
    sget p2, LOb/a$b;->c:I

    iput p2, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    .line 56
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    .line 57
    iput-object p6, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    .line 58
    iput-object p7, p0, LJAVARuntime/GizmoObject;->texture:LJAVARuntime/Texture;

    if-eqz p5, :cond_0

    .line 59
    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    return-object v0
.end method

.method public getRenderMode()LJAVARuntime/GizmoElement$RenderMode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    return-object v0
.end method

.method public getTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObject;->texture:LJAVARuntime/Texture;

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObject;->vertex:LJAVARuntime/Vertex;

    return-object v0
.end method

.method public getWireFrameWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    return v0
.end method

.method public isDualFaceRender()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    return v0
.end method

.method public isEnableTransparency()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    return v0
.end method

.method public isScaleBasedCamera()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/GizmoObject;->scaleBasedCamera:Z

    return v0
.end method

.method public isWireFrame()Z
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public randomizeColor()V
    .locals 5

    new-instance v0, LJAVARuntime/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, LJAVARuntime/Random;->range(FF)F

    move-result v3

    invoke-static {v1, v2}, LJAVARuntime/Random;->range(FF)F

    move-result v4

    invoke-static {v1, v2}, LJAVARuntime/Random;->range(FF)F

    move-result v1

    invoke-direct {v0, v3, v4, v1}, LJAVARuntime/Color;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    return-void
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iput-object p1, p0, LJAVARuntime/GizmoObject;->color:LJAVARuntime/Color;

    return-void
.end method

.method public setDualFaceRender(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "dualFaceRender"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dualFaceRender"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoObject;->dualFaceRender:Z

    return-void
.end method

.method public setEnableTransparency(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "enableTransparency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableTransparency"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoObject;->enableTransparency:Z

    return-void
.end method

.method public setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "renderMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    return-void
.end method

.method public setScaleBasedCamera(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleBasedCamera"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/GizmoObject;->scaleBasedCamera:Z

    return-void
.end method

.method public setTexture(LJAVARuntime/Texture;)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoObject;->texture:LJAVARuntime/Texture;

    return-void
.end method

.method public setVertex(LJAVARuntime/Vertex;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-static {}, LK8/a;->F()V

    iget-object v0, p0, LJAVARuntime/GizmoObject;->vertex:LJAVARuntime/Vertex;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LJAVARuntime/GizmoObject;->vertex:LJAVARuntime/Vertex;

    return-void
.end method

.method public setWireFrame(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "wireFrame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wireFrame"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_0

    :cond_0
    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p1, p0, LJAVARuntime/GizmoObject;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    :goto_0
    return-void
.end method

.method public setWireFrameWidth(I)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "wireFrameWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wireFrameWidth"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoObject;->wireFrameWidth:I

    return-void
.end method
