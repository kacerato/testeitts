.class public LDl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;
.implements Ljava/security/PublicKey;


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public transient b:LRl/h;


# direct methods
.method public constructor <init>(LRl/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDl/b;->b:LRl/h;

    return-void
.end method

.method private g(Ljava/io/ObjectInputStream;)V
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

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, LDl/b;->f(Lhi/h0;)V

    return-void
.end method

.method private h(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LDl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()LWl/e;
    .locals 1

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->e()LWl/e;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->f()I

    move-result v0

    return v0
.end method

.method public c()LXi/c;
    .locals 1

    iget-object v0, p0, LDl/b;->b:LRl/h;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->g()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->h()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, LDl/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LDl/b;

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->g()I

    move-result v1

    invoke-virtual {p1}, LDl/b;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->h()I

    move-result v1

    invoke-virtual {p1}, LDl/b;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->e()LWl/e;

    move-result-object v1

    invoke-virtual {p1}, LDl/b;->a()LWl/e;

    move-result-object p1

    invoke-virtual {v1, p1}, LWl/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final f(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, LRl/h;

    iput-object p1, p0, LDl/b;->b:LRl/h;

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, LXk/j;

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->g()I

    move-result v1

    iget-object v2, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v2}, LRl/h;->h()I

    move-result v2

    iget-object v3, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v3}, LRl/h;->e()LWl/e;

    move-result-object v3

    iget-object v4, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v4}, LRl/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldk/h;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LXk/j;-><init>(IILWl/e;Lhi/b;)V

    new-instance v1, Lhi/b;

    sget-object v2, LXk/m;->n:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    :try_start_0
    new-instance v2, Lhi/h0;

    invoke-direct {v2, v1, v0}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

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

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->g()I

    move-result v0

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->e()LWl/e;

    move-result-object v1

    invoke-virtual {v1}, LWl/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McEliecePublicKey:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v1}, LRl/h;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error correction capability: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " generator matrix           : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDl/b;->b:LRl/h;

    invoke-virtual {v0}, LRl/h;->e()LWl/e;

    move-result-object v0

    invoke-virtual {v0}, LWl/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
