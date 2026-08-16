.class public LDl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;
.implements Ljava/security/PrivateKey;


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:LRl/q;


# direct methods
.method public constructor <init>(LRl/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDl/c;->b:LRl/q;

    return-void
.end method


# virtual methods
.method public a()LWl/h;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->e()LWl/h;

    move-result-object v0

    return-object v0
.end method

.method public b()LWl/y;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->f()LWl/y;

    move-result-object v0

    return-object v0
.end method

.method public c()LWl/e;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->g()LWl/e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->h()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LDl/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LDl/c;

    invoke-virtual {p0}, LDl/c;->h()I

    move-result v0

    invoke-virtual {p1}, LDl/c;->h()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, LDl/c;->d()I

    move-result v0

    invoke-virtual {p1}, LDl/c;->d()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, LDl/c;->a()LWl/h;

    move-result-object v0

    invoke-virtual {p1}, LDl/c;->a()LWl/h;

    move-result-object v2

    invoke-virtual {v0, v2}, LWl/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LDl/c;->b()LWl/y;

    move-result-object v0

    invoke-virtual {p1}, LDl/c;->b()LWl/y;

    move-result-object v2

    invoke-virtual {v0, v2}, LWl/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LDl/c;->l()LWl/e;

    move-result-object v0

    invoke-virtual {p1}, LDl/c;->l()LWl/e;

    move-result-object v2

    invoke-virtual {v0, v2}, LWl/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LDl/c;->i()LWl/x;

    move-result-object v0

    invoke-virtual {p1}, LDl/c;->i()LWl/x;

    move-result-object v2

    invoke-virtual {v0, v2}, LWl/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LDl/c;->j()LWl/x;

    move-result-object v0

    invoke-virtual {p1}, LDl/c;->j()LWl/x;

    move-result-object p1

    invoke-virtual {v0, p1}, LWl/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public g()LXi/c;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    new-instance v8, LXk/k;

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->i()I

    move-result v1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->h()I

    move-result v2

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->e()LWl/h;

    move-result-object v3

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->f()LWl/y;

    move-result-object v4

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->j()LWl/x;

    move-result-object v5

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->k()LWl/x;

    move-result-object v6

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->m()LWl/e;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LXk/k;-><init>(IILWl/h;LWl/y;LWl/x;LWl/x;LWl/e;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lhi/b;

    sget-object v2, LXk/m;->m:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, LXh/v;

    invoke-direct {v2, v1, v8}, LXh/v;-><init>(Lhi/b;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->i()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->i()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->e()LWl/h;

    move-result-object v1

    invoke-virtual {v1}, LWl/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->f()LWl/y;

    move-result-object v1

    invoke-virtual {v1}, LWl/y;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->j()LWl/x;

    move-result-object v1

    invoke-virtual {v1}, LWl/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->k()LWl/x;

    move-result-object v1

    invoke-virtual {v1}, LWl/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v1}, LRl/q;->m()LWl/e;

    move-result-object v1

    invoke-virtual {v1}, LWl/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()LWl/x;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->j()LWl/x;

    move-result-object v0

    return-object v0
.end method

.method public j()LWl/x;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->k()LWl/x;

    move-result-object v0

    return-object v0
.end method

.method public k()[LWl/y;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->l()[LWl/y;

    move-result-object v0

    return-object v0
.end method

.method public l()LWl/e;
    .locals 1

    iget-object v0, p0, LDl/c;->b:LRl/q;

    invoke-virtual {v0}, LRl/q;->m()LWl/e;

    move-result-object v0

    return-object v0
.end method
