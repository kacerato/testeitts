.class public Lnet/jpountz/lz4/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final f:I = 0xffff

.field public static final synthetic g:Z


# instance fields
.field public a:I

.field public final b:I

.field public final c:[I

.field public final d:[S

.field public final synthetic e:Lnet/jpountz/lz4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/n;I)V
    .locals 0

    iput-object p1, p0, Lnet/jpountz/lz4/n$a;->e:Lnet/jpountz/lz4/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/jpountz/lz4/n$a;->b:I

    iput p2, p0, Lnet/jpountz/lz4/n$a;->a:I

    const p1, 0x8000

    new-array p1, p1, [I

    iput-object p1, p0, Lnet/jpountz/lz4/n$a;->c:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    const/high16 p1, 0x10000

    new-array p1, p1, [S

    iput-object p1, p0, Lnet/jpountz/lz4/n$a;->d:[S

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    invoke-static {p1}, Lnet/jpountz/lz4/C;->g(I)I

    move-result p1

    iget-object v0, p0, Lnet/jpountz/lz4/n$a;->c:[I

    aget v1, v0, p1

    sub-int v1, p2, v1

    const/high16 v2, 0x10000

    const v3, 0xffff

    if-lt v1, v2, :cond_0

    move v1, v3

    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/n$a;->d:[S

    and-int/2addr v3, p2

    int-to-short v1, v1

    aput-short v1, v2, v3

    aput p2, v0, p1

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->h(Ljava/nio/ByteBuffer;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->a(II)V

    return-void
.end method

.method public final c([BI)V
    .locals 0

    invoke-static {p1, p2}, Lnet/jpountz/util/c;->e([BI)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->a(II)V

    return-void
.end method

.method public final d(I)I
    .locals 1

    invoke-static {p1}, Lnet/jpountz/lz4/C;->g(I)I

    move-result p1

    iget-object v0, p0, Lnet/jpountz/lz4/n$a;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final e(Ljava/nio/ByteBuffer;I)I
    .locals 0

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->h(Ljava/nio/ByteBuffer;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/jpountz/lz4/n$a;->d(I)I

    move-result p1

    return p1
.end method

.method public final f([BI)I
    .locals 0

    invoke-static {p1, p2}, Lnet/jpountz/util/c;->e([BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/jpountz/lz4/n$a;->d(I)I

    move-result p1

    return p1
.end method

.method public g(ILjava/nio/ByteBuffer;)V
    .locals 1

    :goto_0
    iget v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p2, v0}, Lnet/jpountz/lz4/n$a;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(I[B)V
    .locals 1

    :goto_0
    iget v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p2, v0}, Lnet/jpountz/lz4/n$a;->c([BI)V

    iget v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/jpountz/lz4/n$a;->a:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/nio/ByteBuffer;IILnet/jpountz/lz4/C$a;)Z
    .locals 8

    iput p2, p4, Lnet/jpountz/lz4/C$a;->a:I

    const/4 v0, 0x0

    iput v0, p4, Lnet/jpountz/lz4/C$a;->c:I

    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/n$a;->g(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->e(Ljava/nio/ByteBuffer;I)I

    move-result v1

    add-int/lit8 v2, p2, -0x4

    if-lt v1, v2, :cond_1

    if-gt v1, p2, :cond_1

    iget v2, p0, Lnet/jpountz/lz4/n$a;->b:I

    if-lt v1, v2, :cond_1

    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/c;->i(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p3}, Lnet/jpountz/lz4/c;->a(Ljava/nio/ByteBuffer;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iput v3, p4, Lnet/jpountz/lz4/C$a;->c:I

    iput v1, p4, Lnet/jpountz/lz4/C$a;->b:I

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0, v1}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v2, v0

    move v3, v2

    :goto_1
    move v4, v0

    :goto_2
    iget-object v5, p0, Lnet/jpountz/lz4/n$a;->e:Lnet/jpountz/lz4/n;

    invoke-static {v5}, Lnet/jpountz/lz4/n;->i(Lnet/jpountz/lz4/n;)I

    move-result v5

    const v6, 0xffff

    if-ge v4, v5, :cond_4

    iget v5, p0, Lnet/jpountz/lz4/n$a;->b:I

    sub-int v7, p2, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v1, v5, :cond_4

    if-le v1, p2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/c;->i(Ljava/nio/ByteBuffer;II)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, p2, 0x4

    invoke-static {p1, v5, v6, p3}, Lnet/jpountz/lz4/c;->a(Ljava/nio/ByteBuffer;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    iget v6, p4, Lnet/jpountz/lz4/C$a;->c:I

    if-le v5, v6, :cond_3

    iput v1, p4, Lnet/jpountz/lz4/C$a;->b:I

    iput v5, p4, Lnet/jpountz/lz4/C$a;->c:I

    :cond_3
    invoke-virtual {p0, v1}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p3, 0x1

    if-eqz v3, :cond_6

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x3

    :goto_4
    sub-int v1, v3, v2

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->d:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->d:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->c:[I

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->h(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-static {v4}, Lnet/jpountz/lz4/C;->g(I)I

    move-result v4

    aput p2, v1, v4

    add-int/2addr p2, p3

    if-lt p2, v3, :cond_5

    iput v3, p0, Lnet/jpountz/lz4/n$a;->a:I

    :cond_6
    iget p1, p4, Lnet/jpountz/lz4/C$a;->c:I

    if-eqz p1, :cond_7

    move v0, p3

    :cond_7
    return v0
.end method

.method public j([BIILnet/jpountz/lz4/C$a;)Z
    .locals 8

    iput p2, p4, Lnet/jpountz/lz4/C$a;->a:I

    const/4 v0, 0x0

    iput v0, p4, Lnet/jpountz/lz4/C$a;->c:I

    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/n$a;->h(I[B)V

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->f([BI)I

    move-result v1

    add-int/lit8 v2, p2, -0x4

    if-lt v1, v2, :cond_1

    if-gt v1, p2, :cond_1

    iget v2, p0, Lnet/jpountz/lz4/n$a;->b:I

    if-lt v1, v2, :cond_1

    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/z;->j([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p3}, Lnet/jpountz/lz4/z;->a([BIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iput v3, p4, Lnet/jpountz/lz4/C$a;->c:I

    iput v1, p4, Lnet/jpountz/lz4/C$a;->b:I

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0, v1}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v2, v0

    move v3, v2

    :goto_1
    move v4, v0

    :goto_2
    iget-object v5, p0, Lnet/jpountz/lz4/n$a;->e:Lnet/jpountz/lz4/n;

    invoke-static {v5}, Lnet/jpountz/lz4/n;->i(Lnet/jpountz/lz4/n;)I

    move-result v5

    const v6, 0xffff

    if-ge v4, v5, :cond_4

    iget v5, p0, Lnet/jpountz/lz4/n$a;->b:I

    sub-int v7, p2, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v1, v5, :cond_4

    if-le v1, p2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/z;->j([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, p2, 0x4

    invoke-static {p1, v5, v6, p3}, Lnet/jpountz/lz4/z;->a([BIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    iget v6, p4, Lnet/jpountz/lz4/C$a;->c:I

    if-le v5, v6, :cond_3

    iput v1, p4, Lnet/jpountz/lz4/C$a;->b:I

    iput v5, p4, Lnet/jpountz/lz4/C$a;->c:I

    :cond_3
    invoke-virtual {p0, v1}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p3, 0x1

    if-eqz v3, :cond_6

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x3

    :goto_4
    sub-int v1, v3, v2

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->d:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->d:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    iget-object v1, p0, Lnet/jpountz/lz4/n$a;->c:[I

    invoke-static {p1, p2}, Lnet/jpountz/util/c;->e([BI)I

    move-result v4

    invoke-static {v4}, Lnet/jpountz/lz4/C;->g(I)I

    move-result v4

    aput p2, v1, v4

    add-int/2addr p2, p3

    if-lt p2, v3, :cond_5

    iput v3, p0, Lnet/jpountz/lz4/n$a;->a:I

    :cond_6
    iget p1, p4, Lnet/jpountz/lz4/C$a;->c:I

    if-eqz p1, :cond_7

    move v0, p3

    :cond_7
    return v0
.end method

.method public k(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/C$a;)Z
    .locals 6

    iput p5, p6, Lnet/jpountz/lz4/C$a;->c:I

    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/n$a;->g(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->e(Ljava/nio/ByteBuffer;I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/jpountz/lz4/n$a;->e:Lnet/jpountz/lz4/n;

    invoke-static {v3}, Lnet/jpountz/lz4/n;->i(Lnet/jpountz/lz4/n;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lnet/jpountz/lz4/n$a;->b:I

    const v4, 0xffff

    sub-int v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v0, v3, :cond_2

    if-le v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p2}, Lnet/jpountz/lz4/c;->i(Ljava/nio/ByteBuffer;II)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p4}, Lnet/jpountz/lz4/c;->a(Ljava/nio/ByteBuffer;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lnet/jpountz/lz4/n$a;->b:I

    invoke-static {p1, v0, p2, v4, p3}, Lnet/jpountz/lz4/c;->b(Ljava/nio/ByteBuffer;IIII)I

    move-result v4

    add-int/2addr v3, v4

    iget v5, p6, Lnet/jpountz/lz4/C$a;->c:I

    if-le v3, v5, :cond_1

    iput v3, p6, Lnet/jpountz/lz4/C$a;->c:I

    sub-int v3, v0, v4

    iput v3, p6, Lnet/jpountz/lz4/C$a;->b:I

    sub-int v3, p2, v4

    iput v3, p6, Lnet/jpountz/lz4/C$a;->a:I

    :cond_1
    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p6, Lnet/jpountz/lz4/C$a;->c:I

    if-le p1, p5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public l([BIIIILnet/jpountz/lz4/C$a;)Z
    .locals 6

    iput p5, p6, Lnet/jpountz/lz4/C$a;->c:I

    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/n$a;->h(I[B)V

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/n$a;->f([BI)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/jpountz/lz4/n$a;->e:Lnet/jpountz/lz4/n;

    invoke-static {v3}, Lnet/jpountz/lz4/n;->i(Lnet/jpountz/lz4/n;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lnet/jpountz/lz4/n$a;->b:I

    const v4, 0xffff

    sub-int v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v0, v3, :cond_2

    if-le v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p2}, Lnet/jpountz/lz4/z;->j([BII)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p4}, Lnet/jpountz/lz4/z;->a([BIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lnet/jpountz/lz4/n$a;->b:I

    invoke-static {p1, v0, p2, v4, p3}, Lnet/jpountz/lz4/z;->b([BIIII)I

    move-result v4

    add-int/2addr v3, v4

    iget v5, p6, Lnet/jpountz/lz4/C$a;->c:I

    if-le v3, v5, :cond_1

    iput v3, p6, Lnet/jpountz/lz4/C$a;->c:I

    sub-int v3, v0, v4

    iput v3, p6, Lnet/jpountz/lz4/C$a;->b:I

    sub-int v3, p2, v4

    iput v3, p6, Lnet/jpountz/lz4/C$a;->a:I

    :cond_1
    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/n$a;->m(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p6, Lnet/jpountz/lz4/C$a;->c:I

    if-le p1, p5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final m(I)I
    .locals 3

    iget-object v0, p0, Lnet/jpountz/lz4/n$a;->d:[S

    const v1, 0xffff

    and-int v2, p1, v1

    aget-short v0, v0, v2

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1
.end method
