.class public Lvc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/k;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;


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
    new-instance v0, Lvc/k;

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v0, p1}, Lvc/k;-><init>(I)V

    iput-object v0, p0, Lvc/r;->a:Lvc/k;

    .line 3
    invoke-virtual {v0}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
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
    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 9
    new-instance v0, Lvc/k;

    invoke-direct {v0, p1}, Lvc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lvc/r;->a:Lvc/k;

    return-void
.end method

.method public constructor <init>(Lvc/k;)V
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
    iput-object p1, p0, Lvc/r;->a:Lvc/k;

    .line 6
    invoke-virtual {p1}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method


# virtual methods
.method public A(ILcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector4"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFFF)V

    return-void
.end method

.method public B(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector4"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x4

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFFF)V

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lvc/k;

    invoke-direct {v0, p1}, Lvc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lvc/r;->a:Lvc/k;

    return-void
.end method

.method public a(IFFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/r;->o(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/r;->p(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/r;->q(I)F

    move-result v2

    invoke-virtual {p0, p1}, Lvc/r;->n(I)F

    move-result v3

    add-float v6, v0, p2

    add-float v7, v1, p3

    add-float v8, v2, p4

    add-float v9, v3, p5

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Lvc/r;->z(IFFFF)V

    return-void
.end method

.method public b(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "vector4"
        }
    .end annotation

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lvc/r;->a(IFFFF)V

    return-void
.end method

.method public c()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 3

    invoke-virtual {p0}, Lvc/r;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/r;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/r;->i(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public e(Z)Lvc/r;
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

    new-instance p1, Lvc/r;

    invoke-virtual {p0}, Lvc/r;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/r;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/r;

    invoke-virtual {p0}, Lvc/r;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/r;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1
.end method

.method public f()Lvc/r;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/r;->e(Z)Lvc/r;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    return-void
.end method

.method public h(ILcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-object p2
.end method

.method public i(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    invoke-virtual {p0, p1, v0}, Lvc/r;->j(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public j(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    return-object p2
.end method

.method public k(ILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setX(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setY(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setZ(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector4f;->setW(F)Lcom/jme3/math/Vector4f;

    return-object p2
.end method

.method public l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public m(I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    invoke-virtual {p0, p1, v1}, Lvc/r;->j(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-object v0
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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public p(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public q(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public r(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/r;->d()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lvc/r;->x(I)V

    return-void
.end method

.method public s(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/r;->o(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lvc/r;->p(I)F

    move-result v1

    invoke-virtual {p0, p1}, Lvc/r;->q(I)F

    move-result v2

    invoke-virtual {p0, p1}, Lvc/r;->n(I)F

    move-result v3

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v4

    div-float/2addr v5, v4

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    mul-float/2addr v3, v5

    :cond_0
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Lvc/r;->z(IFFFF)V

    return-void
.end method

.method public t(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-void
.end method

.method public u(FFFF)V
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
            "w"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector4"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    return-void
.end method

.method public w(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    :goto_0
    move v1, p1

    invoke-virtual {p0}, Lvc/r;->d()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Lvc/r;->o(I)F

    move-result v2

    invoke-virtual {p0, p1}, Lvc/r;->p(I)F

    move-result v3

    invoke-virtual {p0, p1}, Lvc/r;->q(I)F

    move-result v4

    invoke-virtual {p0, p1}, Lvc/r;->n(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvc/r;->z(IFFFF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvc/r;->a:Lvc/k;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lvc/k;->i(I)V

    iget-object p1, p0, Lvc/r;->a:Lvc/k;

    invoke-virtual {p1}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public x(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->a:Lvc/k;

    mul-int/lit8 p1, p1, 0x4

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lvc/k;->o(IZ)V

    iget-object p1, p0, Lvc/r;->a:Lvc/k;

    invoke-virtual {p1}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public y(IF)V
    .locals 6
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

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x4

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFFF)V

    return-void
.end method

.method public z(IFFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iget-object v0, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x4

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFFF)V

    return-void
.end method
