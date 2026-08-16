.class public Lvc/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public b:LJAVARuntime/Point3Buffer;


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
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public a()[LJAVARuntime/Point3;
    .locals 3

    invoke-virtual {p0}, Lvc/n;->b()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Point3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lvc/n;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lvc/n;->e(I)LJAVARuntime/Point3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public c()Lvc/n;
    .locals 2

    new-instance v0, Lvc/n;

    iget-object v1, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-void
.end method

.method public e(I)LJAVARuntime/Point3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Point3;

    invoke-direct {v0}, LJAVARuntime/Point3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lvc/n;->f(ILJAVARuntime/Point3;)LJAVARuntime/Point3;

    move-result-object p1

    return-object p1
.end method

.method public f(ILJAVARuntime/Point3;)LJAVARuntime/Point3;
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

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, LJAVARuntime/Point3;->setX(I)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, LJAVARuntime/Point3;->setY(I)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    invoke-virtual {p2, p1}, LJAVARuntime/Point3;->setZ(I)V

    return-object p2
.end method

.method public g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public h(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public i(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

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
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    return-void
.end method

.method public l(III)V
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

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object p1, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object p1, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public m(LJAVARuntime/Point3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, LJAVARuntime/Point3;->getZ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public n(II)V
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

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    return-void
.end method

.method public o(IIII)V
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

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p2, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p2, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    return-void
.end method

.method public p(ILJAVARuntime/Point3;)V
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

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, LJAVARuntime/Point3;->getX()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, LJAVARuntime/Point3;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2}, LJAVARuntime/Point3;->getZ()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public r(LJAVARuntime/Point3Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lvc/n;->b:LJAVARuntime/Point3Buffer;

    return-void
.end method

.method public s()LJAVARuntime/Point3Buffer;
    .locals 1

    iget-object v0, p0, Lvc/n;->b:LJAVARuntime/Point3Buffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Point3Buffer;

    invoke-direct {v0, p0}, LJAVARuntime/Point3Buffer;-><init>(Lvc/n;)V

    iput-object v0, p0, Lvc/n;->b:LJAVARuntime/Point3Buffer;

    :cond_0
    return-object v0
.end method
