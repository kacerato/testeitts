.class public LAi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LRk/o;

.field public b:LQk/q;

.field public c:Lorg/bouncycastle/cms/M;

.field public d:LQk/J;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/o;LQk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAi/c;->c:Lorg/bouncycastle/cms/M;

    iput-object p2, p0, LAi/c;->d:LQk/J;

    new-instance p1, LRk/o;

    invoke-direct {p1}, LRk/o;-><init>()V

    iput-object p1, p0, LAi/c;->a:LRk/o;

    iput-object p4, p0, LAi/c;->b:LQk/q;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)Lorg/bouncycastle/cms/P0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/P0;

    iget-object v1, p0, LAi/c;->c:Lorg/bouncycastle/cms/M;

    iget-object v2, p0, LAi/c;->d:LQk/J;

    iget-object v3, p0, LAi/c;->a:LRk/o;

    invoke-virtual {v3, p1}, LRk/g;->b(LXi/c;)LQk/h;

    move-result-object p1

    iget-object v3, p0, LAi/c;->b:LQk/q;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method

.method public b(Lli/h;)Lorg/bouncycastle/cms/P0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/P0;

    iget-object v1, p0, LAi/c;->c:Lorg/bouncycastle/cms/M;

    iget-object v2, p0, LAi/c;->d:LQk/J;

    iget-object v3, p0, LAi/c;->a:LRk/o;

    invoke-virtual {v3, p1}, LRk/g;->c(Lli/h;)LQk/h;

    move-result-object p1

    iget-object v3, p0, LAi/c;->b:LQk/q;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method
