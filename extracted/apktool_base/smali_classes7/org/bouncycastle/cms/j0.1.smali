.class public abstract Lorg/bouncycastle/cms/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/G0;


# instance fields
.field public final a:Lorg/bouncycastle/cms/h0;

.field public b:Luh/z;

.field public c:[B


# direct methods
.method public constructor <init>(Luh/z;Lorg/bouncycastle/cms/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/j0;->b:Luh/z;

    iput-object p2, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/cms/h0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/j0;->c:[B

    iput-object p2, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    return-void
.end method


# virtual methods
.method public final a(LQk/r;)Luh/Q;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-interface {v0, p1}, LQk/y;->b(LQk/r;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->b:Luh/z;

    new-instance v1, Luh/P;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Luh/P;-><init>(Luh/z;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    new-instance v0, Loh/C0;

    iget-object v2, p0, Lorg/bouncycastle/cms/j0;->c:[B

    invoke-direct {v0, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0}, Luh/P;-><init>(Loh/y;)V

    goto :goto_0

    :goto_1
    new-instance v0, Luh/Q;

    new-instance v1, Luh/L;

    sget-object v2, Luh/l;->H8:Loh/x;

    new-instance v12, Luh/C;

    iget-object v3, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-virtual {v3}, LQk/d;->a()Lhi/b;

    move-result-object v5

    new-instance v6, Loh/C0;

    iget-object v3, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/h0;->c()[B

    move-result-object v3

    invoke-direct {v6, v3}, Loh/C0;-><init>([B)V

    iget-object v3, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/h0;->d()Lhi/b;

    move-result-object v7

    new-instance v8, Loh/s;

    iget-object v3, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/h0;->e()I

    move-result v3

    int-to-long v9, v3

    invoke-direct {v8, v9, v10}, Loh/s;-><init>(J)V

    iget-object v3, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/h0;->f()Lhi/b;

    move-result-object v10

    new-instance v11, Loh/C0;

    invoke-direct {v11, p1}, Loh/C0;-><init>([B)V

    const/4 v9, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Luh/C;-><init>(Luh/P;Lhi/b;Loh/y;Lhi/b;Loh/s;Loh/y;Lhi/b;Loh/y;)V

    invoke-direct {v1, v2, v12}, Luh/L;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v0, v1}, Luh/Q;-><init>(Luh/L;)V

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
