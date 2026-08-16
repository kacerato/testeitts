.class public LBl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl/m;


# static fields
.field public static final e:J = 0x1L


# instance fields
.field public transient b:Lcl/k;

.field public transient c:Ljava/lang/String;

.field public transient d:[B


# direct methods
.method public constructor <init>(Lcl/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LBl/b;->b(Lcl/k;)V

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LBl/b;->c(Lhi/h0;)V

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

    invoke-virtual {p0, p1}, LBl/b;->c(Lhi/h0;)V

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

    invoke-virtual {p0}, LBl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcl/k;
    .locals 1

    iget-object v0, p0, LBl/b;->b:Lcl/k;

    return-object v0
.end method

.method public final b(Lcl/k;)V
    .locals 0

    iput-object p1, p0, LBl/b;->b:Lcl/k;

    invoke-virtual {p1}, Lcl/h;->d()Lcl/i;

    move-result-object p1

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LBl/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, Lcl/k;

    invoke-virtual {p0, p1}, LBl/b;->b(Lcl/k;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LBl/b;

    if-eqz v0, :cond_1

    check-cast p1, LBl/b;

    invoke-virtual {p0}, LBl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, LBl/b;->getEncoded()[B

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

    iget-object v0, p0, LBl/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, LBl/b;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, LBl/b;->b:Lcl/k;

    invoke-static {v0}, LMl/e;->d(LXi/c;)[B

    move-result-object v0

    iput-object v0, p0, LBl/b;->d:[B

    :cond_0
    iget-object v0, p0, LBl/b;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, LBl/b;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/g;
    .locals 1

    iget-object v0, p0, LBl/b;->b:Lcl/k;

    invoke-virtual {v0}, Lcl/h;->d()Lcl/i;

    move-result-object v0

    invoke-virtual {v0}, Lcl/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/g;->a(Ljava/lang/String;)LOl/g;

    move-result-object v0

    return-object v0
.end method
