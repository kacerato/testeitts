.class public Ltc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:F

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public q:LJAVARuntime/Touch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    iput-object v0, p0, Ltc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/h;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltc/h;->e:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ltc/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ltc/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ltc/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ltc/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Ltc/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Ltc/h;->k:Z

    iput-boolean v0, p0, Ltc/h;->l:Z

    iput-boolean v0, p0, Ltc/h;->m:Z

    iput-boolean v0, p0, Ltc/h;->n:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Ltc/h;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longPressed"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public B(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longSetted"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/h;->m:Z

    return-void
.end method

.method public C(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public D(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public F(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public G(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public I(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slided"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/h;->e:Z

    return-void
.end method

.method public J(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public K(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upSetted"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/h;->l:Z

    return-void
.end method

.method public L()LJAVARuntime/Touch;
    .locals 1

    iget-object v0, p0, Ltc/h;->q:LJAVARuntime/Touch;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Touch;

    invoke-direct {v0, p0}, LJAVARuntime/Touch;-><init>(Ltc/h;)V

    iput-object v0, p0, Ltc/h;->q:LJAVARuntime/Touch;

    :cond_0
    return-object v0
.end method

.method public a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Ltc/h;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, v0}, Ltc/h;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    sget-object v0, Lz5/a;->m0:Lz5/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lz5/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz5/a;->m0:Lz5/g;

    invoke-interface {v0}, Lz5/g;->a()Lo4/f;

    move-result-object v0

    invoke-virtual {v0}, Lo4/f;->e()F

    move-result v1

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Lo4/f;->f()F

    move-result v0

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p1

    :cond_1
    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p1
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, v0}, Ltc/h;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    sget-object v0, Lz5/a;->m0:Lz5/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lz5/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz5/a;->m0:Lz5/g;

    invoke-interface {v0}, Lz5/g;->a()Lo4/f;

    move-result-object v0

    invoke-virtual {v0}, Lo4/f;->e()F

    move-result v1

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Lo4/f;->f()F

    move-result v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Lo4/f;->d()F

    move-result v3

    invoke-static {}, LK8/c;->b()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Lo4/f;->c()F

    move-result v0

    invoke-static {}, LK8/c;->a()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v4, v2

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-object p1

    :cond_1
    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-object p1
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Ltc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2

    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->O(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to retrieve the position of a touch that is not on the screen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->O(FF)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object v0, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to retrieve the position of a touch that is not on the screen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2

    iget-object v0, p0, Ltc/h;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Ltc/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, Ltc/h;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ltc/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Ltc/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Ltc/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->m:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->n:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Ltc/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->e:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Ltc/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "down:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " up:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltc/h;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltc/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->l:Z

    return v0
.end method

.method public v(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public x(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downSetted"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/h;->k:Z

    return-void
.end method

.method public y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mouse"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/h;->n:Z

    return-void
.end method

.method public z(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longDown"
        }
    .end annotation

    iget-object v0, p0, Ltc/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
