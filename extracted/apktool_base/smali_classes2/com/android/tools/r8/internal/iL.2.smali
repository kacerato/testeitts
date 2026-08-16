.class public final Lcom/android/tools/r8/internal/iL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lL;)Lcom/android/tools/r8/internal/dL;
    .locals 6

    .line 11
    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 12
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    .line 14
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Zo0;->a(Lcom/android/tools/r8/internal/lL;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 16
    :try_start_1
    new-instance v4, Lcom/android/tools/r8/internal/hL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/hL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 17
    new-instance v4, Lcom/android/tools/r8/internal/hL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/hL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    .line 19
    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p0, Lcom/android/tools/r8/internal/lL;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/lL;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/iL;->a(Lcom/android/tools/r8/internal/lL;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v1, v0, Lcom/android/tools/r8/internal/fL;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/mL;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/GU; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    return-object v0

    .line 8
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 9
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/eL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 10
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
