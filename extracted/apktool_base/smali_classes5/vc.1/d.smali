.class public Lvc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/c;

.field public b:Lyc/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lvc/c;

    mul-int/lit8 p1, p1, 0x3

    invoke-direct {v0, p1}, Lvc/c;-><init>(I)V

    iput-object v0, p0, Lvc/d;->a:Lvc/c;

    .line 3
    invoke-virtual {v0}, Lvc/c;->g()Lyc/a;

    move-result-object p1

    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    return-void
.end method

.method public constructor <init>(Lvc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBase"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lvc/d;->a:Lvc/c;

    .line 6
    invoke-virtual {p1}, Lvc/c;->g()Lyc/a;

    move-result-object p1

    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    return-void
.end method

.method public constructor <init>(Lyc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    .line 9
    new-instance v0, Lvc/c;

    invoke-direct {v0, p1}, Lvc/c;-><init>(Lyc/a;)V

    iput-object v0, p0, Lvc/d;->a:Lvc/c;

    return-void
.end method


# virtual methods
.method public A(IFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1, p2, p3, p4}, Lyc/a;->T(IFFF)V

    return-void
.end method

.method public B(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0, p1, v1, p2}, Lyc/a;->S(IFF)V

    return-void
.end method

.method public C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lyc/a;->T(IFFF)V

    return-void
.end method

.method public D(Lyc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    new-instance v0, Lvc/c;

    invoke-direct {v0, p1}, Lvc/c;-><init>(Lyc/a;)V

    iput-object v0, p0, Lvc/d;->a:Lvc/c;

    return-void
.end method

.method public E(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lvc/d;->A(IFFF)V

    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/d;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(IFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/d;->m(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/d;->n(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/d;->o(I)F

    move-result v2

    add-float/2addr v0, p2

    add-float/2addr v1, p3

    add-float/2addr v2, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Lvc/d;->A(IFFF)V

    return-void
.end method

.method public b(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector3"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lvc/d;->a(IFFF)V

    return-void
.end method

.method public c()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/d;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {v0}, Lyc/a;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public e(Z)Lvc/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deepClone"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lvc/d;

    invoke-virtual {p0}, Lvc/d;->k()Lyc/a;

    move-result-object v0

    invoke-virtual {v0}, Lyc/a;->e()Lyc/a;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/d;-><init>(Lyc/a;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/d;

    invoke-virtual {p0}, Lvc/d;->k()Lyc/a;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/d;-><init>(Lyc/a;)V

    return-object p1
.end method

.method public f()Lvc/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/d;->e(Z)Lvc/d;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {v0}, Lyc/a;->h()V

    return-void
.end method

.method public h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lvc/d;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public j(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lyc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public k()Lyc/a;
    .locals 1

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {v0}, Lyc/a;->B()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public m(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result p1

    return p1
.end method

.method public n(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result p1

    return p1
.end method

.method public o(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lyc/a;->n(I)F

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lvc/d;->y(I)V

    return-void
.end method

.method public q(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/d;->m(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/d;->n(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/d;->o(I)F

    move-result v2

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v3

    div-float/2addr v4, v3

    mul-float/2addr v0, v4

    mul-float/2addr v1, v4

    mul-float/2addr v2, v4

    :cond_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lvc/d;->A(IFFF)V

    return-void
.end method

.method public r(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lyc/a;->E(I)V

    return-void
.end method

.method public s(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {v0, p1, p2, p3}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public v(Lcom/jme3/math/Vector3f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public w(Ljavax/vecmath/Vector3f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getX()F

    move-result v1

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getY()F

    move-result v2

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lyc/a;->H(FFF)V

    return-void
.end method

.method public x(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    if-le v0, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lvc/d;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lvc/d;->m(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lvc/d;->n(I)F

    move-result v2

    invoke-virtual {p0, v0}, Lvc/d;->o(I)F

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lvc/d;->A(IFFF)V

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvc/d;->a:Lvc/c;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lvc/c;->i(I)V

    iget-object p1, p0, Lvc/d;->a:Lvc/c;

    invoke-virtual {p1}, Lvc/c;->g()Lyc/a;

    move-result-object p1

    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->a:Lvc/c;

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lvc/c;->o(IZ)V

    iget-object p1, p0, Lvc/d;->a:Lvc/c;

    invoke-virtual {p1}, Lvc/c;->g()Lyc/a;

    move-result-object p1

    iput-object p1, p0, Lvc/d;->b:Lyc/a;

    return-void
.end method

.method public z(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "a"
        }
    .end annotation

    iget-object v0, p0, Lvc/d;->b:Lyc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1, p2, p2, p2}, Lyc/a;->T(IFFF)V

    return-void
.end method
