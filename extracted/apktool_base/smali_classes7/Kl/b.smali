.class public LKl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lsl/B;


# static fields
.field public static final d:J = 0x1L


# instance fields
.field public transient b:Loh/x;

.field public transient c:Lnl/j;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LKl/b;->c(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Lnl/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKl/b;->b:Loh/x;

    iput-object p2, p0, LKl/b;->c:Lnl/j;

    return-void
.end method

.method private d(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LKl/b;->c(Lhi/h0;)V

    return-void
.end method

.method private e(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LKl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Jc()[B
    .locals 1

    iget-object v0, p0, LKl/b;->c:Lnl/j;

    invoke-virtual {v0}, Lnl/j;->e()[B

    move-result-object v0

    return-object v0
.end method

.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LKl/b;->c:Lnl/j;

    return-object v0
.end method

.method public b()Loh/x;
    .locals 1

    iget-object v0, p0, LKl/b;->b:Loh/x;

    return-object v0
.end method

.method public final c(Lhi/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/s;->u(Ljava/lang/Object;)LXk/s;

    move-result-object v0

    invoke-virtual {v0}, LXk/s;->v()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    iput-object v0, p0, LKl/b;->b:Loh/x;

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, Lnl/j;

    iput-object p1, p0, LKl/b;->c:Lnl/j;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LKl/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LKl/b;

    iget-object v1, p0, LKl/b;->b:Loh/x;

    iget-object v3, p1, LKl/b;->b:Loh/x;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LKl/b;->c:Lnl/j;

    invoke-virtual {v1}, Lnl/j;->e()[B

    move-result-object v1

    iget-object p1, p1, LKl/b;->c:Lnl/j;

    invoke-virtual {p1}, Lnl/j;->e()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "SPHINCS-256"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    :try_start_0
    iget-object v0, p0, LKl/b;->c:Lnl/j;

    invoke-virtual {v0}, Lnl/h;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LKl/b;->c:Lnl/j;

    invoke-static {v0}, Lpl/f;->a(LXi/c;)Lhi/h0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->r:Loh/x;

    new-instance v2, LXk/s;

    new-instance v3, Lhi/b;

    iget-object v4, p0, LKl/b;->b:Loh/x;

    invoke-direct {v3, v4}, Lhi/b;-><init>(Loh/x;)V

    invoke-direct {v2, v3}, LXk/s;-><init>(Lhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Lhi/h0;

    iget-object v2, p0, LKl/b;->c:Lnl/j;

    invoke-virtual {v2}, Lnl/j;->e()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lhi/h0;-><init>(Lhi/b;[B)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Loh/v;->getEncoded()[B

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

    iget-object v0, p0, LKl/b;->b:Loh/x;

    invoke-virtual {v0}, Loh/x;->hashCode()I

    move-result v0

    iget-object v1, p0, LKl/b;->c:Lnl/j;

    invoke-virtual {v1}, Lnl/j;->e()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
