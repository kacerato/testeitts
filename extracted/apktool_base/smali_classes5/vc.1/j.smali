.class public Lvc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Luc/a;->g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/j;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lvc/j;->i(IZ)V

    return-void
.end method

.method public c(I)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/j;->a()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lvc/j;->i(IZ)V

    return-void
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    return-void
.end method

.method public g([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put([B)V

    return-void
.end method

.method public h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lvc/j;->i(IZ)V

    return-void
.end method

.method public i(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-static {p1}, Luc/a;->g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    iget-object p1, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p2

    if-ge p1, p2, :cond_1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object p2, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroy()V

    iput-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :cond_2
    return-void
.end method

.method public j(IB)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    iget-object p1, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    return-void
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lvc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    return v0
.end method
