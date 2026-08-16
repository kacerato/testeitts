.class public Lcom/itsmagic/engine/Engines/Engine/Animation/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public b:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public c:F

.field public d:F

.field public e:F

.field public f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

.field public g:LJAVARuntime/AnimationTransition;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "timeRemain",
            "curve"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->c:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->e:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->c:F

    return v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->e:F

    return v0
.end method

.method public g()Z
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h()LJAVARuntime/AnimationTransition;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->g:LJAVARuntime/AnimationTransition;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AnimationTransition;

    invoke-direct {v0, p0}, LJAVARuntime/AnimationTransition;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/e;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->g:LJAVARuntime/AnimationTransition;

    :cond_0
    return-object v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LL8/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "mjp"
        }
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->e:F

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->c:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->c:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->d:F

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p1

    invoke-static {v1, p1, v0, p2}, LL8/d;->f(LL8/b;LL8/b;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object v0

    invoke-virtual {v1, p2}, LL8/b;->d(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    invoke-virtual {p1, p2}, LL8/b;->d(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->stop()V

    :cond_1
    return-object v0
.end method
