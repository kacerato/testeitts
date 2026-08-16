.class public LEk/n;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/n$a;
    }
.end annotation


# instance fields
.field public final b:LFk/O;

.field public final c:LFk/q0;

.field public final d:LFk/q0;

.field public final e:LFk/o0;

.field public final f:LFk/w;

.field public final g:LEk/u;

.field public final h:LFk/q;

.field public final i:LFk/X;

.field public final j:LEk/b;

.field public final k:LEk/x;

.field public final l:LEk/g;


# direct methods
.method public constructor <init>(LFk/O;LFk/q0;LFk/q0;LFk/o0;LFk/w;LEk/u;LFk/q;LFk/X;LEk/b;LEk/x;LEk/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/n;->b:LFk/O;

    iput-object p2, p0, LEk/n;->c:LFk/q0;

    iput-object p3, p0, LEk/n;->d:LFk/q0;

    iput-object p4, p0, LEk/n;->e:LFk/o0;

    iput-object p5, p0, LEk/n;->f:LFk/w;

    iput-object p6, p0, LEk/n;->g:LEk/u;

    iput-object p7, p0, LEk/n;->h:LFk/q;

    iput-object p8, p0, LEk/n;->i:LFk/X;

    iput-object p9, p0, LEk/n;->j:LEk/b;

    iput-object p10, p0, LEk/n;->k:LEk/x;

    iput-object p11, p0, LEk/n;->l:LEk/g;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 11 or 7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LFk/O;->u(Ljava/lang/Object;)LFk/O;

    move-result-object v1

    iput-object v1, p0, LEk/n;->b:LFk/O;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-class v3, LFk/q0;

    invoke-static {v3, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFk/q0;

    iput-object v1, p0, LEk/n;->c:LFk/q0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFk/q0;

    iput-object v1, p0, LEk/n;->d:LFk/q0;

    const-class v1, LFk/o0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFk/o0;

    iput-object v1, p0, LEk/n;->e:LFk/o0;

    const-class v1, LFk/w;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFk/w;

    iput-object v1, p0, LEk/n;->f:LFk/w;

    const-class v1, LEk/u;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEk/u;

    iput-object v1, p0, LEk/n;->g:LEk/u;

    const-class v1, LFk/q;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFk/q;

    iput-object v1, p0, LEk/n;->h:LFk/q;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    const-class p1, LFk/X;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/X;

    iput-object p1, p0, LEk/n;->i:LFk/X;

    const-class p1, LEk/b;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/b;

    iput-object p1, p0, LEk/n;->j:LEk/b;

    const-class p1, LEk/x;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/x;

    iput-object p1, p0, LEk/n;->k:LEk/x;

    const-class p1, LEk/g;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/g;

    :goto_1
    iput-object p1, p0, LEk/n;->l:LEk/g;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, LEk/n;->i:LFk/X;

    iput-object p1, p0, LEk/n;->j:LEk/b;

    iput-object p1, p0, LEk/n;->k:LEk/x;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public static C(Ljava/lang/Object;)LEk/n;
    .locals 1

    instance-of v0, p0, LEk/n;

    if-eqz v0, :cond_0

    check-cast p0, LEk/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u()LEk/n$a;
    .locals 1

    new-instance v0, LEk/n$a;

    invoke-direct {v0}, LEk/n$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A()LFk/q0;
    .locals 1

    iget-object v0, p0, LEk/n;->c:LFk/q0;

    return-object v0
.end method

.method public B()LFk/X;
    .locals 1

    iget-object v0, p0, LEk/n;->i:LFk/X;

    return-object v0
.end method

.method public D()LEk/u;
    .locals 1

    iget-object v0, p0, LEk/n;->g:LEk/u;

    return-object v0
.end method

.method public E()LFk/w;
    .locals 1

    iget-object v0, p0, LEk/n;->f:LFk/w;

    return-object v0
.end method

.method public F()LEk/x;
    .locals 1

    iget-object v0, p0, LEk/n;->k:LEk/x;

    return-object v0
.end method

.method public G()LFk/O;
    .locals 1

    iget-object v0, p0, LEk/n;->b:LFk/O;

    return-object v0
.end method

.method public H()LEk/b;
    .locals 1

    iget-object v0, p0, LEk/n;->j:LEk/b;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 14

    new-instance v0, Loh/G0;

    iget-object v1, p0, LEk/n;->b:LFk/O;

    iget-object v2, p0, LEk/n;->c:LFk/q0;

    invoke-static {v2}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v2

    iget-object v3, p0, LEk/n;->d:LFk/q0;

    invoke-static {v3}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v3

    iget-object v4, p0, LEk/n;->e:LFk/o0;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    iget-object v5, p0, LEk/n;->f:LFk/w;

    invoke-static {v5}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v5

    iget-object v6, p0, LEk/n;->g:LEk/u;

    invoke-static {v6}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v6

    iget-object v7, p0, LEk/n;->h:LFk/q;

    invoke-static {v7}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v7

    iget-object v8, p0, LEk/n;->i:LFk/X;

    invoke-static {v8}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v8

    iget-object v9, p0, LEk/n;->j:LEk/b;

    invoke-static {v9}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v9

    iget-object v10, p0, LEk/n;->k:LEk/x;

    invoke-static {v10}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v10

    iget-object v11, p0, LEk/n;->l:LEk/g;

    invoke-static {v11}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v11

    const/16 v12, 0xb

    new-array v12, v12, [Loh/g;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v1, 0x1

    aput-object v2, v12, v1

    const/4 v1, 0x2

    aput-object v3, v12, v1

    const/4 v1, 0x3

    aput-object v4, v12, v1

    const/4 v1, 0x4

    aput-object v5, v12, v1

    const/4 v1, 0x5

    aput-object v6, v12, v1

    const/4 v1, 0x6

    aput-object v7, v12, v1

    const/4 v1, 0x7

    aput-object v8, v12, v1

    const/16 v1, 0x8

    aput-object v9, v12, v1

    const/16 v1, 0x9

    aput-object v10, v12, v1

    const/16 v1, 0xa

    aput-object v11, v12, v1

    invoke-direct {v0, v12}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public v()LEk/g;
    .locals 1

    iget-object v0, p0, LEk/n;->l:LEk/g;

    return-object v0
.end method

.method public x()LFk/q;
    .locals 1

    iget-object v0, p0, LEk/n;->h:LFk/q;

    return-object v0
.end method

.method public y()LFk/q0;
    .locals 1

    iget-object v0, p0, LEk/n;->d:LFk/q0;

    return-object v0
.end method

.method public z()LFk/o0;
    .locals 1

    iget-object v0, p0, LEk/n;->e:LFk/o0;

    return-object v0
.end method
