.class public Lpn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0x10

.field public static final c:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is32Bit"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Ljava/io/InputStream;I)Ljn/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpn/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lpn/c;->d(Ljava/nio/ByteBuffer;IZ)Ljn/q;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/nio/ByteBuffer;I)Ljn/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lpn/c;->d(Ljava/nio/ByteBuffer;IZ)Ljn/q;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;IZ)Ljn/q;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "maxVertPerPoly",
            "is32Bit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljn/q;

    invoke-direct {v0}, Ljn/q;-><init>()V

    new-instance v1, Ljn/r;

    invoke-direct {v1}, Ljn/r;-><init>()V

    iput-object v1, v0, Ljn/q;->a:Ljn/r;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Ljn/r;->a:I

    const v3, 0x444e4156

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Lpn/b;->a(I)I

    move-result v2

    iput v2, v1, Ljn/r;->a:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid magic"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Ljn/r;->b:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const v4, 0x8807

    if-lt v2, v4, :cond_3

    const v4, 0x8809

    if-gt v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Ljn/r;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->f:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->g:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->h:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->j:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->k:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->l:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->m:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->n:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Ljn/r;->o:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    iput v3, v1, Ljn/r;->p:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    iput v3, v1, Ljn/r;->q:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    iput v3, v1, Ljn/r;->r:F

    move v3, v4

    :goto_3
    const/4 v5, 0x3

    if-ge v3, v5, :cond_6

    iget-object v5, v1, Ljn/r;->s:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v4, v5, :cond_7

    iget-object v3, v1, Ljn/r;->t:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    iput v3, v1, Ljn/r;->u:F

    iget v3, v1, Ljn/r;->h:I

    invoke-virtual {p0, p1, v3}, Lpn/c;->l(Ljava/nio/ByteBuffer;I)[F

    move-result-object v3

    iput-object v3, v0, Ljn/q;->b:[F

    invoke-virtual {p0, p1, v1, p2}, Lpn/c;->k(Ljava/nio/ByteBuffer;Ljn/r;I)[Ljn/G;

    move-result-object p2

    iput-object p2, v0, Ljn/q;->c:[Ljn/G;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget v3, v1, Ljn/r;->i:I

    invoke-static {p3}, Lpn/c;->a(Z)I

    move-result p3

    mul-int/2addr v3, p3

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    invoke-virtual {p0, p1, v1, v2}, Lpn/c;->j(Ljava/nio/ByteBuffer;Ljn/r;Z)[Ljn/H;

    move-result-object p2

    iput-object p2, v0, Ljn/q;->d:[Ljn/H;

    iget p2, v1, Ljn/r;->k:I

    invoke-virtual {p0, p1, p2}, Lpn/c;->l(Ljava/nio/ByteBuffer;I)[F

    move-result-object p2

    iput-object p2, v0, Ljn/q;->e:[F

    invoke-virtual {p0, p1, v1}, Lpn/c;->h(Ljava/nio/ByteBuffer;Ljn/r;)[I

    move-result-object p2

    iput-object p2, v0, Ljn/q;->f:[I

    invoke-virtual {p0, p1, v1}, Lpn/c;->g(Ljava/nio/ByteBuffer;Ljn/r;)[Ljn/a;

    move-result-object p2

    iput-object p2, v0, Ljn/q;->g:[Ljn/a;

    invoke-virtual {p0, p1, v1}, Lpn/c;->i(Ljava/nio/ByteBuffer;Ljn/r;)[Ljn/F;

    move-result-object p1

    iput-object p1, v0, Ljn/q;->h:[Ljn/F;

    return-object v0
.end method

.method public e(Ljava/io/InputStream;I)Ljn/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpn/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lpn/c;->d(Ljava/nio/ByteBuffer;IZ)Ljn/q;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;I)Ljn/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lpn/c;->d(Ljava/nio/ByteBuffer;IZ)Ljn/q;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/nio/ByteBuffer;Ljn/r;)[Ljn/a;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "header"
        }
    .end annotation

    iget v0, p2, Ljn/r;->m:I

    new-array v1, v0, [Ljn/a;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    new-instance v4, Ljn/a;

    invoke-direct {v4}, Ljn/a;-><init>()V

    aput-object v4, v1, v3

    iget v4, p2, Ljn/r;->b:I

    const v5, 0x8809

    const/4 v6, 0x3

    if-ge v4, v5, :cond_1

    move v4, v2

    :goto_1
    const v5, 0xffff

    if-ge v4, v6, :cond_0

    aget-object v7, v1, v3

    iget-object v7, v7, Ljn/a;->a:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    and-int/2addr v5, v8

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v7, v1, v3

    iget-object v7, v7, Ljn/a;->b:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    and-int/2addr v8, v5

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_2

    aget-object v5, v1, v3

    iget-object v5, v5, Ljn/a;->a:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_4
    if-ge v4, v6, :cond_3

    aget-object v5, v1, v3

    iget-object v5, v5, Ljn/a;->b:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Ljn/a;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final h(Ljava/nio/ByteBuffer;Ljn/r;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "header"
        }
    .end annotation

    iget p2, p2, Ljn/r;->l:I

    mul-int/lit8 p2, p2, 0x4

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final i(Ljava/nio/ByteBuffer;Ljn/r;)[Ljn/F;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "header"
        }
    .end annotation

    iget p2, p2, Ljn/r;->n:I

    new-array v0, p2, [Ljn/F;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    new-instance v3, Ljn/F;

    invoke-direct {v3}, Ljn/F;-><init>()V

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    iget-object v4, v4, Ljn/F;->a:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    iput v4, v3, Ljn/F;->b:F

    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v3, Ljn/F;->c:I

    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v3, Ljn/F;->d:I

    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v3, Ljn/F;->e:I

    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Ljn/F;->f:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final j(Ljava/nio/ByteBuffer;Ljn/r;Z)[Ljn/H;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "header",
            "cCompatibility"
        }
    .end annotation

    iget p2, p2, Ljn/r;->j:I

    new-array v0, p2, [Ljn/H;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    new-instance v2, Ljn/H;

    invoke-direct {v2}, Ljn/H;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Ljn/H;->a:I

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Ljn/H;->b:I

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Ljn/H;->c:I

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Ljn/H;->d:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final k(Ljava/nio/ByteBuffer;Ljn/r;I)[Ljn/G;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "header",
            "maxVertPerPoly"
        }
    .end annotation

    iget v0, p2, Ljn/r;->g:I

    new-array v1, v0, [Ljn/G;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    new-instance v4, Ljn/G;

    invoke-direct {v4, v3, p3}, Ljn/G;-><init>(II)V

    aput-object v4, v1, v3

    iget v4, p2, Ljn/r;->b:I

    const v5, 0x8808

    if-ge v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    :cond_0
    move v4, v2

    :goto_1
    aget-object v5, v1, v3

    iget-object v5, v5, Ljn/G;->b:[I

    array-length v6, v5

    const v7, 0xffff

    if-ge v4, v6, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    and-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    aget-object v5, v1, v3

    iget-object v6, v5, Ljn/G;->c:[I

    array-length v8, v6

    if-ge v4, v8, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    and-int/2addr v5, v7

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v7

    iput v4, v5, Ljn/G;->d:I

    aget-object v4, v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Ljn/G;->e:I

    aget-object v4, v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Ljn/G;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final l(Ljava/nio/ByteBuffer;I)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "count"
        }
    .end annotation

    mul-int/lit8 p2, p2, 0x3

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
