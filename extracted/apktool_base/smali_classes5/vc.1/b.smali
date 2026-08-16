.class public Lvc/b;
.super Lvc/r;
.source "SourceFile"


# instance fields
.field public c:[F

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lvc/r;-><init>(I)V

    mul-int/lit8 p1, p1, 0x4

    .line 2
    new-array p1, p1, [F

    iput-object p1, p0, Lvc/b;->c:[F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lvc/r;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lvc/b;->c:[F

    return-void
.end method


# virtual methods
.method public B(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 3
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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    aput v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    aput v2, v0, v1

    add-int/lit8 v1, p1, 0x2

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x3

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    aput p2, v0, p1

    iget p2, p0, Lvc/b;->d:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/b;->d:I

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lvc/b;->c:[F

    return-void
.end method

.method public D()V
    .locals 4

    iget v0, p0, Lvc/b;->d:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lvc/r;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lvc/b;->c:[F

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    invoke-static {v0, v3}, LNc/b;->K(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set([FI)V

    const/4 v0, 0x0

    iput v0, p0, Lvc/b;->d:I

    :cond_0
    return-void
.end method

.method public E(Z)Lvc/b;
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

    new-instance p1, Lvc/b;

    invoke-virtual {p0}, Lvc/r;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/b;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/b;

    invoke-virtual {p0}, Lvc/r;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/b;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1
.end method

.method public F()Lvc/b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/b;->E(Z)Lvc/b;

    move-result-object v0

    return-object v0
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

.method public bridge synthetic e(Z)Lvc/r;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "deepClone"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/b;->E(Z)Lvc/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f()Lvc/r;
    .locals 1

    invoke-virtual {p0}, Lvc/b;->F()Lvc/b;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setX(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setY(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector4f;->setZ(F)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lvc/b;->c:[F

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector4f;->setW(F)Lcom/jme3/math/Vector4f;

    return-object p2
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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public y(IF)V
    .locals 2
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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    aput p2, v0, p1

    add-int/lit8 v1, p1, 0x1

    aput p2, v0, v1

    add-int/lit8 v1, p1, 0x2

    aput p2, v0, v1

    add-int/lit8 p1, p1, 0x3

    aput p2, v0, p1

    iget p2, p0, Lvc/b;->d:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/b;->d:I

    return-void
.end method

.method public z(IFFFF)V
    .locals 1
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

    iget-object v0, p0, Lvc/b;->c:[F

    mul-int/lit8 p1, p1, 0x4

    aput p2, v0, p1

    add-int/lit8 p2, p1, 0x1

    aput p3, v0, p2

    add-int/lit8 p2, p1, 0x2

    aput p4, v0, p2

    add-int/lit8 p1, p1, 0x3

    aput p5, v0, p1

    iget p2, p0, Lvc/b;->d:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/b;->d:I

    return-void
.end method
