.class public final LJAVARuntime/GizmoObjectMatrix;
.super LJAVARuntime/GizmoMatrix;
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

.field private transient outlineScale:F

.field private transient renderMode:LJAVARuntime/GizmoElement$RenderMode;

.field private transient texture:LJAVARuntime/Texture;

.field private transient userPointer:Ljava/lang/Object;

.field private transient vertex:LJAVARuntime/Vertex;

.field private transient wireFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LJAVARuntime/GizmoMatrix;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->color:LJAVARuntime/Color;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LJAVARuntime/GizmoObjectMatrix;->dualFaceRender:Z

    .line 5
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object v1, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/GizmoObjectMatrix;->userPointer:Ljava/lang/Object;

    .line 7
    iput-boolean v0, p0, LJAVARuntime/GizmoObjectMatrix;->enableTransparency:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 8
    iput v0, p0, LJAVARuntime/GizmoObjectMatrix;->outlineScale:F

    .line 9
    sget v0, LOb/a$b;->c:I

    iput v0, p0, LJAVARuntime/GizmoObjectMatrix;->wireFrameWidth:I

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

    .line 10
    invoke-direct {p0}, LJAVARuntime/GizmoMatrix;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->color:LJAVARuntime/Color;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LJAVARuntime/GizmoObjectMatrix;->dualFaceRender:Z

    .line 14
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object v1, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, LJAVARuntime/GizmoObjectMatrix;->userPointer:Ljava/lang/Object;

    .line 16
    iput-boolean v0, p0, LJAVARuntime/GizmoObjectMatrix;->enableTransparency:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 17
    iput v0, p0, LJAVARuntime/GizmoObjectMatrix;->outlineScale:F

    .line 18
    sget v0, LOb/a$b;->c:I

    iput v0, p0, LJAVARuntime/GizmoObjectMatrix;->wireFrameWidth:I

    .line 19
    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObjectMatrix;->setVertex(LJAVARuntime/Vertex;)V

    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->color:LJAVARuntime/Color;

    return-object v0
.end method

.method public getOutlineScale()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/GizmoObjectMatrix;->outlineScale:F

    return v0
.end method

.method public getRenderMode()LJAVARuntime/GizmoElement$RenderMode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    return-object v0
.end method

.method public getTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->texture:LJAVARuntime/Texture;

    return-object v0
.end method

.method public getUserPointer()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->userPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->vertex:LJAVARuntime/Vertex;

    return-object v0
.end method

.method public getWireFrameWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/GizmoObjectMatrix;->wireFrameWidth:I

    return v0
.end method

.method public isDualFaceRender()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/GizmoObjectMatrix;->dualFaceRender:Z

    return v0
.end method

.method public isWireFrame()Z
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->color:LJAVARuntime/Color;

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

    iput-boolean p1, p0, LJAVARuntime/GizmoObjectMatrix;->dualFaceRender:Z

    return-void
.end method

.method public setOutlineScale(F)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outlineScale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineScale"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoObjectMatrix;->outlineScale:F

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

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

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

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->texture:LJAVARuntime/Texture;

    return-void
.end method

.method public setUserPointer(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userPointer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->userPointer:Ljava/lang/Object;

    return-void
.end method

.method public setVertex(LJAVARuntime/Vertex;)V
    .locals 0
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

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->vertex:LJAVARuntime/Vertex;

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

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_0

    :cond_0
    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    iput-object p1, p0, LJAVARuntime/GizmoObjectMatrix;->renderMode:LJAVARuntime/GizmoElement$RenderMode;

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

    iput p1, p0, LJAVARuntime/GizmoObjectMatrix;->wireFrameWidth:I

    return-void
.end method
