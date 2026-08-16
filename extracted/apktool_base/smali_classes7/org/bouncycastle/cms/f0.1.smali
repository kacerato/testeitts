.class public abstract Lorg/bouncycastle/cms/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/G0;


# instance fields
.field public final a:Luh/A;

.field public final b:LQk/L;


# direct methods
.method public constructor <init>(Luh/A;LQk/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/f0;->a:Luh/A;

    iput-object p2, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    return-void
.end method


# virtual methods
.method public final a(LQk/r;)Luh/Q;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Loh/C0;

    iget-object v1, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    invoke-interface {v1, p1}, LQk/y;->b(LQk/r;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    new-instance p1, Luh/Q;

    new-instance v1, Luh/B;

    iget-object v2, p0, Lorg/bouncycastle/cms/f0;->a:Luh/A;

    iget-object v3, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    invoke-virtual {v3}, LQk/L;->a()Lhi/b;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Luh/B;-><init>(Luh/A;Lhi/b;Loh/y;)V

    invoke-direct {p1, v1}, Luh/Q;-><init>(Luh/B;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception wrapping content key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
