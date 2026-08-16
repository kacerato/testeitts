.class public Lil/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:Lil/g;

.field public final b:Lil/h;


# direct methods
.method public constructor <init>(Lil/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lil/e;->d()Lil/g;

    move-result-object v0

    iput-object v0, p0, Lil/a;->a:Lil/g;

    iput-object p1, p0, Lil/a;->b:Lil/h;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lil/a;->a:Lil/g;

    iget-object v0, v0, Lil/g;->c:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->d()I

    move-result v0

    return v0
.end method

.method public b([B)[B
    .locals 11

    iget-object v0, p0, Lil/a;->a:Lil/g;

    iget-object v0, v0, Lil/g;->c:Lbm/i;

    iget-object v1, p0, Lil/a;->b:Lil/h;

    iget-object v1, v1, Lil/h;->d:[B

    invoke-virtual {v0}, Lbm/i;->m()I

    move-result v2

    invoke-virtual {v0}, Lbm/i;->d()I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v2, [B

    new-instance v4, Lil/f;

    invoke-direct {v4, v0}, Lil/f;-><init>(Lbm/i;)V

    iget-object v5, p0, Lil/a;->b:Lil/h;

    iget-object v5, v5, Lil/h;->d:[B

    invoke-virtual {v4, p1, v5}, Lil/f;->d([B[B)Lil/k;

    move-result-object v4

    iget-object v5, v4, Lil/k;->a:[B

    iget v4, v4, Lil/k;->b:I

    new-instance v6, LIi/N;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, LIi/N;-><init>(I)V

    invoke-virtual {v6}, LIi/v;->f()I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v5

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9, v8}, LIi/v;->update([BII)V

    invoke-virtual {v6, v7, v9}, LIi/N;->c([BI)I

    move v8, v9

    :goto_0
    invoke-virtual {v0}, Lbm/i;->m()I

    move-result v10

    if-ge v8, v10, :cond_0

    invoke-virtual {v0}, Lbm/i;->j()I

    move-result v10

    add-int/2addr v10, v8

    aget-byte v10, v1, v10

    aput-byte v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_1
    invoke-virtual {v0}, Lbm/i;->d()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v0}, Lbm/i;->m()I

    move-result v8

    add-int/2addr v8, v1

    aget-byte v10, p1, v1

    aput-byte v10, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, LIi/v;->reset()V

    invoke-virtual {v6, v3, v9, v2}, LIi/v;->update([BII)V

    invoke-virtual {v6, v5, v9}, LIi/N;->c([BI)I

    int-to-byte p1, v4

    invoke-virtual {p0, v7, v5, p1}, Lil/a;->c([B[BB)V

    invoke-virtual {v0}, Lbm/i;->t()I

    move-result p1

    invoke-static {v7, v9, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-static {v7}, Lorg/bouncycastle/util/a;->n([B)V

    return-object p1
.end method

.method public final c([B[BB)V
    .locals 3

    not-int p3, p3

    add-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v2, v1

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
