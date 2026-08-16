.class public Loi/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lth/l;


# direct methods
.method public constructor <init>(Lth/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/i;->a:Lth/l;

    return-void
.end method


# virtual methods
.method public a()Lth/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Loi/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Loi/i;->a:Lth/l;

    invoke-virtual {v0}, Lth/l;->v()Lth/n;

    move-result-object v0

    invoke-virtual {v0}, Lth/n;->u()Lth/i;

    move-result-object v0

    invoke-virtual {v0}, Lth/i;->u()Lth/b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "plaintext certificate asked for, none found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lorg/bouncycastle/cms/E0;)Lth/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Loi/i;->c()Lorg/bouncycastle/cms/y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/y;->e()Lorg/bouncycastle/cms/I0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/I0;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/H0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/H0;->a(Lorg/bouncycastle/cms/E0;)[B

    move-result-object p1

    invoke-static {p1}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public c()Lorg/bouncycastle/cms/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Loi/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Loi/i;->a:Lth/l;

    invoke-virtual {v0}, Lth/l;->v()Lth/n;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/y;

    new-instance v2, Luh/o;

    sget-object v3, LXh/t;->J1:Loh/x;

    invoke-virtual {v0}, Lth/n;->u()Lth/i;

    move-result-object v0

    invoke-virtual {v0}, Lth/i;->v()Lwh/l;

    move-result-object v0

    invoke-virtual {v0}, Lwh/l;->v()Loh/g;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Luh/o;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/y;-><init>(Luh/o;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cms/y;->e()Lorg/bouncycastle/cms/I0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/I0;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data encrypted for more than one recipient"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypted certificate asked for, none found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Loi/i;->a:Lth/l;

    invoke-virtual {v0}, Lth/l;->v()Lth/n;

    move-result-object v0

    invoke-virtual {v0}, Lth/n;->u()Lth/i;

    move-result-object v0

    invoke-virtual {v0}, Lth/i;->x()Z

    move-result v0

    return v0
.end method

.method public e()Lth/l;
    .locals 1

    iget-object v0, p0, Loi/i;->a:Lth/l;

    return-object v0
.end method
