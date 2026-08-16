.class public LXh/o;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, LXh/o;->c:Loh/y;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/s;

    iput-object p1, p0, LXh/o;->b:Loh/s;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LXh/o;->c:Loh/y;

    new-instance p1, Loh/s;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    iput-object p1, p0, LXh/o;->b:Loh/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt length must be 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)LXh/o;
    .locals 1

    instance-of v0, p0, LXh/o;

    if-eqz v0, :cond_0

    check-cast p0, LXh/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/o;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXh/o;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/o;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/o;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LXh/o;->c:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method
