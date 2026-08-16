.class public Lki/p;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lki/r;


# instance fields
.field public b:Loh/x;

.field public c:Loh/B;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lki/p;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Lki/r;->y5:Loh/x;

    iput-object v0, p0, Lki/p;->b:Loh/x;

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v2, Loh/s;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lki/r;->A5:Loh/x;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/s;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lki/r;->B5:Loh/x;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/h;

    invoke-direct {p1, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {p1, v1}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/s;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Loh/s;-><init>(J)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/s;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Loh/s;-><init>(J)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/G0;

    invoke-direct {p2, p1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    :goto_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lki/p;->c:Loh/B;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Lki/r;->x5:Loh/x;

    iput-object v0, p0, Lki/p;->b:Loh/x;

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lki/p;->c:Loh/B;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lki/p;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    iput-object p1, p0, Lki/p;->c:Loh/B;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lki/p;
    .locals 1

    instance-of v0, p0, Lki/p;

    if-eqz v0, :cond_0

    check-cast p0, Lki/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/p;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/p;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lki/p;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/p;->c:Loh/B;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lki/p;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/B;
    .locals 1

    iget-object v0, p0, Lki/p;->c:Loh/B;

    return-object v0
.end method
