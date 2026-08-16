.class public Lvc/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/m;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public c:LJAVARuntime/ShortVector3Buffer;


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
    new-instance v0, Lvc/m;

    mul-int/lit8 p1, p1, 0x3

    invoke-direct {v0, p1}, Lvc/m;-><init>(I)V

    iput-object v0, p0, Lvc/o;->a:Lvc/m;

    .line 3
    invoke-virtual {v0}, Lvc/m;->f()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
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
    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    .line 9
    new-instance v0, Lvc/m;

    invoke-direct {v0, p1}, Lvc/m;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iput-object v0, p0, Lvc/o;->a:Lvc/m;

    return-void
.end method

.method public constructor <init>(Lvc/m;)V
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
    iput-object p1, p0, Lvc/o;->a:Lvc/m;

    .line 6
    invoke-virtual {p1}, Lvc/m;->f()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    float-to-int p2, p2

    int-to-short p2, p2

    float-to-int p3, p3

    int-to-short p3, p3

    float-to-int p4, p4

    int-to-short p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    int-to-short v1, v1

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSS)V

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    new-instance v0, Lvc/m;

    invoke-direct {v0, p1}, Lvc/m;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iput-object v0, p0, Lvc/o;->a:Lvc/m;

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

    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lvc/o;->A(IFFF)V

    return-void
.end method

.method public F(LJAVARuntime/ShortVector3Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lvc/o;->c:LJAVARuntime/ShortVector3Buffer;

    return-void
.end method

.method public G()LJAVARuntime/ShortVector3Buffer;
    .locals 1

    iget-object v0, p0, Lvc/o;->c:LJAVARuntime/ShortVector3Buffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ShortVector3Buffer;

    invoke-direct {v0, p0}, LJAVARuntime/ShortVector3Buffer;-><init>(Lvc/o;)V

    iput-object v0, p0, Lvc/o;->c:LJAVARuntime/ShortVector3Buffer;

    :cond_0
    return-object v0
.end method

.method public H()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/o;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

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

    invoke-virtual {p0, p1}, Lvc/o;->m(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/o;->n(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/o;->o(I)F

    move-result v2

    add-float/2addr v0, p2

    add-float/2addr v1, p3

    add-float/2addr v2, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Lvc/o;->A(IFFF)V

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

    invoke-virtual {p0, p1, v0, v1, p2}, Lvc/o;->a(IFFF)V

    return-void
.end method

.method public c()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/o;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public e(Z)Lvc/o;
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

    new-instance p1, Lvc/o;

    invoke-virtual {p0}, Lvc/o;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/o;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/o;

    invoke-virtual {p0}, Lvc/o;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/o;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-object p1
.end method

.method public f()Lvc/o;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/o;->e(Z)Lvc/o;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroy()V

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

    invoke-virtual {p0, p1, v0}, Lvc/o;->i(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public k()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getPosition()I

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-float p1, p1

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-float p1, p1

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

    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lvc/o;->y(I)V

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

    invoke-virtual {p0, p1}, Lvc/o;->m(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/o;->n(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/o;->o(I)F

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lvc/o;->A(IFFF)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    float-to-int p1, p1

    int-to-short p1, p1

    float-to-int p2, p2

    int-to-short p2, p2

    float-to-int p3, p3

    int-to-short p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    int-to-short v1, v1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    int-to-short p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1}, Ljavax/vecmath/Tuple3f;->getZ()F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

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

    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    if-le v0, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lvc/o;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lvc/o;->m(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lvc/o;->n(I)F

    move-result v2

    invoke-virtual {p0, v0}, Lvc/o;->o(I)F

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lvc/o;->A(IFFF)V

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvc/o;->a:Lvc/m;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lvc/m;->h(I)V

    iget-object p1, p0, Lvc/o;->a:Lvc/m;

    invoke-virtual {p1}, Lvc/m;->f()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

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

    iget-object v0, p0, Lvc/o;->a:Lvc/m;

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lvc/m;->m(IZ)V

    iget-object p1, p0, Lvc/o;->a:Lvc/m;

    invoke-virtual {p1}, Lvc/m;->f()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

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

    iget-object v0, p0, Lvc/o;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2, p2, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSS)V

    return-void
.end method
