.class public Lrl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:Lrl/f;

.field public final b:Lcl/d;


# direct methods
.method public constructor <init>(Lrl/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl/a;->a:Lrl/f;

    new-instance v0, Lcl/d;

    invoke-virtual {p1}, Lrl/f;->d()Lcl/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcl/d;-><init>(Lcl/j;)V

    iput-object v0, p0, Lrl/a;->b:Lcl/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lrl/a;->b:Lcl/d;

    invoke-virtual {v0}, Lcl/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public b([B)[B
    .locals 9

    iget-object v0, p0, Lrl/a;->b:Lcl/d;

    array-length v1, p1

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/d;->b([B)[B

    move-result-object v0

    new-instance v1, LCi/n;

    invoke-direct {v1}, LCi/n;-><init>()V

    array-length v4, v0

    invoke-virtual {v1}, LCi/n;->c()I

    move-result v5

    add-int/2addr v4, v5

    new-array v5, v4, [B

    array-length v6, v0

    invoke-static {v0, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    iget-object v6, p0, Lrl/a;->a:Lrl/f;

    invoke-virtual {v6}, Lrl/f;->e()LXi/N0;

    move-result-object v6

    invoke-virtual {v1, v6}, LCi/n;->a(LBi/k;)V

    new-instance v6, LXi/O0;

    array-length v7, p1

    sub-int/2addr v7, v2

    array-length v8, p1

    invoke-static {p1, v7, v8}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v6, p1}, LXi/O0;-><init>([B)V

    array-length p1, v0

    invoke-virtual {v1, v6, v5, p1}, LCi/n;->b(LBi/k;[BI)V

    new-instance p1, LIi/N;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, LIi/N;-><init>(I)V

    const-string v0, "\\.//^\\"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v3, v1}, LIi/v;->update([BII)V

    invoke-virtual {p1, v5, v3, v4}, LIi/v;->update([BII)V

    invoke-virtual {v6}, LXi/O0;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2}, LIi/v;->update([BII)V

    iget-object v0, p0, Lrl/a;->a:Lrl/f;

    invoke-virtual {v0}, Lrl/f;->e()LXi/N0;

    move-result-object v0

    invoke-virtual {v0}, LXi/N0;->e()LXi/O0;

    move-result-object v0

    invoke-virtual {v0}, LXi/O0;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2}, LIi/v;->update([BII)V

    new-array v0, v2, [B

    invoke-virtual {p1, v0, v3}, LIi/N;->c([BI)I

    return-object v0
.end method
