.class public Lvc/a;
.super Lvc/q;
.source "SourceFile"


# instance fields
.field public d:[F

.field public e:I


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
    invoke-direct {p0, p1}, Lvc/q;-><init>(I)V

    mul-int/lit8 p1, p1, 0x3

    .line 2
    new-array p1, p1, [F

    iput-object p1, p0, Lvc/a;->d:[F

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
    invoke-direct {p0, p1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lvc/a;->d:[F

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    aput p2, v0, p1

    add-int/lit8 p2, p1, 0x1

    aput p3, v0, p2

    add-int/lit8 p1, p1, 0x2

    aput p4, v0, p1

    iget p2, p0, Lvc/a;->e:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/a;->e:I

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    aput p2, v0, p1

    iget p2, p0, Lvc/a;->e:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/a;->e:I

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    aput v1, v0, p1

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    aput p2, v0, p1

    iget p2, p0, Lvc/a;->e:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/a;->e:I

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/q;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lvc/a;->d:[F

    return-void
.end method

.method public I()V
    .locals 4

    iget v0, p0, Lvc/a;->e:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lvc/q;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lvc/a;->d:[F

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    invoke-static {v0, v3}, LNc/b;->K(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set([FI)V

    const/4 v0, 0x0

    iput v0, p0, Lvc/a;->e:I

    :cond_0
    return-void
.end method

.method public J(Z)Lvc/a;
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

    new-instance p1, Lvc/a;

    invoke-virtual {p0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/a;

    invoke-virtual {p0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1
.end method

.method public K()Lvc/a;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/a;->J(Z)Lvc/a;

    move-result-object v0

    return-object v0
.end method

.method public c()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    invoke-virtual {p0}, Lvc/q;->d()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/q;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic e(Z)Lvc/q;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "deepClone"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/a;->J(Z)Lvc/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f()Lvc/q;
    .locals 1

    invoke-virtual {p0}, Lvc/a;->K()Lvc/a;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lvc/a;->d:[F

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    return-object p2
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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public z(IF)V
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

    iget-object v0, p0, Lvc/a;->d:[F

    mul-int/lit8 p1, p1, 0x3

    aput p2, v0, p1

    add-int/lit8 v1, p1, 0x1

    aput p2, v0, v1

    add-int/lit8 p1, p1, 0x2

    aput p2, v0, p1

    iget p2, p0, Lvc/a;->e:I

    invoke-static {p2, p1}, LNc/b;->U0(II)I

    move-result p1

    iput p1, p0, Lvc/a;->e:I

    return-void
.end method
