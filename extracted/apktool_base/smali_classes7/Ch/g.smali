.class public LCh/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LCh/f;

.field public c:LCh/k;

.field public d:LCh/o;


# direct methods
.method public constructor <init>(LCh/f;LCh/k;LCh/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/g;->b:LCh/f;

    iput-object p2, p0, LCh/g;->c:LCh/k;

    iput-object p3, p0, LCh/g;->d:LCh/o;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    invoke-static {v0}, LCh/o;->u(Ljava/lang/Object;)LCh/o;

    move-result-object v0

    iput-object v0, p0, LCh/g;->d:LCh/o;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    invoke-static {v0}, LCh/k;->u(Ljava/lang/Object;)LCh/k;

    move-result-object v0

    iput-object v0, p0, LCh/g;->c:LCh/k;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    invoke-static {v0}, LCh/f;->v(Ljava/lang/Object;)LCh/f;

    move-result-object v0

    iput-object v0, p0, LCh/g;->b:LCh/f;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static v(Ljava/lang/Object;)LCh/g;
    .locals 1

    instance-of v0, p0, LCh/g;

    if-eqz v0, :cond_0

    check-cast p0, LCh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/g;->b:LCh/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-virtual {v1}, LCh/f;->r()Loh/B;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LCh/g;->c:LCh/k;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-virtual {v1}, LCh/k;->r()Loh/B;

    move-result-object v1

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LCh/g;->d:LCh/o;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-virtual {v1}, LCh/o;->r()Loh/B;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LCh/f;
    .locals 1

    iget-object v0, p0, LCh/g;->b:LCh/f;

    return-object v0
.end method

.method public x()LCh/k;
    .locals 1

    iget-object v0, p0, LCh/g;->c:LCh/k;

    return-object v0
.end method

.method public y()LCh/o;
    .locals 1

    iget-object v0, p0, LCh/g;->d:LCh/o;

    return-object v0
.end method
