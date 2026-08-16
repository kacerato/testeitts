.class public final Lcom/android/tools/r8/naming/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/io/BufferedReader;

.field public final b:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/w;->b:Ljava/nio/file/Path;

    invoke-static {p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/hC;
    .locals 8

    if-eqz p1, :cond_5

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Lcom/android/tools/r8/naming/w;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/naming/w;-><init>(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    invoke-virtual {v3, p0}, Lcom/android/tools/r8/naming/w;->a(Lcom/android/tools/r8/internal/Ef0;)Ljava/lang/String;

    move-result-object v4

    .line 21
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 23
    new-instance v5, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate entry for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' in dictionary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v7, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 24
    array-length v6, v1

    if-ge v6, v5, :cond_1

    .line 25
    array-length v6, v1

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_1
    :try_start_2
    aput-object v4, v1, v2

    .line 27
    invoke-virtual {v3, p0}, Lcom/android/tools/r8/naming/w;->a(Lcom/android/tools/r8/internal/Ef0;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    move v2, v5

    goto :goto_2

    .line 28
    :cond_2
    :try_start_3
    iget-object v0, v3, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 30
    :goto_2
    :try_start_4
    iget-object v3, v3, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    .line 32
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 33
    :goto_4
    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v4, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v3, v0, v4}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 34
    :cond_4
    :goto_5
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0

    .line 35
    :cond_5
    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 36
    sget-object p0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ef0;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/naming/w;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    .line 3
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    int-to-char v3, v3

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v5, 0x23

    const/4 v6, 0x0

    if-ne v3, v5, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    const/16 v7, 0xa

    if-eq v3, v7, :cond_7

    const/16 v7, 0xd

    if-ne v3, v7, :cond_8

    :cond_7
    move v6, v1

    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    .line 7
    iget-object v5, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-eqz v6, :cond_c

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_2

    .line 11
    new-instance v5, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid character in dictionary \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v7, p0, Lcom/android/tools/r8/naming/w;->b:Ljava/nio/file/Path;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    new-instance v7, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9, v2, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v5, v3, v6, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    monitor-enter p1

    .line 12
    :try_start_0
    sget-object v3, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p1

    throw v0

    .line 16
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/w;->a:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_0
    return-void
.end method
