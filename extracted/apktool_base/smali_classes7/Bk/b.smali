.class public LBk/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LEk/d;

.field public final c:LFk/A0;

.field public final d:LFk/r;

.field public final e:LFk/l0;

.field public final f:LFk/c0;

.field public final g:LEk/C;


# direct methods
.method public constructor <init>(LEk/d;LFk/A0;LFk/r;LFk/l0;LFk/c0;LEk/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LBk/b;->b:LEk/d;

    iput-object p2, p0, LBk/b;->c:LFk/A0;

    iput-object p3, p0, LBk/b;->d:LFk/r;

    iput-object p4, p0, LBk/b;->e:LFk/l0;

    iput-object p5, p0, LBk/b;->f:LFk/c0;

    iput-object p6, p0, LBk/b;->g:LEk/C;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const-class v1, LEk/d;

    invoke-static {v1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEk/d;

    iput-object v0, p0, LBk/b;->b:LEk/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const-class v1, LFk/A0;

    invoke-static {v1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFk/A0;

    iput-object v0, p0, LBk/b;->c:LFk/A0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const-class v1, LFk/r;

    invoke-static {v1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFk/r;

    iput-object v0, p0, LBk/b;->d:LFk/r;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const-class v1, LFk/l0;

    invoke-static {v1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFk/l0;

    iput-object v0, p0, LBk/b;->e:LFk/l0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const-class v1, LFk/c0;

    invoke-static {v1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFk/c0;

    iput-object v0, p0, LBk/b;->f:LFk/c0;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    const-class v0, LEk/C;

    invoke-static {v0, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/C;

    iput-object p1, p0, LBk/b;->g:LEk/C;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;)LBk/b;
    .locals 1

    instance-of v0, p0, LBk/b;

    if-eqz v0, :cond_0

    check-cast p0, LBk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LBk/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LBk/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LFk/r;
    .locals 1

    iget-object v0, p0, LBk/b;->d:LFk/r;

    return-object v0
.end method

.method public B()LFk/A0;
    .locals 1

    iget-object v0, p0, LBk/b;->c:LFk/A0;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 9

    new-instance v0, Loh/G0;

    iget-object v1, p0, LBk/b;->b:LEk/d;

    invoke-static {v1}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v1

    iget-object v2, p0, LBk/b;->c:LFk/A0;

    invoke-static {v2}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v2

    iget-object v3, p0, LBk/b;->d:LFk/r;

    invoke-static {v3}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v3

    iget-object v4, p0, LBk/b;->e:LFk/l0;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    iget-object v5, p0, LBk/b;->f:LFk/c0;

    invoke-static {v5}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v5

    iget-object v6, p0, LBk/b;->g:LEk/C;

    invoke-static {v6}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Loh/g;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object v6, v7, v1

    invoke-direct {v0, v7}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()LFk/c0;
    .locals 1

    iget-object v0, p0, LBk/b;->f:LFk/c0;

    return-object v0
.end method

.method public v()LFk/l0;
    .locals 1

    iget-object v0, p0, LBk/b;->e:LFk/l0;

    return-object v0
.end method

.method public x()LEk/C;
    .locals 1

    iget-object v0, p0, LBk/b;->g:LEk/C;

    return-object v0
.end method

.method public y()LEk/d;
    .locals 1

    iget-object v0, p0, LBk/b;->b:LEk/d;

    return-object v0
.end method
