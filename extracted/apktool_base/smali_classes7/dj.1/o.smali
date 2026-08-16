.class public Ldj/o;
.super Ldj/g;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lzh/h;

    sget-object v1, Lzh/m;->e:Lzh/m;

    invoke-direct {v0, v1}, Lzh/h;-><init>(Lzh/m;)V

    invoke-direct {p0, v0}, Ldj/g;-><init>(Lzh/h;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldj/o;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public i(Ldj/n;)V
    .locals 1

    iget-object v0, p0, Ldj/o;->d:Ljava/util/List;

    invoke-virtual {p1}, Ldj/n;->a()Lzh/n;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Lhi/B;)V
    .locals 3

    iget-object v0, p0, Ldj/o;->d:Ljava/util/List;

    new-instance v1, Lzh/n;

    new-instance v2, Lzh/a;

    invoke-direct {v2, p1}, Lzh/a;-><init>(Lhi/B;)V

    invoke-direct {v1, v2}, Lzh/n;-><init>(Lzh/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lli/h;)V
    .locals 4

    iget-object v0, p0, Ldj/o;->d:Ljava/util/List;

    new-instance v1, Lzh/n;

    new-instance v2, Lzh/a;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lzh/a;-><init>(ILoh/g;)V

    invoke-direct {v1, v2}, Lzh/n;-><init>(Lzh/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l()Ldj/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    new-instance v0, Lzh/k;

    iget-object v1, p0, Ldj/o;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lzh/n;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lzh/n;

    invoke-direct {v0, v1}, Lzh/k;-><init>([Lzh/n;)V

    invoke-virtual {p0, v0}, Ldj/g;->b(Lzh/k;)Ldj/f;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Ldj/g;->c:Lzh/h;

    new-instance v1, Lzh/j;

    invoke-direct {v1, p1}, Lzh/j;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lzh/h;->i(Lzh/j;)V

    return-void
.end method
