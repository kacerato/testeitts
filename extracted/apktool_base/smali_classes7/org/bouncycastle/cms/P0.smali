.class public Lorg/bouncycastle/cms/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/h;

.field public b:LQk/q;

.field public c:LQk/J;

.field public d:Lorg/bouncycastle/cms/M;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/P0;->d:Lorg/bouncycastle/cms/M;

    iput-object p2, p0, Lorg/bouncycastle/cms/P0;->c:LQk/J;

    iput-object p3, p0, Lorg/bouncycastle/cms/P0;->a:LQk/h;

    iput-object p4, p0, Lorg/bouncycastle/cms/P0;->b:LQk/q;

    return-void
.end method


# virtual methods
.method public a()Lli/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->a:LQk/h;

    invoke-interface {v0}, LQk/h;->b()Lli/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lhi/b;Lhi/b;)LQk/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->d:Lorg/bouncycastle/cms/M;

    invoke-interface {v0, p2, p1}, Lorg/bouncycastle/cms/M;->a(Lhi/b;Lhi/b;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->c:LQk/J;

    invoke-interface {v0, p2}, LQk/J;->a(Ljava/lang/String;)Lhi/b;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->a:LQk/h;

    new-instance v1, Lhi/b;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {v0, v1}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Lhi/b;)LQk/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->b:LQk/q;

    invoke-interface {v0, p1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/P0;->a:LQk/h;

    invoke-interface {v0}, LQk/h;->c()Z

    move-result v0

    return v0
.end method
