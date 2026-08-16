.class public Lii/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lii/c;

.field public c:Loh/s;

.field public d:Loh/s;


# direct methods
.method public constructor <init>(Lii/c;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/d;->b:Lii/c;

    new-instance p1, Loh/s;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    iput-object p1, p0, Lii/d;->c:Loh/s;

    new-instance p1, Loh/s;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    iput-object p1, p0, Lii/d;->d:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lii/c;->v(Ljava/lang/Object;)Lii/c;

    move-result-object v0

    iput-object v0, p0, Lii/d;->b:Lii/c;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lii/d;->c:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lii/d;->d:Loh/s;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lii/d;
    .locals 1

    instance-of v0, p0, Lii/d;

    if-eqz v0, :cond_0

    check-cast p0, Lii/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lii/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lii/d;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lii/d;->b:Lii/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lii/d;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lii/d;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lii/d;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public v()Lii/c;
    .locals 1

    iget-object v0, p0, Lii/d;->b:Lii/c;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lii/d;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
