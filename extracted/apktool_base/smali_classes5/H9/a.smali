.class public LH9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIILH9/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "data"
        }
    .end annotation

    iget-object v0, p3, LH9/b;->b:Lvc/q;

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p0, p1, p2}, Lvc/q;->s(FFF)V

    iget p0, p3, LH9/b;->c:I

    add-int/lit8 p1, p0, 0x1

    iput p1, p3, LH9/b;->c:I

    return p0
.end method

.method public static b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockType",
            "atlasSideCount"
        }
    .end annotation

    div-float/2addr p0, p1

    float-to-int v0, p0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static c(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    iget v1, p0, LH9/b;->g:I

    iget v2, p0, LH9/b;->h:I

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->g:I

    iget v3, p0, LH9/b;->h:I

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->h:I

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    iget v4, p0, LH9/b;->g:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LH9/b;->h:I

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v2, v1, v0}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v0, v3, v2}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v1, p0, LH9/b;->j:I

    int-to-float v1, v1

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Lvc/p;->m(FF)V

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    add-float v1, v0, v3

    invoke-virtual {v2, v1, p1}, Lvc/p;->m(FF)V

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    add-float/2addr p1, v3

    invoke-virtual {v2, v1, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static d(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    iget v1, p0, LH9/b;->g:I

    iget v2, p0, LH9/b;->h:I

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->g:I

    iget v3, p0, LH9/b;->h:I

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->g:I

    iget v4, p0, LH9/b;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    iget v4, p0, LH9/b;->g:I

    iget v5, p0, LH9/b;->h:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v0, v1, v2}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v2, v3, v0}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v1, p0, LH9/b;->j:I

    int-to-float v1, v1

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    add-float v1, p1, v3

    invoke-virtual {v2, v0, v1}, Lvc/p;->m(FF)V

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    add-float/2addr v3, v0

    invoke-virtual {v2, v3, v1}, Lvc/p;->m(FF)V

    iget-object v1, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {v1, v3, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static e(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    iget v1, p0, LH9/b;->g:I

    iget v2, p0, LH9/b;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->g:I

    iget v3, p0, LH9/b;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    iget v4, p0, LH9/b;->g:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LH9/b;->h:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v0, v1, v2}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v2, v3, v0}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v1, v2}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v1, p0, LH9/b;->j:I

    int-to-float v1, v1

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    invoke-virtual {v3, v0, p1}, Lvc/p;->m(FF)V

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v2, v1

    add-float v1, v0, v2

    invoke-virtual {v3, v1, p1}, Lvc/p;->m(FF)V

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    add-float/2addr p1, v2

    invoke-virtual {v3, v1, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static f(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, LH9/b;->g:I

    iget v2, p0, LH9/b;->h:I

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->g:I

    iget v3, p0, LH9/b;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->g:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LH9/b;->h:I

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v2, v1, v0}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v0, v3, v2}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v2, p0, LH9/b;->j:I

    int-to-float v2, v2

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    invoke-virtual {v3, v0, p1}, Lvc/p;->m(FF)V

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v1, v2

    add-float v2, v0, v1

    invoke-virtual {v3, v2, p1}, Lvc/p;->m(FF)V

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    add-float/2addr p1, v1

    invoke-virtual {v3, v2, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static g(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    iget v1, p0, LH9/b;->g:I

    iget v2, p0, LH9/b;->h:I

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    iget v2, p0, LH9/b;->g:I

    iget v3, p0, LH9/b;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    iget v3, p0, LH9/b;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    iget v4, p0, LH9/b;->g:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LH9/b;->h:I

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v0, v1, v2}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v2, v3, v0}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v2}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v1, p0, LH9/b;->j:I

    int-to-float v1, v1

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Lvc/p;->m(FF)V

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    add-float v1, v0, v3

    invoke-virtual {v2, v1, p1}, Lvc/p;->m(FF)V

    iget-object v2, p0, LH9/b;->e:Lvc/p;

    add-float/2addr p1, v3

    invoke-virtual {v2, v1, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static h(LH9/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LH9/b;->f:I

    iget v1, p0, LH9/b;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->h:I

    invoke-static {v0, v1, v2, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v0

    iget v1, p0, LH9/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, LH9/b;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->h:I

    invoke-static {v1, v2, v3, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v1

    iget v2, p0, LH9/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, LH9/b;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, LH9/b;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v2

    iget v3, p0, LH9/b;->f:I

    iget v4, p0, LH9/b;->g:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LH9/b;->h:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5, p0}, LH9/a;->a(IIILH9/b;)I

    move-result v3

    iget-object v4, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v4, v2, v1, v0}, Lvc/n;->l(III)V

    iget-object v1, p0, LH9/b;->a:Lvc/n;

    invoke-virtual {v1, v0, v3, v2}, Lvc/n;->l(III)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    iget-object v0, p0, LH9/b;->d:Lvc/q;

    invoke-virtual {v0, v1, v2, v1}, Lvc/q;->s(FFF)V

    int-to-float p1, p1

    iget v0, p0, LH9/b;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, LH9/a;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    iget v1, p0, LH9/b;->j:I

    int-to-float v1, v1

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    div-float/2addr v2, v1

    add-float v1, p1, v2

    invoke-virtual {v3, v0, v1}, Lvc/p;->m(FF)V

    iget-object v3, p0, LH9/b;->e:Lvc/p;

    add-float/2addr v2, v0

    invoke-virtual {v3, v2, v1}, Lvc/p;->m(FF)V

    iget-object v1, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {v1, v2, p1}, Lvc/p;->m(FF)V

    iget-object p0, p0, LH9/b;->e:Lvc/p;

    invoke-virtual {p0, v0, p1}, Lvc/p;->m(FF)V

    return-void
.end method

.method public static i(LE9/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget v0, p0, LE9/b;->a:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LE9/b;->a:I

    iget v0, p0, LE9/b;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LE9/b;->b:I

    iget v0, p0, LE9/b;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LE9/b;->d:I

    iget v0, p0, LE9/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, LE9/b;->c:I

    iget v0, p0, LE9/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LE9/b;->e:I

    return-void
.end method
