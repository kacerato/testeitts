.class public final LE9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blockType",
            "face",
            "textureIndex"
        }
    .end annotation

    iget v0, p0, LE9/e;->e:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p1, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p1, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p1, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, v0, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p1, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, v0, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p1, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, v0, p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LE9/e;->e:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    iput-object v1, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_0
    iget-object v0, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    iput-object v1, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_1
    iget-object v0, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    iput-object v1, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_2
    iget-object v0, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    iput-object v1, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, LE9/e;->e:I

    iput v0, p0, LE9/e;->f:I

    return-void
.end method

.method public final c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedFaceCapacity"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, LE9/e;->f:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LE9/e;->b()V

    iput p1, p0, LE9/e;->f:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v1, p1, 0x3

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wantedFaceCapacity < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LE9/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LE9/e;->e:I

    return v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LE9/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LE9/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LE9/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedFaceCapacity"
        }
    .end annotation

    invoke-virtual {p0, p1}, LE9/e;->c(I)V

    const/4 p1, 0x0

    iput p1, p0, LE9/e;->e:I

    return-void
.end method
