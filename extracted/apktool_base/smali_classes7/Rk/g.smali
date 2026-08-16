.class public abstract LRk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRk/g$c;
    }
.end annotation


# instance fields
.field public a:LRk/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LRk/j;->b:LRk/l;

    iput-object v0, p0, LRk/g;->a:LRk/l;

    return-void
.end method

.method public static synthetic a(LRk/g;Lhi/b;LXi/c;)LRk/u;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LRk/g;->d(Lhi/b;LXi/c;)LRk/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(LXi/c;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, LRk/g$b;

    invoke-direct {v0, p0, p1}, LRk/g$b;-><init>(LRk/g;LXi/c;)V

    return-object v0
.end method

.method public c(Lli/h;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, LRk/g$a;

    invoke-direct {v0, p0, p1}, LRk/g$a;-><init>(LRk/g;Lli/h;)V

    return-object v0
.end method

.method public final d(Lhi/b;LXi/c;)LRk/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LRk/g;->e(Lhi/b;)LBi/S;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, LBi/S;->a(ZLBi/k;)V

    new-instance p2, LRk/u;

    invoke-direct {p2, p1}, LRk/u;-><init>(LBi/S;)V

    return-object p2
.end method

.method public abstract e(Lhi/b;)LBi/S;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public abstract f(Lhi/h0;)LXi/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
