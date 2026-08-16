.class public LDl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public transient b:LRl/g;


# direct methods
.method public constructor <init>(LRl/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDl/a;->b:LRl/g;

    return-void
.end method


# virtual methods
.method public a()LWl/h;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->e()LWl/h;

    move-result-object v0

    return-object v0
.end method

.method public b()LWl/y;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->f()LWl/y;

    move-result-object v0

    return-object v0
.end method

.method public c()LWl/e;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->g()LWl/e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->h()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, LDl/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LDl/a;

    invoke-virtual {p0}, LDl/a;->h()I

    move-result v1

    invoke-virtual {p1}, LDl/a;->h()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, LDl/a;->d()I

    move-result v1

    invoke-virtual {p1}, LDl/a;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, LDl/a;->a()LWl/h;

    move-result-object v1

    invoke-virtual {p1}, LDl/a;->a()LWl/h;

    move-result-object v2

    invoke-virtual {v1, v2}, LWl/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LDl/a;->b()LWl/y;

    move-result-object v1

    invoke-virtual {p1}, LDl/a;->b()LWl/y;

    move-result-object v2

    invoke-virtual {v1, v2}, LWl/y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LDl/a;->i()LWl/x;

    move-result-object v1

    invoke-virtual {p1}, LDl/a;->i()LWl/x;

    move-result-object v2

    invoke-virtual {v1, v2}, LWl/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LDl/a;->c()LWl/e;

    move-result-object v1

    invoke-virtual {p1}, LDl/a;->c()LWl/e;

    move-result-object p1

    invoke-virtual {v1, p1}, LWl/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public g()LXi/c;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    :try_start_0
    new-instance v7, LXk/i;

    invoke-virtual {p0}, LDl/a;->h()I

    move-result v1

    invoke-virtual {p0}, LDl/a;->d()I

    move-result v2

    invoke-virtual {p0}, LDl/a;->a()LWl/h;

    move-result-object v3

    invoke-virtual {p0}, LDl/a;->b()LWl/y;

    move-result-object v4

    invoke-virtual {p0}, LDl/a;->i()LWl/x;

    move-result-object v5

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldk/h;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LXk/i;-><init>(IILWl/h;LWl/y;LWl/x;Lhi/b;)V

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->n:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, LXh/v;

    invoke-direct {v1, v0, v7}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->i()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v1}, LRl/g;->i()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v1}, LRl/g;->e()LWl/h;

    move-result-object v1

    invoke-virtual {v1}, LWl/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v1}, LRl/g;->f()LWl/y;

    move-result-object v1

    invoke-virtual {v1}, LWl/y;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v1}, LRl/g;->j()LWl/x;

    move-result-object v1

    invoke-virtual {v1}, LWl/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v1}, LRl/g;->g()LWl/e;

    move-result-object v1

    invoke-virtual {v1}, LWl/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()LWl/x;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->j()LWl/x;

    move-result-object v0

    return-object v0
.end method

.method public j()[LWl/y;
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->k()[LWl/y;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, LDl/a;->b:LRl/g;

    invoke-virtual {v0}, LRl/g;->f()LWl/y;

    move-result-object v0

    invoke-virtual {v0}, LWl/y;->n()I

    move-result v0

    return v0
.end method

.method public final l(LXh/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, LRl/g;

    iput-object p1, p0, LDl/a;->b:LRl/g;

    return-void
.end method

.method public final m(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p0, p1}, LDl/a;->l(LXh/v;)V

    return-void
.end method

.method public final n(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LDl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
