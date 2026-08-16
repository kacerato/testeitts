.class public final Lif/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 1.0f

.field public static final b:F

.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Lcom/jme3/math/Vector3f;

.field public static final e:Lcom/jme3/math/Vector3f;

.field public static final synthetic f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lif/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/m;->c:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lif/m;->d:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lif/m;->e:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/renderer/Camera;)F
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->i(Lcom/jme3/math/Vector3f;)F

    move-result p0

    return p0
.end method

.method public static b(Lcom/jme3/renderer/ViewPort;Lcom/jme3/math/Vector2f;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p0

    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result p0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/jme3/renderer/Camera;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->n(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lif/t;->t(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "camera%s (%s; %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(Lcom/jme3/renderer/Camera;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "para"

    goto :goto_0

    :cond_0
    const-string v1, "persp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/m;->h(Lcom/jme3/renderer/Camera;)F

    move-result v1

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1 V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/m;->p(Lcom/jme3/renderer/Camera;)F

    move-result v1

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v1

    const/16 v2, 0x5d

    const/16 v3, 0x20

    if-eqz v1, :cond_1

    const-string v1, " fx["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v4

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v4

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " fz["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v4

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] vx["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v4

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] vy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v4

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " fovDeg[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/m;->q(Lcom/jme3/renderer/Camera;)F

    move-result v1

    invoke-static {p0}, Lif/m;->s(Lcom/jme3/renderer/Camera;)F

    move-result p0

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/jme3/renderer/Camera;)F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static f(Lcom/jme3/renderer/Camera;)F
    .locals 1

    const-string v0, "camera"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/m;->r(Lcom/jme3/renderer/Camera;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static g(Lcom/jme3/renderer/Camera;)F
    .locals 1

    const-string v0, "camera"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/m;->t(Lcom/jme3/renderer/Camera;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static h(Lcom/jme3/renderer/Camera;)F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public static i(Lcom/jme3/renderer/Camera;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lcom/jme3/renderer/RenderManager;Lcom/jme3/math/Vector2f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/RenderManager;",
            "Lcom/jme3/math/Vector2f;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation

    const-string v0, "screen xy"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/renderer/RenderManager;->getPreViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-static {v2, p1}, Lif/m;->b(Lcom/jme3/renderer/ViewPort;Lcom/jme3/math/Vector2f;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/renderer/RenderManager;->getMainViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-static {v2, p1}, Lif/m;->b(Lcom/jme3/renderer/ViewPort;Lcom/jme3/math/Vector2f;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/renderer/RenderManager;->getPostViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    invoke-static {v1, p1}, Lif/m;->b(Lcom/jme3/renderer/ViewPort;Lcom/jme3/math/Vector2f;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static k(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "new direction"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lif/m;->d:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->lookAtDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lif/m;->e:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->lookAtDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void
.end method

.method public static l(Lcom/jme3/renderer/Camera;Lcom/jme3/input/InputManager;)Lcom/jme3/math/Line;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/input/InputManager;->getCursorPosition()Lcom/jme3/math/Vector2f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    new-instance p1, Lcom/jme3/math/Line;

    invoke-direct {p1, v0, p0}, Lcom/jme3/math/Line;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public static m(Lcom/jme3/renderer/Camera;Lcom/jme3/input/InputManager;)Lcom/jme3/math/Ray;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/input/InputManager;->getCursorPosition()Lcom/jme3/math/Vector2f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/math/Ray;

    invoke-direct {p1, v0, p0}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public static n(Lcom/jme3/renderer/Camera;FF)V
    .locals 2

    const-string v0, "near"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/renderer/Camera;->setFrustumFar(F)V

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/Camera;->setFrustumNear(F)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lif/m;->h(Lcom/jme3/renderer/Camera;)F

    move-result v0

    invoke-static {p0}, Lif/m;->s(Lcom/jme3/renderer/Camera;)F

    move-result v1

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    :goto_0
    return-void

    :cond_1
    sget-object p0, Lif/m;->c:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "far={0} near={1}"

    invoke-virtual {p0, v0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "far should be greater than near"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Lcom/jme3/renderer/Camera;F)V
    .locals 1

    const-string v0, "camera"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "tangent"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lif/m;->t(Lcom/jme3/renderer/Camera;)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p0, p1}, Lif/m;->u(Lcom/jme3/renderer/Camera;F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "camera must have perspective enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Lcom/jme3/renderer/Camera;)F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method public static q(Lcom/jme3/renderer/Camera;)F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lif/m;->r(Lcom/jme3/renderer/Camera;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljf/f;->Q(F)F

    move-result p0

    return p0
.end method

.method public static r(Lcom/jme3/renderer/Camera;)F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    div-float p0, v1, v0

    :goto_0
    return p0
.end method

.method public static s(Lcom/jme3/renderer/Camera;)F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lif/m;->t(Lcom/jme3/renderer/Camera;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljf/f;->Q(F)F

    move-result p0

    return p0
.end method

.method public static t(Lcom/jme3/renderer/Camera;)F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    div-float p0, v1, v0

    :goto_0
    return p0
.end method

.method public static u(Lcom/jme3/renderer/Camera;F)V
    .locals 1

    const-string v0, "factor"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setFrustumBottom(F)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setFrustumLeft(F)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setFrustumRight(F)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setFrustumTop(F)V

    return-void
.end method
