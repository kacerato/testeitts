.class public abstract LIi/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;
.implements LBi/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static final j:I = 0x2000

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B


# instance fields
.field public final a:[B

.field public final b:LIi/u$c;

.field public final c:LIi/u$c;

.field public final d:I

.field public e:[B

.field public f:Z

.field public g:I

.field public h:I

.field public final i:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, LIi/u$a;->k:[B

    new-array v0, v0, [B

    const/16 v1, 0xb

    aput-byte v1, v0, v3

    sput-object v0, LIi/u$a;->l:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LIi/u$a;->m:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, LIi/u$a;->n:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(IIILBi/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    new-array p3, p3, [B

    iput-object p3, p0, LIi/u$a;->a:[B

    new-instance p3, LIi/u$c;

    invoke-direct {p3, p1, p2}, LIi/u$c;-><init>(II)V

    iput-object p3, p0, LIi/u$a;->b:LIi/u$c;

    new-instance p3, LIi/u$c;

    invoke-direct {p3, p1, p2}, LIi/u$c;-><init>(II)V

    iput-object p3, p0, LIi/u$a;->c:LIi/u$c;

    shr-int/lit8 p2, p1, 0x2

    iput p2, p0, LIi/u$a;->d:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, LIi/u$a;->a([B)V

    iput-object p4, p0, LIi/u$a;->i:LBi/o;

    invoke-static {p0, p1, p4}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public static g(J)[B
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move-wide v6, p0

    move v2, v4

    :goto_0
    shr-long/2addr v6, v3

    cmp-long v8, v6, v0

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    move v2, v5

    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    :goto_1
    if-ge v5, v2, :cond_2

    sub-int v1, v2, v5

    sub-int/2addr v1, v4

    mul-int/2addr v1, v3

    shr-long v6, p0, v1

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a([B)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    int-to-long v2, v1

    invoke-static {v2, v3}, LIi/u$a;->g(J)[B

    move-result-object v2

    if-nez p1, :cond_1

    array-length p1, v2

    add-int/2addr p1, v1

    new-array p1, p1, [B

    goto :goto_1

    :cond_1
    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object p1

    :goto_1
    iput-object p1, p0, LIi/u$a;->e:[B

    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public c([BI)I
    .locals 1

    invoke-virtual {p0}, LIi/u$a;->f()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LIi/u$a;->e([BII)I

    move-result p1

    return p1
.end method

.method public d(LIi/u$b;)V
    .locals 0

    invoke-virtual {p1}, LIi/u$b;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LIi/u$a;->a([B)V

    invoke-virtual {p0}, LIi/u$a;->reset()V

    return-void
.end method

.method public e([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/u$a;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LIi/u$a;->h([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/u$a;->reset()V

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already outputting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/u$a;->d:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/u$a;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LIi/u$a;->n()V

    :cond_0
    if-ltz p3, :cond_1

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    invoke-static {v0, p1, p2, p3}, LIi/u$c;->f(LIi/u$c;[BII)V

    return p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid output length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->e(LIi/u$c;)I

    move-result v0

    return v0
.end method

.method public final j([BII)V
    .locals 5

    iget-boolean v0, p0, LIi/u$a;->f:Z

    if-nez v0, :cond_5

    iget v0, p0, LIi/u$a;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIi/u$a;->c:LIi/u$c;

    :goto_0
    iget v1, p0, LIi/u$a;->h:I

    const/16 v2, 0x2000

    rsub-int v1, v1, 0x2000

    if-lt v1, p3, :cond_1

    invoke-static {v0, p1, p2, p3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget p1, p0, LIi/u$a;->h:I

    add-int/2addr p1, p3

    iput p1, p0, LIi/u$a;->h:I

    return-void

    :cond_1
    if-lez v1, :cond_2

    invoke-static {v0, p1, p2, v1}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget v0, p0, LIi/u$a;->h:I

    add-int/2addr v0, v1

    iput v0, p0, LIi/u$a;->h:I

    :cond_2
    :goto_1
    if-ge v1, p3, :cond_4

    iget v0, p0, LIi/u$a;->h:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LIi/u$a;->l(Z)V

    :cond_3
    sub-int v0, p3, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, LIi/u$a;->c:LIi/u$c;

    add-int v4, p2, v1

    invoke-static {v3, p1, v4, v0}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget v3, p0, LIi/u$a;->h:I

    add-int/2addr v3, v0

    iput v3, p0, LIi/u$a;->h:I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LIi/u$a;->l(Z)V

    iget v1, p0, LIi/u$a;->g:I

    int-to-long v1, v1

    invoke-static {v1, v2}, LIi/u$a;->g(J)[B

    move-result-object v1

    iget-object v2, p0, LIi/u$a;->b:LIi/u$c;

    array-length v3, v1

    invoke-static {v2, v1, v0, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget-object v1, p0, LIi/u$a;->b:LIi/u$c;

    sget-object v2, LIi/u$a;->m:[B

    array-length v3, v2

    invoke-static {v1, v2, v0, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->i(LIi/u$c;)V

    return-void
.end method

.method public final l(Z)V
    .locals 4

    iget v0, p0, LIi/u$a;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    sget-object v2, LIi/u$a;->n:[B

    array-length v3, v2

    invoke-static {v0, v2, v1, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIi/u$a;->c:LIi/u$c;

    sget-object v2, LIi/u$a;->l:[B

    array-length v3, v2

    invoke-static {v0, v2, v1, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget v0, p0, LIi/u$a;->d:I

    new-array v2, v0, [B

    iget-object v3, p0, LIi/u$a;->c:LIi/u$c;

    invoke-static {v3, v2, v1, v0}, LIi/u$c;->f(LIi/u$c;[BII)V

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    iget v3, p0, LIi/u$a;->d:I

    invoke-static {v0, v2, v1, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget-object v0, p0, LIi/u$a;->c:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->h(LIi/u$c;)V

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, LIi/u$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LIi/u$a;->g:I

    :cond_1
    iput v1, p0, LIi/u$a;->h:I

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    sget-object v1, LIi/u$a;->k:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, LIi/u$c;->g(LIi/u$c;[BII)V

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->i(LIi/u$c;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, LIi/u$a;->e:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, LIi/u$a;->j([BII)V

    iget v0, p0, LIi/u$a;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LIi/u$a;->m()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LIi/u$a;->k()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LIi/u$a;->b:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->h(LIi/u$c;)V

    iget-object v0, p0, LIi/u$a;->c:LIi/u$c;

    invoke-static {v0}, LIi/u$c;->h(LIi/u$c;)V

    const/4 v0, 0x0

    iput v0, p0, LIi/u$a;->g:I

    iput v0, p0, LIi/u$a;->h:I

    iput-boolean v0, p0, LIi/u$a;->f:Z

    return-void
.end method

.method public update(B)V
    .locals 2

    .line 1
    iget-object v0, p0, LIi/u$a;->a:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LIi/u$a;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, LIi/u$a;->j([BII)V

    return-void
.end method
