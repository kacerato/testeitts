.class public Lorg/bouncycastle/cms/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/F;
.implements Lorg/bouncycastle/cms/J;


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/I;->b:Z

    iput-object p1, p0, Lorg/bouncycastle/cms/I;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public b(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/I;->c()V

    iget-object v0, p0, Lorg/bouncycastle/cms/I;->a:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lfm/d;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/I;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/cms/I;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/I;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CMSProcessableInputStream can only be used once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/I;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/I;->c()V

    iget-object v0, p0, Lorg/bouncycastle/cms/I;->a:Ljava/io/InputStream;

    return-object v0
.end method
