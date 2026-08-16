.class public LJl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lsl/z;


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public transient b:Lml/j;


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

    invoke-virtual {p0, p1}, LJl/b;->b(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lml/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJl/b;->b:Lml/j;

    return-void
.end method

.method private c(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LJl/b;->b(Lhi/h0;)V

    return-void
.end method

.method private d(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LJl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lml/j;
    .locals 1

    iget-object v0, p0, LJl/b;->b:Lml/j;

    return-object v0
.end method

.method public final b(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, Lml/j;

    iput-object p1, p0, LJl/b;->b:Lml/j;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LJl/b;

    if-eqz v0, :cond_1

    check-cast p1, LJl/b;

    iget-object v0, p0, LJl/b;->b:Lml/j;

    invoke-virtual {v0}, Lml/j;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, LJl/b;->b:Lml/j;

    invoke-virtual {p1}, Lml/j;->getEncoded()[B

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

    const-string v0, "SABER"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, LJl/b;->b:Lml/j;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LJl/b;->b:Lml/j;

    invoke-virtual {v0}, Lml/j;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/s;
    .locals 1

    iget-object v0, p0, LJl/b;->b:Lml/j;

    invoke-virtual {v0}, Lml/g;->d()Lml/h;

    move-result-object v0

    invoke-virtual {v0}, Lml/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/s;->a(Ljava/lang/String;)LOl/s;

    move-result-object v0

    return-object v0
.end method
