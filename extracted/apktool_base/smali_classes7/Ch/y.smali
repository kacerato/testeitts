.class public LCh/y;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lfi/b;

.field public c:Lfi/b;

.field public d:Loh/E;


# direct methods
.method public constructor <init>(Lfi/b;Lfi/b;Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "postal address must contain less than 6 strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, LCh/y;->b:Lfi/b;

    iput-object p2, p0, LCh/y;->c:Lfi/b;

    iput-object p3, p0, LCh/y;->d:Loh/E;

    return-void
.end method

.method public constructor <init>(Lfi/b;Lfi/b;[Lfi/b;)V
    .locals 1

    .line 2
    new-instance v0, Loh/G0;

    invoke-direct {v0, p3}, Loh/G0;-><init>([Loh/g;)V

    invoke-direct {p0, p1, p2, v0}, LCh/y;-><init>(Lfi/b;Lfi/b;Loh/E;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Loh/M;->X()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    :goto_1
    iput-object v0, p0, LCh/y;->d:Loh/E;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, LCh/y;->d:Loh/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "postal address must contain less than 6 strings"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v0, v2}, Lfi/b;->v(Loh/M;Z)Lfi/b;

    move-result-object v0

    iput-object v0, p0, LCh/y;->c:Lfi/b;

    goto :goto_0

    :cond_5
    invoke-static {v0, v2}, Lfi/b;->v(Loh/M;Z)Lfi/b;

    move-result-object v0

    iput-object v0, p0, LCh/y;->b:Lfi/b;

    goto :goto_0

    :cond_6
    return-void
.end method

.method public constructor <init>(Loh/Q;Loh/Q;Loh/E;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lfi/b;->u(Ljava/lang/Object;)Lfi/b;

    move-result-object p1

    invoke-static {p2}, Lfi/b;->u(Ljava/lang/Object;)Lfi/b;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, LCh/y;-><init>(Lfi/b;Lfi/b;Loh/E;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)LCh/y;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, LCh/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LCh/y;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, LCh/y;

    return-object p0
.end method


# virtual methods
.method public A()Loh/E;
    .locals 1

    iget-object v0, p0, LCh/y;->d:Loh/E;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/y;->b:Lfi/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LCh/y;->c:Lfi/b;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LCh/y;->d:Loh/E;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lfi/b;
    .locals 1

    iget-object v0, p0, LCh/y;->b:Lfi/b;

    return-object v0
.end method

.method public v()Loh/M0;
    .locals 2

    iget-object v0, p0, LCh/y;->b:Lfi/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Loh/M0;

    invoke-virtual {p0}, LCh/y;->u()Lfi/b;

    move-result-object v1

    invoke-virtual {v1}, Lfi/b;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public x()Lfi/b;
    .locals 1

    iget-object v0, p0, LCh/y;->c:Lfi/b;

    return-object v0
.end method

.method public y()Loh/M0;
    .locals 2

    iget-object v0, p0, LCh/y;->c:Lfi/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Loh/M0;

    invoke-virtual {p0}, LCh/y;->x()Lfi/b;

    move-result-object v1

    invoke-virtual {v1}, Lfi/b;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public z()[Lfi/b;
    .locals 4

    iget-object v0, p0, LCh/y;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lfi/b;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, LCh/y;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/b;->u(Ljava/lang/Object;)Lfi/b;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
