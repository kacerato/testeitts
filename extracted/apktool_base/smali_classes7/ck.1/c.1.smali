.class public Lck/c;
.super Ljavax/crypto/spec/DHParameterSpec;
.source "SourceFile"


# instance fields
.field public final b:Ljava/math/BigInteger;

.field public final c:Ljava/math/BigInteger;

.field public final d:I

.field public e:LXi/v;


# direct methods
.method public constructor <init>(LXi/q;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXi/q;->g()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LXi/q;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LXi/q;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, LXi/q;->e()I

    move-result v5

    invoke-virtual {p1}, LXi/q;->d()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lck/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    invoke-virtual {p1}, LXi/q;->h()LXi/v;

    move-result-object p1

    iput-object p1, p0, Lck/c;->e:LXi/v;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lck/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lck/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lck/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lck/c;->b:Ljava/math/BigInteger;

    iput-object p4, p0, Lck/c;->c:Ljava/math/BigInteger;

    iput p5, p0, Lck/c;->d:I

    return-void
.end method


# virtual methods
.method public a()LXi/q;
    .locals 9

    new-instance v8, LXi/q;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lck/c;->b:Ljava/math/BigInteger;

    iget v4, p0, Lck/c;->d:I

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Lck/c;->c:Ljava/math/BigInteger;

    iget-object v7, p0, Lck/c;->e:LXi/v;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;LXi/v;)V

    return-object v8
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lck/c;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lck/c;->d:I

    return v0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lck/c;->b:Ljava/math/BigInteger;

    return-object v0
.end method
