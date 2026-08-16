.class public final LB2/E$a;
.super LB2/d;
.source "SourceFile"


# annotations
.annotation build LI2/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LB2/d;-><init>()V

    iput p1, p0, LB2/E$a;->a:I

    const/4 p1, 0x0

    iput p1, p0, LB2/E$a;->d:I

    iput-boolean p1, p0, LB2/E$a;->e:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(B)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/E$a;->a(B)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public a(B)LB2/r;
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v1}, LB2/E$a;->j(IJ)V

    return-object p0
.end method

.method public bridge synthetic c(C)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/E$a;->c(C)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public c(C)LB2/r;
    .locals 3

    const/4 v0, 0x2

    int-to-long v1, p1

    .line 2
    invoke-virtual {p0, v0, v1, v2}, LB2/E$a;->j(IJ)V

    return-object p0
.end method

.method public bridge synthetic e([BII)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LB2/E$a;->e([BII)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LB2/r;
    .locals 4

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lw2/H;->f0(III)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    if-gt v1, p3, :cond_0

    add-int/2addr v0, p2

    .line 3
    invoke-static {p1, v0}, LB2/E;->n([BI)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2, v3}, LB2/E$a;->j(IJ)V

    move v0, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 4
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, LB2/E$a;->a(B)LB2/r;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/E$a;->f(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LB2/r;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, LB2/E$a;->putInt(I)LB2/r;

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, LB2/E$a;->a(B)LB2/r;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/E$a;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;
    .locals 9

    .line 2
    sget-object v0, Lw2/f;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x80

    if-gt v2, v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v1, 0x1

    .line 5
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v1, 0x2

    .line 6
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v1, 0x3

    .line 7
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v5, v4, :cond_0

    if-ge v6, v4, :cond_0

    if-ge v7, v4, :cond_0

    if-ge v8, v4, :cond_0

    shl-int/lit8 v1, v6, 0x8

    or-int/2addr v1, v5

    shl-int/lit8 v4, v7, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v4, v8, 0x18

    or-int/2addr v1, v4

    int-to-long v4, v1

    .line 8
    invoke-virtual {p0, v3, v4, v5}, LB2/E$a;->j(IJ)V

    move v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_6

    .line 9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    int-to-long v6, v2

    .line 10
    invoke-virtual {p0, v5, v6, v7}, LB2/E$a;->j(IJ)V

    goto :goto_3

    :cond_1
    const/16 v6, 0x800

    if-ge v2, v6, :cond_2

    .line 11
    invoke-static {v2}, LB2/E;->o(C)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v6, v7}, LB2/E$a;->j(IJ)V

    goto :goto_3

    :cond_2
    const v6, 0xd800

    if-lt v2, v6, :cond_5

    const v6, 0xdfff

    if-le v2, v6, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 13
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/d;->b([B)LB2/r;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 14
    invoke-static {v6}, LB2/E;->q(I)J

    move-result-wide v6

    invoke-virtual {p0, v3, v6, v7}, LB2/E$a;->j(IJ)V

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    invoke-static {v2}, LB2/E;->p(C)J

    move-result-wide v6

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v6, v7}, LB2/E$a;->j(IJ)V

    :goto_3
    add-int/2addr v1, v5

    goto :goto_1

    :cond_6
    return-object p0

    .line 16
    :cond_7
    invoke-super {p0, p1, p2}, LB2/d;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public h()LB2/p;
    .locals 3

    iget-boolean v0, p0, LB2/E$a;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lw2/H;->g0(Z)V

    iput-boolean v1, p0, LB2/E$a;->e:Z

    iget v0, p0, LB2/E$a;->a:I

    iget-wide v1, p0, LB2/E$a;->b:J

    long-to-int v1, v1

    invoke-static {v1}, LB2/E;->l(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, LB2/E$a;->a:I

    iget v1, p0, LB2/E$a;->d:I

    invoke-static {v0, v1}, LB2/E;->r(II)LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public final j(IJ)V
    .locals 4

    iget-wide v0, p0, LB2/E$a;->b:J

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    iget v2, p0, LB2/E$a;->c:I

    shl-long/2addr p2, v2

    or-long/2addr p2, v0

    iput-wide p2, p0, LB2/E$a;->b:J

    mul-int/lit8 v0, p1, 0x8

    add-int/2addr v2, v0

    iput v2, p0, LB2/E$a;->c:I

    iget v0, p0, LB2/E$a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, LB2/E$a;->d:I

    const/16 p1, 0x20

    if-lt v2, p1, :cond_0

    iget v0, p0, LB2/E$a;->a:I

    long-to-int p2, p2

    invoke-static {p2}, LB2/E;->l(I)I

    move-result p2

    invoke-static {v0, p2}, LB2/E;->m(II)I

    move-result p2

    iput p2, p0, LB2/E$a;->a:I

    iget-wide p2, p0, LB2/E$a;->b:J

    ushr-long/2addr p2, p1

    iput-wide p2, p0, LB2/E$a;->b:J

    iget p2, p0, LB2/E$a;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, LB2/E$a;->c:I

    :cond_0
    return-void
.end method

.method public bridge synthetic putInt(I)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/E$a;->putInt(I)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)LB2/r;
    .locals 3

    const/4 v0, 0x4

    int-to-long v1, p1

    .line 2
    invoke-virtual {p0, v0, v1, v2}, LB2/E$a;->j(IJ)V

    return-object p0
.end method

.method public bridge synthetic putLong(J)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/E$a;->putLong(J)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)LB2/r;
    .locals 3

    long-to-int v0, p1

    int-to-long v0, v0

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v2, v0, v1}, LB2/E$a;->j(IJ)V

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    .line 3
    invoke-virtual {p0, v2, p1, p2}, LB2/E$a;->j(IJ)V

    return-object p0
.end method
