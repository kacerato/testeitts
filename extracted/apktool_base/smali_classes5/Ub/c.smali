.class public final LUb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJAVARuntime/Color;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    sput-object v0, LUb/c;->a:LJAVARuntime/Color;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LUb/c;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LUb/c;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LUb/c;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LUb/c;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, LUb/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, LUb/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, LUb/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, LUb/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)Ljava/util/Deque;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent",
            "renderMode",
            "dualFace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Z",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Z)",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p3}, LUb/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZZ)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Deque;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZZ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent",
            "dualFace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "ZZ)",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1, p2}, LUb/c;->d(ZZ)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public static d(ZZ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transparent",
            "dualFace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/Map<",
            "LJAVARuntime/GizmoElement$RenderMode;",
            "Ljava/util/Deque<",
            "LJAVARuntime/GizmoObject;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    sget-object p0, LUb/c;->d:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object p0, LUb/c;->e:Ljava/util/Map;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, LUb/c;->b:Ljava/util/Map;

    goto :goto_1

    :cond_2
    sget-object p0, LUb/c;->c:Ljava/util/Map;

    :goto_1
    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)LJAVARuntime/GizmoObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent"
        }
    .end annotation

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, LUb/c;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;)LJAVARuntime/GizmoObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent",
            "renderMode"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LUb/c;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent",
            "renderMode",
            "dualFace"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LUb/c;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Z)LJAVARuntime/GizmoObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitiveId",
            "transparent"
        }
    .end annotation

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, LUb/c;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;)LJAVARuntime/GizmoObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "primitiveId",
            "transparent",
            "renderMode"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LUb/c;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primitiveId",
            "transparent",
            "renderMode",
            "dualFace"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, LUb/c;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)LJAVARuntime/GizmoObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transparent",
            "renderMode",
            "dualFace"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    sget-object p2, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, LUb/c;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/GizmoObject;

    if-nez v0, :cond_1

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    invoke-direct {v0, p0}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    sget-object p0, LUb/c;->a:LJAVARuntime/Color;

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    invoke-virtual {v0, p3}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    invoke-virtual {v0, p1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, LJAVARuntime/GizmoElement;->setPooling(Z)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Vertex n\u00e3o pode ser null na GizmoPool."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(LJAVARuntime/GizmoObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJAVARuntime/GizmoObject;->getVertex()LJAVARuntime/Vertex;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LJAVARuntime/GizmoObject;->isEnableTransparency()Z

    move-result v1

    invoke-virtual {p0}, LJAVARuntime/GizmoObject;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :cond_2
    invoke-virtual {p0}, LJAVARuntime/GizmoObject;->isDualFaceRender()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, LUb/c;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLJAVARuntime/GizmoElement$RenderMode;Z)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
