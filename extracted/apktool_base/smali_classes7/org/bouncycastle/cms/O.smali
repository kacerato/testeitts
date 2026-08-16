.class public Lorg/bouncycastle/cms/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# static fields
.field public static final g:Lorg/bouncycastle/cms/U;

.field public static final h:LQk/j;


# instance fields
.field public b:Luh/V;

.field public c:Luh/o;

.field public d:Lorg/bouncycastle/cms/V;

.field public e:Lorg/bouncycastle/cms/O0;

.field public f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    sput-object v0, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/O;->h:LQk/j;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/O;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Luh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->f:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->k()Luh/V;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/O;-><init>(Ljava/util/Map;Luh/o;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/F;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 4
    new-instance v0, Loh/r;

    invoke-direct {v0, p2}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/F;Luh/o;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/F;Luh/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/cms/V;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/cms/V;

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/O$a;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/O$a;-><init>(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/cms/F;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->k()Luh/V;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/F;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 6
    invoke-static {p2}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/F;Luh/o;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/O;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/cms/O;->b:Luh/V;

    iput-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    iget-object v0, p1, Lorg/bouncycastle/cms/O;->c:Luh/o;

    iput-object v0, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    iget-object v0, p1, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    iput-object v0, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    iget-object p1, p1, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->k()Luh/V;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p1}, Luh/V;->A()Luh/o;

    move-result-object p1

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Loh/y;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/G;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->A()Luh/o;

    move-result-object v1

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object v1

    check-cast p1, Loh/y;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/G;-><init>(Loh/x;[B)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/y0;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->A()Luh/o;

    move-result-object v1

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/y0;-><init>(Loh/x;Loh/g;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/O;-><init>(Luh/o;)V

    return-void
.end method

.method public static a(Lorg/bouncycastle/cms/O;Lhi/b;)Lorg/bouncycastle/cms/O;
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/O;->h:LQk/j;

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/cms/O;->b(Lorg/bouncycastle/cms/O;Lhi/b;LQk/o;)Lorg/bouncycastle/cms/O;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/bouncycastle/cms/O;Lhi/b;LQk/o;)Lorg/bouncycastle/cms/O;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->f()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/O;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/O;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhi/b;

    invoke-virtual {v3, v4, p2}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lorg/bouncycastle/cms/X;->g(Ljava/util/Set;)Loh/G;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p0}, Luh/V;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;

    new-instance p2, Loh/h;

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    invoke-direct {p2, v0}, Loh/h;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p2, p1}, Loh/h;->a(Loh/g;)V

    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Loh/h;->a(Loh/g;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Loh/g0;

    invoke-direct {p0, p2}, Loh/g0;-><init>(Loh/h;)V

    invoke-static {p0}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object p0

    iput-object p0, v1, Lorg/bouncycastle/cms/O;->b:Luh/V;

    new-instance p0, Luh/o;

    iget-object p1, v1, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object p1

    iget-object p2, v1, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-direct {p0, p1, p2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    iput-object p0, v1, Lorg/bouncycastle/cms/O;->c:Luh/o;

    return-object v1
.end method

.method public static p(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;)Lorg/bouncycastle/cms/O;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/O;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/O;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->r(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->o(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/cms/X;->i(Ljava/util/List;)Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result p2

    if-eqz p2, :cond_3

    move-object v5, p1

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    if-eqz p3, :cond_4

    invoke-static {p3}, Lorg/bouncycastle/cms/X;->q(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->i(Ljava/util/List;)Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result p2

    if-eqz p2, :cond_4

    move-object v6, p1

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    new-instance p1, Luh/V;

    iget-object p2, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p2}, Luh/V;->z()Loh/G;

    move-result-object v3

    iget-object p2, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p2}, Luh/V;->A()Luh/o;

    move-result-object v4

    iget-object p0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p0}, Luh/V;->C()Loh/G;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Luh/V;-><init>(Loh/G;Luh/o;Loh/G;Loh/G;Loh/G;)V

    iput-object p1, v0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    new-instance p0, Luh/o;

    iget-object p1, v0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object p1

    iget-object p2, v0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-direct {p0, p1, p2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    iput-object p0, v0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    return-object v0
.end method

.method public static q(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/cms/O0;)Lorg/bouncycastle/cms/O;
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/O;->h:LQk/j;

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/cms/O;->r(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/cms/O0;LQk/o;)Lorg/bouncycastle/cms/O;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/cms/O0;LQk/o;)Lorg/bouncycastle/cms/O;
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/O;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/O;)V

    iput-object p1, v0, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object p1

    new-instance v2, Loh/h;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Loh/h;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/N0;

    invoke-static {v1, v3, p2}, Lorg/bouncycastle/cms/X;->b(Ljava/util/Set;Lorg/bouncycastle/cms/N0;LQk/o;)V

    invoke-virtual {v3}, Lorg/bouncycastle/cms/N0;->u()Luh/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/cms/X;->g(Ljava/util/Set;)Loh/G;

    move-result-object p1

    new-instance p2, Loh/X0;

    invoke-direct {p2, v2}, Loh/X0;-><init>(Loh/h;)V

    iget-object p0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {p0}, Luh/V;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;

    new-instance v1, Loh/h;

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v1, p1}, Loh/h;->a(Loh/g;)V

    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/g0;

    invoke-direct {p0, v1}, Loh/g0;-><init>(Loh/h;)V

    invoke-static {p0}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    new-instance p0, Luh/o;

    iget-object p1, v0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object p1

    iget-object p2, v0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-direct {p0, p1, p2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    iput-object p0, v0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    return-object v0
.end method


# virtual methods
.method public c()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/e;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->y()Loh/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->c(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->x()Loh/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->d(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->y()Loh/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->e(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lhi/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->z()Loh/G;

    move-result-object v1

    invoke-virtual {v1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {v0, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h(Loh/x;)Lorg/bouncycastle/util/t;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/O;->g:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v1}, Luh/V;->x()Loh/G;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/U;->g(Loh/x;Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object p1

    return-object p1
.end method

.method public i()Lorg/bouncycastle/cms/V;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Luh/V;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "Malformed content."

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    invoke-virtual {v1}, Luh/o;->u()Loh/g;

    move-result-object v1

    invoke-static {v1}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :goto_1
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public l()Lorg/bouncycastle/cms/O0;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->C()Loh/G;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Luh/Y;->z(Ljava/lang/Object;)Luh/Y;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v4}, Luh/V;->A()Luh/o;

    move-result-object v4

    invoke-virtual {v4}, Luh/o;->v()Loh/x;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/O;->f:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-instance v5, Lorg/bouncycastle/cms/N0;

    iget-object v7, p0, Lorg/bouncycastle/cms/O;->d:Lorg/bouncycastle/cms/V;

    invoke-direct {v5, v3, v4, v7, v6}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/cms/O;->f:Ljava/util/Map;

    invoke-virtual {v3}, Luh/Y;->v()Lhi/b;

    move-result-object v7

    invoke-virtual {v7}, Lhi/b;->u()Loh/x;

    move-result-object v7

    invoke-virtual {v7}, Loh/x;->J()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/cms/O;->f:Ljava/util/Map;

    invoke-virtual {v3}, Luh/Y;->v()Lhi/b;

    move-result-object v7

    invoke-virtual {v7}, Lhi/b;->u()Loh/x;

    move-result-object v7

    goto :goto_1

    :goto_2
    new-instance v7, Lorg/bouncycastle/cms/N0;

    invoke-direct {v7, v3, v4, v6, v5}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/O0;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/O0;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/O;->e:Lorg/bouncycastle/cms/O0;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->D()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->C()Loh/G;

    move-result-object v0

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->C()Loh/G;

    move-result-object v0

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O;->c:Luh/o;

    return-object v0
.end method

.method public final t(Lorg/bouncycastle/cms/N0;Lorg/bouncycastle/cms/Q0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->l()Lorg/bouncycastle/cms/K0;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/cms/Q0;->a(Lorg/bouncycastle/cms/K0;)Lorg/bouncycastle/cms/P0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cms/N0;->w(Lorg/bouncycastle/cms/P0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->e()Lorg/bouncycastle/cms/O0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/N0;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/cms/O;->t(Lorg/bouncycastle/cms/N0;Lorg/bouncycastle/cms/Q0;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public u(Lorg/bouncycastle/cms/Q0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/O;->v(Lorg/bouncycastle/cms/Q0;Z)Z

    move-result p1

    return p1
.end method

.method public v(Lorg/bouncycastle/cms/Q0;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->l()Lorg/bouncycastle/cms/O0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/N0;

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/cms/N0;->l()Lorg/bouncycastle/cms/K0;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/Q0;->a(Lorg/bouncycastle/cms/K0;)Lorg/bouncycastle/cms/P0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/N0;->w(Lorg/bouncycastle/cms/P0;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/cms/N0;->e()Lorg/bouncycastle/cms/O0;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/N0;

    invoke-virtual {p0, v2, p1}, Lorg/bouncycastle/cms/O;->t(Lorg/bouncycastle/cms/N0;Lorg/bouncycastle/cms/Q0;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    return v3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failure in verifier provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
