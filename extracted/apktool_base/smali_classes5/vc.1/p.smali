.class public Lvc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/k;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:LJAVARuntime/Vector2Buffer;


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

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Lvc/k;-><init>(I)V

    iput-object v0, p0, Lvc/p;->a:Lvc/k;

    .line 3
    invoke-virtual {v0}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 8
    new-instance v0, Lvc/k;

    invoke-direct {v0, p1}, Lvc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lvc/p;->a:Lvc/k;

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
    iput-object p1, p0, Lvc/p;->a:Lvc/k;

    return-void
.end method


# virtual methods
.method public a()[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3

    invoke-virtual {p0}, Lvc/p;->b()I

    move-result v0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/p;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/p;->f(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public c(Z)Lvc/p;
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

    new-instance p1, Lvc/p;

    invoke-virtual {p0}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/p;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1

    :cond_0
    new-instance p1, Lvc/p;

    invoke-virtual {p0}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lvc/p;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object p1
.end method

.method public d()Lvc/p;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvc/p;->c(Z)Lvc/p;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    return-void
.end method

.method public f(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lvc/p;->g(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public g(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
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

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    return-object p2
.end method

.method public h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public i(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public j(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1
.end method

.method public k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/p;->b()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lvc/p;->p(I)V

    return-void
.end method

.method public l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-void
.end method

.method public m(FF)V
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

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object p1, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    return-void
.end method

.method public o(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lvc/p;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lvc/p;->i(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lvc/p;->j(I)F

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lvc/p;->r(IFF)V

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvc/p;->a:Lvc/k;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lvc/k;->i(I)V

    return-void
.end method

.method public p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->a:Lvc/k;

    mul-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lvc/k;->o(IZ)V

    iget-object p1, p0, Lvc/p;->a:Lvc/k;

    invoke-virtual {p1}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public q(IF)V
    .locals 0
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

    invoke-virtual {p0, p1, p2, p2}, Lvc/p;->r(IFF)V

    return-void
.end method

.method public r(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object p2, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    return-void
.end method

.method public s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
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

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, p1, v0, p2}, Lvc/p;->r(IFF)V

    return-void
.end method

.method public t(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
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

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lvc/p;->r(IFF)V

    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/p;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lvc/k;

    invoke-direct {v0, p1}, Lvc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lvc/p;->a:Lvc/k;

    return-void
.end method

.method public v(FF)V
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

    invoke-virtual {p0}, Lvc/p;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lvc/p;->r(IFF)V

    return-void
.end method

.method public w(LJAVARuntime/Vector2Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lvc/p;->c:LJAVARuntime/Vector2Buffer;

    return-void
.end method

.method public x()LJAVARuntime/Vector2Buffer;
    .locals 1

    iget-object v0, p0, Lvc/p;->c:LJAVARuntime/Vector2Buffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Vector2Buffer;

    invoke-direct {v0, p0}, LJAVARuntime/Vector2Buffer;-><init>(Lvc/p;)V

    iput-object v0, p0, Lvc/p;->c:LJAVARuntime/Vector2Buffer;

    :cond_0
    return-object v0
.end method
