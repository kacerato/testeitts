.class public LEk/K;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEk/K$a;
    }
.end annotation


# instance fields
.field public final b:LEk/d;

.field public final c:LFk/w;

.field public final d:LFk/h;

.field public final e:LFk/A0;

.field public final f:LFk/r;

.field public final g:LFk/l0;

.field public final h:LFk/c0;

.field public final i:LEk/C;

.field public final j:LEk/C;

.field public final k:Loh/t;

.field public final l:LFk/S;

.field public final m:LEk/M;


# direct methods
.method public constructor <init>(LEk/d;LFk/w;LFk/h;LFk/A0;LFk/r;LFk/l0;LFk/c0;LEk/C;LEk/C;Loh/t;LFk/S;LEk/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LEk/K;->b:LEk/d;

    iput-object p2, p0, LEk/K;->c:LFk/w;

    iput-object p3, p0, LEk/K;->d:LFk/h;

    iput-object p4, p0, LEk/K;->e:LFk/A0;

    iput-object p5, p0, LEk/K;->f:LFk/r;

    iput-object p6, p0, LEk/K;->g:LFk/l0;

    iput-object p7, p0, LEk/K;->h:LFk/c0;

    iput-object p8, p0, LEk/K;->i:LEk/C;

    iput-object p9, p0, LEk/K;->j:LEk/C;

    iput-object p10, p0, LEk/K;->k:Loh/t;

    iput-object p11, p0, LEk/K;->l:LFk/S;

    iput-object p12, p0, LEk/K;->m:LEk/M;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LEk/d;->z(Ljava/lang/Object;)LEk/d;

    move-result-object p1

    iput-object p1, p0, LEk/K;->b:LEk/d;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFk/w;->v(Ljava/lang/Object;)LFk/w;

    move-result-object p1

    iput-object p1, p0, LEk/K;->c:LFk/w;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFk/h;->y(Ljava/lang/Object;)LFk/h;

    move-result-object p1

    iput-object p1, p0, LEk/K;->d:LFk/h;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFk/A0;->w(Ljava/lang/Object;)LFk/A0;

    move-result-object p1

    iput-object p1, p0, LEk/K;->e:LFk/A0;

    const-class p1, LFk/r;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/r;

    iput-object p1, p0, LEk/K;->f:LFk/r;

    const-class p1, LFk/l0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/l0;

    iput-object p1, p0, LEk/K;->g:LFk/l0;

    const-class p1, LFk/c0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/c0;

    iput-object p1, p0, LEk/K;->h:LFk/c0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-class v1, LEk/C;

    invoke-static {v1, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/C;

    iput-object p1, p0, LEk/K;->i:LEk/C;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEk/C;

    iput-object p1, p0, LEk/K;->j:LEk/C;

    const-class p1, Loh/t;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/t;

    iput-object p1, p0, LEk/K;->k:Loh/t;

    const-class p1, LFk/S;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lyk/i;->y(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFk/S;

    iput-object p1, p0, LEk/K;->l:LFk/S;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LEk/M;->v(Ljava/lang/Object;)LEk/M;

    move-result-object p1

    iput-object p1, p0, LEk/K;->m:LEk/M;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 12"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A(LEk/K;)LFk/r;
    .locals 0

    iget-object p0, p0, LEk/K;->f:LFk/r;

    return-object p0
.end method

.method public static synthetic B(LEk/K;)LFk/l0;
    .locals 0

    iget-object p0, p0, LEk/K;->g:LFk/l0;

    return-object p0
.end method

.method public static synthetic C(LEk/K;)LFk/c0;
    .locals 0

    iget-object p0, p0, LEk/K;->h:LFk/c0;

    return-object p0
.end method

.method public static synthetic D(LEk/K;)LEk/C;
    .locals 0

    iget-object p0, p0, LEk/K;->i:LEk/C;

    return-object p0
.end method

.method public static synthetic E(LEk/K;)LEk/C;
    .locals 0

    iget-object p0, p0, LEk/K;->j:LEk/C;

    return-object p0
.end method

.method public static synthetic F(LEk/K;)Loh/t;
    .locals 0

    iget-object p0, p0, LEk/K;->k:Loh/t;

    return-object p0
.end method

.method public static G()LEk/K$a;
    .locals 1

    new-instance v0, LEk/K$a;

    invoke-direct {v0}, LEk/K$a;-><init>()V

    return-object v0
.end method

.method public static R(Ljava/lang/Object;)LEk/K;
    .locals 1

    instance-of v0, p0, LEk/K;

    if-eqz v0, :cond_0

    check-cast p0, LEk/K;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/K;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/K;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic u(LEk/K;)LEk/d;
    .locals 0

    iget-object p0, p0, LEk/K;->b:LEk/d;

    return-object p0
.end method

.method public static synthetic v(LEk/K;)LFk/w;
    .locals 0

    iget-object p0, p0, LEk/K;->c:LFk/w;

    return-object p0
.end method

.method public static synthetic w(LEk/K;)LFk/S;
    .locals 0

    iget-object p0, p0, LEk/K;->l:LFk/S;

    return-object p0
.end method

.method public static synthetic x(LEk/K;)LEk/M;
    .locals 0

    iget-object p0, p0, LEk/K;->m:LEk/M;

    return-object p0
.end method

.method public static synthetic y(LEk/K;)LFk/h;
    .locals 0

    iget-object p0, p0, LEk/K;->d:LFk/h;

    return-object p0
.end method

.method public static synthetic z(LEk/K;)LFk/A0;
    .locals 0

    iget-object p0, p0, LEk/K;->e:LFk/A0;

    return-object p0
.end method


# virtual methods
.method public H()LFk/c0;
    .locals 1

    iget-object v0, p0, LEk/K;->h:LFk/c0;

    return-object v0
.end method

.method public I()LFk/l0;
    .locals 1

    iget-object v0, p0, LEk/K;->g:LFk/l0;

    return-object v0
.end method

.method public J()Loh/t;
    .locals 1

    iget-object v0, p0, LEk/K;->k:Loh/t;

    return-object v0
.end method

.method public L()LEk/C;
    .locals 1

    iget-object v0, p0, LEk/K;->i:LEk/C;

    return-object v0
.end method

.method public M()LEk/C;
    .locals 1

    iget-object v0, p0, LEk/K;->j:LEk/C;

    return-object v0
.end method

.method public N()LFk/w;
    .locals 1

    iget-object v0, p0, LEk/K;->c:LFk/w;

    return-object v0
.end method

.method public O()LFk/h;
    .locals 1

    iget-object v0, p0, LEk/K;->d:LFk/h;

    return-object v0
.end method

.method public P()LFk/S;
    .locals 1

    iget-object v0, p0, LEk/K;->l:LFk/S;

    return-object v0
.end method

.method public Q()LEk/d;
    .locals 1

    iget-object v0, p0, LEk/K;->b:LEk/d;

    return-object v0
.end method

.method public S()LFk/r;
    .locals 1

    iget-object v0, p0, LEk/K;->f:LFk/r;

    return-object v0
.end method

.method public T()LFk/A0;
    .locals 1

    iget-object v0, p0, LEk/K;->e:LFk/A0;

    return-object v0
.end method

.method public U()LEk/M;
    .locals 1

    iget-object v0, p0, LEk/K;->m:LEk/M;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 14

    iget-object v0, p0, LEk/K;->b:LEk/d;

    iget-object v1, p0, LEk/K;->c:LFk/w;

    iget-object v2, p0, LEk/K;->d:LFk/h;

    iget-object v3, p0, LEk/K;->e:LFk/A0;

    iget-object v4, p0, LEk/K;->f:LFk/r;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    iget-object v5, p0, LEk/K;->g:LFk/l0;

    invoke-static {v5}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v5

    iget-object v6, p0, LEk/K;->h:LFk/c0;

    invoke-static {v6}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v6

    iget-object v7, p0, LEk/K;->i:LEk/C;

    invoke-static {v7}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v7

    iget-object v8, p0, LEk/K;->j:LEk/C;

    invoke-static {v8}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v8

    iget-object v9, p0, LEk/K;->k:Loh/t;

    invoke-static {v9}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v9

    iget-object v10, p0, LEk/K;->l:LFk/S;

    invoke-static {v10}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v10

    iget-object v11, p0, LEk/K;->m:LEk/M;

    const/16 v12, 0xc

    new-array v12, v12, [Loh/g;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    invoke-static {v12}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method
