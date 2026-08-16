.class public LGl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lsl/t;


# static fields
.field public static final d:J = 0x1L


# instance fields
.field public transient b:Ljl/g;

.field public transient c:Loh/G;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LGl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Ljl/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGl/a;->b:Ljl/g;

    return-void
.end method


# virtual methods
.method public a()Ljl/g;
    .locals 1

    iget-object v0, p0, LGl/a;->b:Ljl/g;

    return-object v0
.end method

.method public final b(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object v0

    iput-object v0, p0, LGl/a;->c:Loh/G;

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, Ljl/g;

    iput-object p1, p0, LGl/a;->b:Ljl/g;

    return-void
.end method

.method public final c(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LGl/a;->b(LXh/v;)V

    return-void
.end method

.method public final d(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LGl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LGl/a;

    if-eqz v0, :cond_1

    check-cast p1, LGl/a;

    iget-object v0, p0, LGl/a;->b:Ljl/g;

    invoke-virtual {v0}, Ljl/g;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, LGl/a;->b:Ljl/g;

    invoke-virtual {p1}, Ljl/g;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NTRULPRime"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, LGl/a;->b:Ljl/g;

    iget-object v1, p0, LGl/a;->c:Loh/G;

    invoke-static {v0, v1}, Lpl/c;->b(LXi/c;Loh/G;)LXh/v;

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

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LGl/a;->b:Ljl/g;

    invoke-virtual {v0}, Ljl/g;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/n;
    .locals 1

    iget-object v0, p0, LGl/a;->b:Ljl/g;

    invoke-virtual {v0}, Ljl/e;->d()Ljl/f;

    move-result-object v0

    invoke-virtual {v0}, Ljl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/n;->a(Ljava/lang/String;)LOl/n;

    move-result-object v0

    return-object v0
.end method
