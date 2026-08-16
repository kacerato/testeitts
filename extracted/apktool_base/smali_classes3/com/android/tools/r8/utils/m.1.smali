.class public final Lcom/android/tools/r8/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/DataResourceConsumer;

.field public final synthetic b:Lcom/android/tools/r8/utils/n;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/n;Lcom/android/tools/r8/DataResourceConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/m;->b:Lcom/android/tools/r8/utils/n;

    iput-object p2, p0, Lcom/android/tools/r8/utils/m;->a:Lcom/android/tools/r8/DataResourceConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/utils/m;->a:Lcom/android/tools/r8/DataResourceConsumer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public final accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/utils/m;->b:Lcom/android/tools/r8/utils/n;

    iget-object v0, v0, Lcom/android/tools/r8/utils/n;->e:Lcom/android/tools/r8/utils/r;

    iget-object v0, v0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/DataResource;)Lcom/android/tools/r8/utils/i$a;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/utils/m;->a:Lcom/android/tools/r8/DataResourceConsumer;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/m;->a:Lcom/android/tools/r8/DataResourceConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/DataResourceConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method
