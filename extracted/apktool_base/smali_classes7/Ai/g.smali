.class public abstract LAi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/p0;


# instance fields
.field public c:LXi/c;


# direct methods
.method public constructor <init>(LXi/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAi/g;->c:LXi/c;

    return-void
.end method


# virtual methods
.method public g(Lhi/b;Lhi/b;[B)LBi/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, LRk/q;

    iget-object v1, p0, LAi/g;->c:LXi/c;

    invoke-direct {v0, p1, v1}, LRk/q;-><init>(Lhi/b;LXi/c;)V

    :try_start_0
    invoke-interface {v0, p2, p3}, LQk/x;->b(Lhi/b;[B)LQk/r;

    move-result-object p1

    invoke-static {p1}, LAi/o;->a(LQk/r;)LBi/k;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception unwrapping key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
