.class public Lbj/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbj/b;


# static fields
.field public static final a:Lbj/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbj/z;

    invoke-direct {v0}, Lbj/z;-><init>()V

    sput-object v0, Lbj/z;->a:Lbj/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbj/z;->d(Ljava/math/BigInteger;Loh/E;I)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lbj/z;->d(Ljava/math/BigInteger;Loh/E;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lbj/z;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    filled-new-array {v1, v0}, [Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed signature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lbj/z;->e(Ljava/math/BigInteger;Loh/h;Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0, p3}, Lbj/z;->e(Ljava/math/BigInteger;Loh/h;Ljava/math/BigInteger;)V

    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string p2, "DER"

    invoke-virtual {p1, p2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/math/BigInteger;Loh/E;I)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2, p3}, Loh/E;->I(I)Loh/g;

    move-result-object p2

    check-cast p2, Loh/s;

    invoke-virtual {p2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbj/z;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/math/BigInteger;Loh/h;Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Loh/s;

    invoke-virtual {p0, p1, p3}, Lbj/z;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    return-void
.end method
