.class public Lxl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl/h;


# static fields
.field public static final e:J = 0x1L


# instance fields
.field public transient b:Ldl/o;

.field public transient c:Ljava/lang/String;

.field public transient d:[B


# direct methods
.method public constructor <init>(Ldl/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lxl/b;->b(Ldl/o;)V

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

    invoke-virtual {p0, p1}, Lxl/b;->c(Lhi/h0;)V

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

    invoke-virtual {p0, p1}, Lxl/b;->c(Lhi/h0;)V

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

    invoke-virtual {p0}, Lxl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ldl/o;
    .locals 1

    iget-object v0, p0, Lxl/b;->b:Ldl/o;

    return-object v0
.end method

.method public final b(Ldl/o;)V
    .locals 0

    iput-object p1, p0, Lxl/b;->b:Ldl/o;

    invoke-virtual {p1}, Ldl/k;->d()Ldl/m;

    move-result-object p1

    invoke-virtual {p1}, Ldl/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxl/b;->c:Ljava/lang/String;

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

    check-cast p1, Ldl/o;

    invoke-virtual {p0, p1}, Lxl/b;->b(Ldl/o;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lxl/b;

    if-eqz v0, :cond_1

    check-cast p1, Lxl/b;

    invoke-virtual {p0}, Lxl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lxl/b;->getEncoded()[B

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

    iget-object v0, p0, Lxl/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lxl/b;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lxl/b;->b:Ldl/o;

    invoke-static {v0}, LMl/e;->d(LXi/c;)[B

    move-result-object v0

    iput-object v0, p0, Lxl/b;->d:[B

    :cond_0
    iget-object v0, p0, Lxl/b;->d:[B

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

    invoke-virtual {p0}, Lxl/b;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/d;
    .locals 1

    iget-object v0, p0, Lxl/b;->b:Ldl/o;

    invoke-virtual {v0}, Ldl/k;->d()Ldl/m;

    move-result-object v0

    invoke-virtual {v0}, Ldl/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/d;->a(Ljava/lang/String;)LOl/d;

    move-result-object v0

    return-object v0
.end method
