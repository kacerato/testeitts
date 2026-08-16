.class public LNl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lsl/H;


# static fields
.field public static final d:J = 0x2cd46aae865a66a3L


# instance fields
.field public transient b:Loh/x;

.field public transient c:Lql/B;


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

    invoke-virtual {p0, p1}, LNl/b;->d(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Lql/B;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNl/b;->b:Loh/x;

    iput-object p2, p0, LNl/b;->c:Lql/B;

    return-void
.end method

.method private e(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LNl/b;->d(Lhi/h0;)V

    return-void
.end method

.method private f(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LNl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LNl/b;->b:Loh/x;

    invoke-static {v0}, LNl/e;->d(Loh/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LNl/b;->c:Lql/B;

    invoke-virtual {v0}, Lql/B;->e()Lql/z;

    move-result-object v0

    invoke-virtual {v0}, Lql/z;->b()I

    move-result v0

    return v0
.end method

.method public c()LBi/k;
    .locals 1

    iget-object v0, p0, LNl/b;->c:Lql/B;

    return-object v0
.end method

.method public final d(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, Lql/B;

    iput-object p1, p0, LNl/b;->c:Lql/B;

    invoke-virtual {p1}, Lql/y;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNl/e;->b(Ljava/lang/String;)Loh/x;

    move-result-object p1

    iput-object p1, p0, LNl/b;->b:Loh/x;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LNl/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LNl/b;

    iget-object v1, p0, LNl/b;->b:Loh/x;

    iget-object v3, p1, LNl/b;->b:Loh/x;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LNl/b;->c:Lql/B;

    invoke-virtual {v1}, Lql/B;->toByteArray()[B

    move-result-object v1

    iget-object p1, p1, LNl/b;->c:Lql/B;

    invoke-virtual {p1}, Lql/B;->toByteArray()[B

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

    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, LNl/b;->c:Lql/B;

    invoke-static {v0}, Lpl/f;->a(LXi/c;)Lhi/h0;

    move-result-object v0

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

.method public getHeight()I
    .locals 1

    iget-object v0, p0, LNl/b;->c:Lql/B;

    invoke-virtual {v0}, Lql/B;->e()Lql/z;

    move-result-object v0

    invoke-virtual {v0}, Lql/z;->a()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LNl/b;->b:Loh/x;

    invoke-virtual {v0}, Loh/x;->hashCode()I

    move-result v0

    iget-object v1, p0, LNl/b;->c:Lql/B;

    invoke-virtual {v1}, Lql/B;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
