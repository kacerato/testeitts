.class public LEi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/z;


# instance fields
.field public a:LBi/z;

.field public b:Loh/x;

.field public c:I

.field public d:[B


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOi/z;

    invoke-direct {v0, p1}, LOi/z;-><init>(LBi/y;)V

    iput-object v0, p0, LEi/d;->a:LBi/z;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Lhi/b;

    iget-object v2, p0, LEi/d;->b:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    new-instance v2, Loh/C0;

    iget v3, p0, LEi/d;->c:I

    invoke-static {v3}, Lorg/bouncycastle/util/p;->k(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :try_start_0
    iget-object v1, p0, LEi/d;->a:LBi/z;

    new-instance v2, LXi/n0;

    iget-object v3, p0, LEi/d;->d:[B

    new-instance v4, Loh/G0;

    invoke-direct {v4, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {v4, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, LXi/n0;-><init>([B[B)V

    invoke-interface {v1, v2}, LBi/w;->c(LBi/x;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LEi/d;->a:LBi/z;

    invoke-interface {v0, p1, p2, p3}, LBi/w;->a([BII)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to initialise kdf: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LBi/y;
    .locals 1

    iget-object v0, p0, LEi/d;->a:LBi/z;

    invoke-interface {v0}, LBi/z;->b()LBi/y;

    move-result-object v0

    return-object v0
.end method

.method public c(LBi/x;)V
    .locals 1

    check-cast p1, LEi/b;

    invoke-virtual {p1}, LEi/b;->a()Loh/x;

    move-result-object v0

    iput-object v0, p0, LEi/d;->b:Loh/x;

    invoke-virtual {p1}, LEi/b;->c()I

    move-result v0

    iput v0, p0, LEi/d;->c:I

    invoke-virtual {p1}, LEi/b;->d()[B

    move-result-object p1

    iput-object p1, p0, LEi/d;->d:[B

    return-void
.end method
