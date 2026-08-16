.class public Lhi/V;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/V;->b:Ljava/math/BigInteger;

    iput-object p2, p0, Lhi/V;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lhi/V;->b:Ljava/math/BigInteger;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lhi/V;->c:Ljava/math/BigInteger;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown tag encountered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static u(Lhi/C;)Lhi/V;
    .locals 1

    sget-object v0, Lhi/B;->x:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/V;->w(Ljava/lang/Object;)Lhi/V;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/V;
    .locals 1

    instance-of v0, p0, Lhi/V;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/V;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/V;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/V;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/V;->b:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/s;

    iget-object v4, p0, Lhi/V;->b:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/V;->c:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Loh/K0;

    new-instance v3, Loh/s;

    iget-object v4, p0, Lhi/V;->c:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/V;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/V;->b:Ljava/math/BigInteger;

    return-object v0
.end method
