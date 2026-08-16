.class public LRk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRk/k$b;
    }
.end annotation


# instance fields
.field public a:LRk/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LRk/j;->b:LRk/l;

    iput-object v0, p0, LRk/k;->a:LRk/l;

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/p;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LRk/k;->a:LRk/l;

    invoke-interface {v0, p1}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object v0

    new-instance v1, LRk/k$b;

    invoke-direct {v1, v0}, LRk/k$b;-><init>(LBi/y;)V

    new-instance v0, LRk/k$a;

    invoke-direct {v0, p0, p1, v1}, LRk/k$a;-><init>(LRk/k;Lhi/b;LRk/k$b;)V

    return-object v0
.end method
