.class public Lyc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 3
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

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lyc/b;->a:I

    mul-int/lit8 p1, p1, 0x4

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lyc/b;->c:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lyc/b;->b:I

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 9
    array-length v0, p1

    if-lez v0, :cond_0

    .line 10
    array-length v0, p1

    iput v0, p0, Lyc/b;->a:I

    mul-int/lit8 v0, v0, 0x4

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lyc/b;->c:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lyc/b;->b:I

    .line 15
    invoke-virtual {p0, p1}, Lyc/b;->K([I)V

    .line 16
    iput v0, p0, Lyc/b;->b:I

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Array is empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Lyc/b;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "failCase"
        }
    .end annotation

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lyc/b;->x()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public A()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public B()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lyc/b;->b:I

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public G(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lyc/b;->b:I

    return-void
.end method

.method public H(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    iget v0, p0, Lyc/b;->b:I

    invoke-virtual {p0, v0}, Lyc/b;->c(I)V

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    iget v1, p0, Lyc/b;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget p1, p0, Lyc/b;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyc/b;->b:I

    return-void
.end method

.method public I(Lyc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lyc/b;->b:I

    invoke-virtual {p0, v0, p1}, Lyc/b;->O(ILyc/b;)V

    iget v0, p0, Lyc/b;->b:I

    iget p1, p1, Lyc/b;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lyc/b;->b:I

    return-void
.end method

.method public J(Lyc/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "count"
        }
    .end annotation

    iget v0, p0, Lyc/b;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lyc/b;->P(ILyc/b;II)V

    iget p1, p0, Lyc/b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lyc/b;->b:I

    return-void
.end method

.method public K([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    const-string v0, "value can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lyc/b;->b:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget v1, p0, Lyc/b;->a:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object v0

    iget v1, p0, Lyc/b;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    iget v0, p0, Lyc/b;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lyc/b;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget v0, p0, Lyc/b;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lyc/b;->n(III)V

    iget p1, p0, Lyc/b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lyc/b;->b:I

    return-void
.end method

.method public M(Lyc/b;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "increment"
        }
    .end annotation

    iget v1, p0, Lyc/b;->b:I

    iget v4, p1, Lyc/b;->a:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lyc/b;->Q(ILyc/b;III)V

    iget p2, p0, Lyc/b;->b:I

    iget p1, p1, Lyc/b;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lyc/b;->b:I

    return-void
.end method

.method public N(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    invoke-virtual {p0, p1}, Lyc/b;->c(I)V

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void
.end method

.method public O(ILyc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other"
        }
    .end annotation

    iget v0, p2, Lyc/b;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lyc/b;->P(ILyc/b;II)V

    return-void
.end method

.method public P(ILyc/b;II)V
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

    invoke-virtual {p0}, Lyc/b;->d()V

    if-eqz p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_2

    iget v0, p2, Lyc/b;->a:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p4}, Lyc/b;->e(II)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, p2}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > other.capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q(ILyc/b;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count",
            "increment"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    if-eqz p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_2

    iget v0, p2, Lyc/b;->a:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p4}, Lyc/b;->e(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Lyc/b;->q(I)I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p0, v1, v2}, Lyc/b;->N(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > other.capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "other can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lyc/b;->N(II)V

    return-void
.end method

.method public S(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    double-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/b;->N(II)V

    return-void
.end method

.method public T(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lyc/b;->N(II)V

    return-void
.end method

.method public U(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lyc/b;->N(II)V

    return-void
.end method

.method public V(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lyc/b;->N(II)V

    return-void
.end method

.method public W(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lyc/b;->b:I

    return-void
.end method

.method public X()[I
    .locals 4

    invoke-virtual {p0}, Lyc/b;->d()V

    iget v0, p0, Lyc/b;->a:I

    new-array v0, v0, [I

    iget-object v1, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    iget v3, p0, Lyc/b;->a:I

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    iget v3, p0, Lyc/b;->a:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public Y()Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lyc/b;->z()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public Z()Ljava/nio/IntBuffer;
    .locals 1

    invoke-virtual {p0}, Lyc/b;->A()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lyc/b;->d()V

    invoke-virtual {p0}, Lyc/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lyc/b;->p()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lyc/b;->q(I)I

    move-result v4

    and-int/2addr v4, v2

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lyc/b;->Y()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lyc/b;->a:I

    return v0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lyc/b;->a:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->f()Lyc/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "count"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iget p2, p0, Lyc/b;->a:I

    if-ge p1, p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") >= ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lyc/b;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lyc/b;
    .locals 2

    new-instance v0, Lyc/b;

    iget v1, p0, Lyc/b;->a:I

    invoke-direct {v0, v1}, Lyc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyc/b;->G(I)V

    invoke-virtual {v0, p0}, Lyc/b;->I(Lyc/b;)V

    invoke-virtual {v0, v1}, Lyc/b;->G(I)V

    return-object v0
.end method

.method public g(Lyc/b;)Lyc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lyc/b;

    invoke-virtual {p0}, Lyc/b;->b()I

    move-result v1

    invoke-virtual {p1}, Lyc/b;->b()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lyc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyc/b;->G(I)V

    invoke-virtual {v0, p0}, Lyc/b;->I(Lyc/b;)V

    invoke-virtual {v0, p1}, Lyc/b;->I(Lyc/b;)V

    invoke-virtual {v0, v1}, Lyc/b;->G(I)V

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lyc/b;->b0()Z

    return-void
.end method

.method public j()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping HeapIntBuffer with capacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyc/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyc/b;->a:I

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lyc/b;->q(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Lyc/b;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lyc/b;->a:I

    iget v2, p0, Lyc/b;->a:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lyc/b;->a:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lyc/b;->q(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lyc/b;->q(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public l(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public m(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lyc/b;->a:I

    invoke-virtual {p0, v0, p1, v1}, Lyc/b;->n(III)V

    return-void
.end method

.method public n(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    invoke-virtual {p0, p1, p3}, Lyc/b;->e(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    add-int v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    array-length v0, p1

    iget v1, p0, Lyc/b;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p0, Lyc/b;->a:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    iget v2, p0, Lyc/b;->a:I

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()I
    .locals 3

    invoke-virtual {p0}, Lyc/b;->d()V

    iget v0, p0, Lyc/b;->a:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lyc/b;->a:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public q(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lyc/b;->d()V

    invoke-virtual {p0, p1}, Lyc/b;->c(I)V

    iget-object v0, p0, Lyc/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public r(I)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/b;->q(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public s(I)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/b;->q(I)I

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method public t(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/b;->q(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public u(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/b;->q(I)I

    move-result p1

    return p1
.end method

.method public v(I)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyc/b;->q(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lyc/b;->a:I

    return v0
.end method

.method public x()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public z()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lyc/b;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method
