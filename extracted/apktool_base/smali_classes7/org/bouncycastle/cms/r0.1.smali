.class public abstract Lorg/bouncycastle/cms/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/G0;


# instance fields
.field public final a:LQk/d;

.field public b:Luh/z;

.field public c:[B


# direct methods
.method public constructor <init>(Luh/z;LQk/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/r0;->b:Luh/z;

    iput-object p2, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    return-void
.end method

.method public constructor <init>([BLQk/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/r0;->c:[B

    iput-object p2, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    return-void
.end method


# virtual methods
.method public final a(LQk/r;)Luh/Q;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    invoke-interface {v0, p1}, LQk/y;->b(LQk/r;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->b:Luh/z;

    new-instance v1, Luh/P;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Luh/P;-><init>(Luh/z;)V

    goto :goto_0

    :cond_0
    new-instance v0, Loh/C0;

    iget-object v2, p0, Lorg/bouncycastle/cms/r0;->c:[B

    invoke-direct {v0, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0}, Luh/P;-><init>(Loh/y;)V

    :goto_0
    new-instance v0, Luh/Q;

    new-instance v2, Luh/F;

    iget-object v3, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    invoke-virtual {v3}, LQk/d;->a()Lhi/b;

    move-result-object v3

    new-instance v4, Loh/C0;

    invoke-direct {v4, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v1, v3, v4}, Luh/F;-><init>(Luh/P;Lhi/b;Loh/y;)V

    invoke-direct {v0, v2}, Luh/Q;-><init>(Luh/F;)V

    return-object v0

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
