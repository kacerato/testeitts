.class public Lth/P;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lth/P;-><init>(Loh/s;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/P;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 2

    .line 2
    new-instance v0, Loh/G0;

    new-instance v1, Loh/G0;

    invoke-direct {v1, p1}, Loh/G0;-><init>(Loh/g;)V

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/g;)V

    invoke-direct {p0, v0}, Lth/P;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>([Ljava/math/BigInteger;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lth/P;->x([Ljava/math/BigInteger;)[Loh/s;

    move-result-object p1

    invoke-direct {p0, p1}, Lth/P;-><init>([Loh/s;)V

    return-void
.end method

.method public constructor <init>([Loh/s;)V
    .locals 1

    .line 5
    new-instance v0, Loh/G0;

    invoke-static {p1}, Lth/P;->y([Loh/s;)[Loh/G0;

    move-result-object p1

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    invoke-direct {p0, v0}, Lth/P;-><init>(Loh/E;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/P;
    .locals 1

    instance-of v0, p0, Lth/P;

    if-eqz v0, :cond_0

    check-cast p0, Lth/P;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/P;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/P;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x([Ljava/math/BigInteger;)[Loh/s;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Loh/s;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Loh/s;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static y([Loh/s;)[Loh/G0;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Loh/G0;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Loh/G0;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Loh/G0;-><init>(Loh/g;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static z(Loh/E;)[Loh/s;
    .locals 4

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Loh/s;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lth/P;->b:Loh/E;

    return-object v0
.end method

.method public u()[Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Lth/P;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v0, :cond_0

    iget-object v4, p0, Lth/P;->b:Loh/E;

    invoke-virtual {v4, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v4

    invoke-virtual {v4, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v4

    invoke-virtual {v4}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public v()[[Loh/s;
    .locals 4

    iget-object v0, p0, Lth/P;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [[Loh/s;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lth/P;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/E;

    invoke-static {v3}, Lth/P;->z(Loh/E;)[Loh/s;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
