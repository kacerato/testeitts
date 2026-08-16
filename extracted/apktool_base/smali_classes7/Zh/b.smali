.class public LZh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-direct {v1, p1}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, LZh/b;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Loh/c;Loh/g;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-direct {v1, p1}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    new-instance v1, Loh/K0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p3, Loh/K0;

    invoke-direct {p3, p1, p1, p2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, LZh/b;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Loh/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, LZh/b;-><init>(Ljava/math/BigInteger;Loh/c;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LZh/b;->b:Loh/E;

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LZh/b;->b:Loh/E;

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, LZh/b;->b:Loh/E;

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

.method public final v(I)Loh/B;
    .locals 3

    iget-object v0, p0, LZh/b;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public x()Loh/B;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LZh/b;->v(I)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LZh/b;->v(I)Loh/B;

    move-result-object v0

    check-cast v0, Loh/c;

    return-object v0
.end method
