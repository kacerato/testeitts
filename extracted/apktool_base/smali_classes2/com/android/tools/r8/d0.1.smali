.class public final Lcom/android/tools/r8/d0;
.super Lcom/android/tools/r8/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/b0;-><init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method


# virtual methods
.method public final getByteDataView()Lcom/android/tools/r8/ByteDataView;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/b0;->a:Lcom/android/tools/r8/AndroidResourceInput;

    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/b0;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v3, p0, Lcom/android/tools/r8/b0;->a:Lcom/android/tools/r8/AndroidResourceInput;

    invoke-interface {v3}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    const/4 v0, 0x0

    return-object v0
.end method
