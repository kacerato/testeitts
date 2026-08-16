.class public LBl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl/l;


# static fields
.field public static final e:J = 0x1L


# instance fields
.field public transient b:Lcl/j;

.field public transient c:Ljava/lang/String;

.field public transient d:Loh/G;


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

    invoke-virtual {p0, p1}, LBl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Lcl/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBl/a;->b:Lcl/j;

    invoke-virtual {p1}, Lcl/h;->d()Lcl/i;

    move-result-object p1

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LBl/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A0()Lsl/m;
    .locals 2

    new-instance v0, LBl/b;

    iget-object v1, p0, LBl/a;->b:Lcl/j;

    invoke-virtual {v1}, Lcl/j;->i()Lcl/k;

    move-result-object v1

    invoke-direct {v0, v1}, LBl/b;-><init>(Lcl/k;)V

    return-object v0
.end method

.method public a()Lcl/j;
    .locals 1

    iget-object v0, p0, LBl/a;->b:Lcl/j;

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

    iput-object v0, p0, LBl/a;->d:Loh/G;

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, Lcl/j;

    iput-object p1, p0, LBl/a;->b:Lcl/j;

    invoke-virtual {p1}, Lcl/h;->d()Lcl/i;

    move-result-object p1

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LBl/a;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, LBl/a;->b(LXh/v;)V

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

    invoke-virtual {p0}, LBl/a;->getEncoded()[B

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
    instance-of v0, p1, LBl/a;

    if-eqz v0, :cond_1

    check-cast p1, LBl/a;

    invoke-virtual {p0}, LBl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, LBl/a;->getEncoded()[B

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

    iget-object v0, p0, LBl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, LBl/a;->b:Lcl/j;

    iget-object v1, p0, LBl/a;->d:Loh/G;

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

    invoke-virtual {p0}, LBl/a;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/g;
    .locals 1

    iget-object v0, p0, LBl/a;->b:Lcl/j;

    invoke-virtual {v0}, Lcl/h;->d()Lcl/i;

    move-result-object v0

    invoke-virtual {v0}, Lcl/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/g;->a(Ljava/lang/String;)LOl/g;

    move-result-object v0

    return-object v0
.end method
