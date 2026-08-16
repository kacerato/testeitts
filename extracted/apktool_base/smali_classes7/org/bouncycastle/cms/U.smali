.class public Lorg/bouncycastle/cms/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/cms/U;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/cms/U;

    invoke-direct {v0}, Lorg/bouncycastle/cms/U;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/U;->b:Ljava/util/Map;

    sget-object v0, LSh/d;->a0:Loh/x;

    const-string v1, "DSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->b0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->c0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->d0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->e0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->f0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->g0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->h0:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LWh/b;->j:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LWh/b;->a:Loh/x;

    const-string v2, "RSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LWh/b;->c:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LWh/b;->b:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LWh/b;->k:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->I0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->J0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->K0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->L0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->U0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->R0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->S0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->T0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->m0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->n0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->o0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->p0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->E5:Loh/x;

    const-string v3, "ECDSA"

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->K5:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->L5:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->M5:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->N5:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->i0:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->j0:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->k0:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LSh/d;->l0:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->t6:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->s:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->t:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->u:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->v:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->w:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->l:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->m:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->n:Loh/x;

    const-string v3, "RSAandMGF1"

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LAh/h;->o:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lki/r;->s6:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->H0:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lbi/b;->e:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lhi/E0;->W4:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LXh/t;->Q0:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->l:Loh/x;

    const-string v1, "GOST3410"

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->m:Loh/x;

    const-string v2, "ECGOST3410"

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    new-instance v0, Loh/x;

    const-string v3, "1.3.6.1.4.1.5849.1.6.2"

    invoke-direct {v0, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    new-instance v0, Loh/x;

    const-string v3, "1.3.6.1.4.1.5849.1.1.5"

    invoke-direct {v0, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LYh/a;->g:Loh/x;

    const-string v3, "ECGOST3410-2012-256"

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LYh/a;->h:Loh/x;

    const-string v4, "ECGOST3410-2012-512"

    invoke-static {v0, v4}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->o:Loh/x;

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->n:Loh/x;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LYh/a;->i:Loh/x;

    invoke-static {v0, v3}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    sget-object v0, LYh/a;->j:Loh/x;

    invoke-static {v0, v4}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/U;->b:Ljava/util/Map;

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lhi/b;LQk/o;)Lhi/b;
    .locals 2

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-virtual {v1, v0}, Loh/B;->z(Loh/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-interface {p2, p1}, LQk/o;->b(Loh/x;)Lhi/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Loh/G;)Lorg/bouncycastle/util/t;
    .locals 5

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Loh/G;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_1
    new-instance v2, Lli/e;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v4}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

    move-result-object v1

    invoke-direct {v2, v1}, Lli/e;-><init>(Lhi/h;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/util/e;

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/util/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public d(Loh/G;)Lorg/bouncycastle/util/t;
    .locals 3

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Loh/G;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/E;

    if-eqz v2, :cond_0

    new-instance v2, Lli/g;

    invoke-static {v1}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object v1

    invoke-direct {v2, v1}, Lli/g;-><init>(Lhi/r;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/util/e;

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/util/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public e(Loh/G;)Lorg/bouncycastle/util/t;
    .locals 3

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Loh/G;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/E;

    if-eqz v2, :cond_0

    new-instance v2, Lli/h;

    invoke-static {v1}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v1

    invoke-direct {v2, v1}, Lli/h;-><init>(Lhi/q;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/util/e;

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/util/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/U;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public g(Loh/x;Loh/G;)Lorg/bouncycastle/util/t;
    .locals 3

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Loh/G;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_0

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Luh/M;->x(Loh/M;Z)Luh/M;

    move-result-object v1

    invoke-virtual {v1}, Luh/M;->v()Loh/x;

    move-result-object v2

    invoke-virtual {p1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Luh/M;->u()Loh/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/util/e;

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/util/e;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public h(Loh/x;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/cms/U;->a(Loh/x;Ljava/lang/String;)V

    return-void
.end method
