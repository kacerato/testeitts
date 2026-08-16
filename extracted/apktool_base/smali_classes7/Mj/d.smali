.class public LMj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field public static final f:J = -0x301d7d6f0dc1b04L


# instance fields
.field public b:Ljava/math/BigInteger;

.field public transient c:LXi/s;

.field public transient d:Ljavax/crypto/spec/DHParameterSpec;

.field public transient e:Lhi/h0;


# direct methods
.method public constructor <init>(LXi/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXi/s;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v0, Lck/c;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lck/c;-><init>(LXi/q;)V

    iput-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, LMj/d;->c:LXi/s;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMj/d;->e:Lhi/h0;

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object v0

    check-cast v0, Loh/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    sget-object v1, LXh/t;->Y0:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, LMj/d;->b(Loh/E;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lki/r;->z6:Loh/x;

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lki/d;->v(Ljava/lang/Object;)Lki/d;

    move-result-object p1

    invoke-virtual {p1}, Lki/d;->B()Lki/h;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, LXi/s;

    iget-object v2, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v9, LXi/q;

    invoke-virtual {p1}, Lki/d;->z()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lki/d;->u()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lki/d;->A()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, LXi/v;

    invoke-virtual {v0}, Lki/h;->y()[B

    move-result-object p1

    invoke-virtual {v0}, Lki/h;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v8, p1, v0}, LXi/v;-><init>([BI)V

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;LXi/v;)V

    invoke-direct {v1, v2, v9}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object v1, p0, LMj/d;->c:LXi/s;

    goto :goto_0

    :cond_1
    new-instance v0, LXi/s;

    iget-object v1, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v8, LXi/q;

    invoke-virtual {p1}, Lki/d;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/d;->u()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lki/d;->A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;LXi/v;)V

    invoke-direct {v0, v1, v8}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object v0, p0, LMj/d;->c:LXi/s;

    :goto_0
    new-instance p1, Lck/c;

    iget-object v0, p0, LMj/d;->c:LXi/s;

    invoke-virtual {v0}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-direct {p1, v0}, Lck/c;-><init>(LXi/q;)V

    iput-object p1, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {v0}, LXh/h;->v(Ljava/lang/Object;)LXh/h;

    move-result-object p1

    invoke-virtual {p1}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, LXi/s;

    iget-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v1, LXi/q;

    iget-object v2, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {p1, v0, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    :goto_2
    iput-object p1, p0, LMj/d;->c:LXi/s;

    goto :goto_3

    :cond_4
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, LXi/s;

    iget-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v1, LXi/q;

    iget-object v2, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    goto :goto_2

    :goto_3
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DH public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMj/d;->b:Ljava/math/BigInteger;

    iput-object p2, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, p2, Lck/c;

    if-eqz v0, :cond_0

    new-instance v0, LXi/s;

    check-cast p2, Lck/c;

    invoke-virtual {p2}, Lck/c;->a()LXi/q;

    move-result-object p2

    invoke-direct {v0, p1, p2}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    :goto_0
    iput-object v0, p0, LMj/d;->c:LXi/s;

    goto :goto_1

    :cond_0
    new-instance v0, LXi/s;

    new-instance v1, LXi/q;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v1, v2, p2}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, p1, Lck/c;

    if-eqz v0, :cond_0

    check-cast p1, Lck/c;

    new-instance v0, LXi/s;

    iget-object v1, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lck/c;->a()LXi/q;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object v0, p0, LMj/d;->c:LXi/s;

    goto :goto_0

    :cond_0
    new-instance p1, LXi/s;

    iget-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v1, LXi/q;

    iget-object v2, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object p1, p0, LMj/d;->c:LXi/s;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    instance-of v0, p1, Lck/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lck/e;

    invoke-virtual {v0}, Lck/e;->a()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_1

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Lck/c;

    if-eqz v1, :cond_1

    check-cast v0, Lck/c;

    new-instance p1, LXi/s;

    iget-object v1, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lck/c;->a()LXi/q;

    move-result-object v0

    invoke-direct {p1, v1, v0}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object p1, p0, LMj/d;->c:LXi/s;

    goto :goto_2

    :cond_1
    new-instance v0, LXi/s;

    iget-object v1, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v2, LXi/q;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    iput-object v0, p0, LMj/d;->c:LXi/s;

    :goto_2
    return-void
.end method


# virtual methods
.method public a()LXi/s;
    .locals 1

    iget-object v0, p0, LMj/d;->c:LXi/s;

    return-object v0
.end method

.method public final b(Loh/E;)Z
    .locals 5

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v0, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method public final c(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, LMj/d;->e:Lhi/h0;

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

    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {p0}, LMj/d;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    iget-object v0, p0, LMj/d;->e:Lhi/h0;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Lck/c;

    if-eqz v1, :cond_2

    check-cast v0, Lck/c;

    invoke-virtual {v0}, Lck/c;->d()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Lck/c;

    invoke-virtual {v0}, Lck/c;->a()LXi/q;

    move-result-object v0

    invoke-virtual {v0}, LXi/q;->h()LXi/v;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lki/h;

    invoke-virtual {v1}, LXi/v;->b()[B

    move-result-object v3

    invoke-virtual {v1}, LXi/v;->a()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lki/h;-><init>([BI)V

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v1, Lhi/b;

    sget-object v2, Lki/r;->z6:Loh/x;

    new-instance v9, Lki/d;

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/q;->b()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/q;->g()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, LXi/q;->c()Ljava/math/BigInteger;

    move-result-object v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lki/d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lki/h;)V

    invoke-virtual {v9}, Lki/d;->r()Loh/B;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/s;

    iget-object v2, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->c(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->Y0:Loh/x;

    new-instance v2, LXh/h;

    iget-object v3, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, LXh/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v2}, LXh/h;->r()Loh/B;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Loh/s;

    iget-object v2, p0, LMj/d;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->c(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    iget-object v0, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LMj/d;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, LMj/d;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LMj/d;->b:Ljava/math/BigInteger;

    new-instance v1, LXi/q;

    iget-object v2, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LMj/d;->d:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "DH"

    invoke-static {v2, v0, v1}, LMj/e;->c(Ljava/lang/String;Ljava/math/BigInteger;LXi/q;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
