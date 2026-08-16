.class public LZh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, Loh/h;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Loh/h;-><init>(I)V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, LZh/a;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, Loh/h;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Loh/h;-><init>(I)V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p4, Loh/K0;

    invoke-direct {p4, p1, p1, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p2, p4}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, LZh/a;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Loh/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1}, LZh/a;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Loh/c;Loh/g;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Loh/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, LZh/a;-><init>(Ljava/math/BigInteger;Loh/c;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LZh/a;->b:Loh/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LZh/a;
    .locals 1

    instance-of v0, p0, LZh/a;

    if-eqz v0, :cond_0

    check-cast p0, LZh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LZh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LZh/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LZh/a;->b:Loh/E;

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, LZh/a;->b:Loh/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public final w(II)Loh/v;
    .locals 3

    iget-object v0, p0, LZh/a;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-virtual {v1, p1}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {v1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->r()Loh/B;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v1, p1, p2}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public x()Loh/B;
    .locals 1

    invoke-virtual {p0}, LZh/a;->y()Loh/v;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/v;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, LZh/a;->w(II)Loh/v;

    move-result-object v0

    return-object v0
.end method

.method public z()Loh/c;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, LZh/a;->w(II)Loh/v;

    move-result-object v0

    check-cast v0, Loh/c;

    return-object v0
.end method
