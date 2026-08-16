.class public Lni/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/o;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhi/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loh/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    invoke-direct {p0, v0}, Lni/d;-><init>(LQk/o;)V

    return-void
.end method

.method public constructor <init>(LQk/o;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni/d;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni/d;->d:Ljava/util/List;

    iput-object p1, p0, Lni/d;->a:LQk/o;

    return-void
.end method


# virtual methods
.method public a(Lli/h;Ljava/math/BigInteger;)Lni/d;
    .locals 1

    new-instance v0, Loh/s;

    invoke-direct {v0, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0}, Lni/d;->b(Lli/h;Loh/s;)Lni/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lli/h;Loh/s;)Lni/d;
    .locals 2

    new-instance v0, Lth/b;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lth/b;-><init>(Lhi/q;)V

    invoke-virtual {p1}, Lli/h;->k()Lhi/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lni/d;->c(Lth/b;Lhi/b;Loh/s;)Lni/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lth/b;Lhi/b;Loh/s;)Lni/d;
    .locals 1

    iget-object v0, p0, Lni/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lni/d;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lni/d;->d:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(LQk/q;)Lni/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    new-instance v0, Loh/h;

    iget-object v1, p0, Lni/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lni/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lni/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lth/b;

    iget-object v3, p0, Lni/d;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi/b;

    iget-object v4, p0, Lni/d;->a:LQk/o;

    invoke-static {v2, v3, p1, v4}, Lni/a;->a(Loh/v;Lhi/b;LQk/q;LQk/o;)[B

    move-result-object v2

    iget-object v3, p0, Lni/d;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/s;

    new-instance v4, Lth/m;

    invoke-direct {v4, v2, v3}, Lth/m;-><init>([BLoh/s;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p1}, Lth/h;->u(Ljava/lang/Object;)Lth/h;

    move-result-object p1

    new-instance v0, Lni/c;

    iget-object v1, p0, Lni/d;->a:LQk/o;

    invoke-direct {v0, p1, v1}, Lni/c;-><init>(Lth/h;LQk/o;)V

    return-object v0
.end method
