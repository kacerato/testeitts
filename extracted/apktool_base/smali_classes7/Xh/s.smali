.class public LXh/s;
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

    iput-object v0, p0, LXh/s;->c:Loh/y;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, LXh/s;->b:Loh/s;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LXh/s;->c:Loh/y;

    new-instance p1, Loh/s;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    iput-object p1, p0, LXh/s;->b:Loh/s;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/s;
    .locals 1

    instance-of v0, p0, LXh/s;

    if-eqz v0, :cond_0

    check-cast p0, LXh/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/s;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/s;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXh/s;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/s;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LXh/s;->c:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/s;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
