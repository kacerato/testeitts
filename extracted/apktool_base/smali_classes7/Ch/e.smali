.class public LCh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lfi/d;

.field public c:Loh/P;

.field public d:Loh/s;


# direct methods
.method public constructor <init>(Lfi/d;Loh/P;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LCh/e;-><init>(Lfi/d;Loh/P;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Loh/P;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/e;->b:Lfi/d;

    iput-object p2, p0, LCh/e;->c:Loh/P;

    if-eqz p3, :cond_0

    new-instance p1, Loh/s;

    invoke-direct {p1, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, LCh/e;->d:Loh/s;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    iput-object v0, p0, LCh/e;->b:Lfi/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/P;->I(Ljava/lang/Object;)Loh/P;

    move-result-object v0

    iput-object v0, p0, LCh/e;->c:Loh/P;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, LCh/e;->d:Loh/s;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static y(Ljava/lang/Object;)LCh/e;
    .locals 1

    instance-of v0, p0, LCh/e;

    if-eqz v0, :cond_0

    check-cast p0, LCh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/e;->b:Lfi/d;

    invoke-virtual {v1}, Lfi/d;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/e;->c:Loh/P;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LCh/e;->d:Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/P;
    .locals 1

    iget-object v0, p0, LCh/e;->c:Loh/P;

    return-object v0
.end method

.method public v()Lfi/d;
    .locals 1

    iget-object v0, p0, LCh/e;->b:Lfi/d;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LCh/e;->d:Loh/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
