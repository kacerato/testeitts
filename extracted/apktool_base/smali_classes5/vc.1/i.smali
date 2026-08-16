.class public Lvc/i;
.super LIc/m;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;


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

    invoke-direct {p0}, LIc/m;-><init>()V

    if-lez p1, :cond_0

    invoke-static {p1}, Luc/a;->h(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object p1

    iput-object p1, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->z()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public B(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->startsWith(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public C(Lvc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->startsWith(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public D(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_2

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lvc/i;->z()V

    return-void

    :cond_1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    iput-object v1, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "startIdx out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_2

    sub-int/2addr p2, p1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lvc/i;->z()V

    return-void

    :cond_1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    iput-object v1, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "substring range out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public capacity()I
    .locals 1

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public e(Lvc/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v3

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v1

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equalsNativeIgnoreCase(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNativeIgnoreCase(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f([C)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v3

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    iput-object v2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public get(I)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->get(I)C

    move-result p1

    return p1
.end method

.method public h(Lvc/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v3

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object v3, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, LIc/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public i([C)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v3

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    array-length p1, p1

    invoke-virtual {v2, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lvc/i;->w(IZ)V

    return-void
.end method

.method public k(Lvc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public l(Lvc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->equalsNativeIgnoreCase(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public m()[C
    .locals 2

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->array()[C

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get bytes on a empty buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lvc/i;->w(IZ)V

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->indexOf(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public p(Lvc/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->indexOf(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public position(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->position(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t set position on a empty string"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put(C)V

    return-void
.end method

.method public put([C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put([C)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t put on an empty buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;
    .locals 1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(IC)V
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

    .line 9
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(IC)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    .line 3
    :cond_1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(I[C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[C)V

    return-void
.end method

.method public set(I[CII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 5
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    .line 7
    :cond_1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(I[CII)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lvc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object p1, p1, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t put on an empty buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public v(I)V
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

    invoke-virtual {p0, p1, v0}, Lvc/i;->w(IZ)V

    return-void
.end method

.method public w(IZ)V
    .locals 1
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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lvc/i;->x(IZZ)V

    return-void
.end method

.method public x(IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData",
            "destroyOld"
        }
    .end annotation

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result v0

    if-eq p1, v0, :cond_5

    :cond_0
    if-lez p1, :cond_4

    invoke-static {p1}, Luc/a;->h(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lvc/i;->s()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->capacity()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lvc/i;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    :cond_3
    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lvc/i;->z()V

    :cond_5
    :goto_1
    return-void
.end method

.method public y(ILvc/i;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_1
    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p2, p2, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    return-void
.end method
