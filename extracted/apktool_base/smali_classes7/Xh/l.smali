.class public LXh/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lfi/d;

.field public c:Loh/s;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/l;->b:Lfi/d;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, LXh/l;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Lhi/B0;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, LXh/l;->b:Lfi/d;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, LXh/l;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Lhi/B0;Loh/s;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, LXh/l;->b:Lfi/d;

    iput-object p2, p0, LXh/l;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    iput-object v0, p0, LXh/l;->b:Lfi/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/s;

    iput-object p1, p0, LXh/l;->c:Loh/s;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/l;
    .locals 1

    instance-of v0, p0, LXh/l;

    if-eqz v0, :cond_0

    check-cast p0, LXh/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/l;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXh/l;->b:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/l;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/s;
    .locals 1

    iget-object v0, p0, LXh/l;->c:Loh/s;

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, LXh/l;->b:Lfi/d;

    return-object v0
.end method
