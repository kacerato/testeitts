.class public abstract Lcom/android/tools/r8/internal/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/y2;->a:I

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public static a(I)I
    .locals 2

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->c()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    mul-int/lit8 v0, v0, 0x6

    .line 20
    invoke-static {p0}, Lcom/android/tools/r8/internal/y2;->b(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;)I
    .locals 2

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p0

    rem-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;)I
    .locals 2

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p0

    rem-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/y2;
    .locals 3

    .line 2
    const-class v0, Lcom/android/tools/r8/internal/y2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "resources/new_api_database.ser"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v0, "Could not find the api database at resources/new_api_database.ser"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 4
    new-instance p0, Lcom/android/tools/r8/internal/w2;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/w2;-><init>()V

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    .line 7
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Could not open the api database at resources/new_api_database.ser"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/w2;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/w2;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 10
    :cond_2
    :try_start_3
    new-instance v0, Lcom/android/tools/r8/internal/v2;

    invoke-static {p0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/v2;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :goto_0
    if-eqz p0, :cond_3

    .line 12
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 13
    :goto_2
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 14
    new-instance p0, Lcom/android/tools/r8/internal/w2;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/w2;-><init>()V

    return-object p0
.end method

.method public static b()I
    .locals 1

    .line 1
    const/16 v0, 0x12

    return v0
.end method

.method public static b(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x6

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->a()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c()I
    .locals 1

    .line 1
    const/16 v0, 0x11

    return v0
.end method


# virtual methods
.method public abstract a(II[BLjava/util/function/BiPredicate;)I
.end method

.method public final a(I[B)Z
    .locals 3

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->a()I

    move-result v0

    mul-int/lit8 p1, p1, 0x6

    add-int/2addr p1, v0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/y2;->c(I)Lcom/android/tools/r8/internal/x2;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v0, Lcom/android/tools/r8/internal/x2;->c:Lcom/android/tools/r8/internal/x2;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 25
    :cond_0
    array-length v0, p2

    .line 26
    iget v2, p1, Lcom/android/tools/r8/internal/x2;->b:I

    if-eq v0, v2, :cond_1

    return v1

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/y2;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y2;->d()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 29
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 30
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->b()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x6

    .line 31
    invoke-static {v0}, Lcom/android/tools/r8/internal/y2;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 32
    iget v1, p1, Lcom/android/tools/r8/internal/x2;->a:I

    add-int/2addr v0, v1

    .line 33
    iget p1, p1, Lcom/android/tools/r8/internal/x2;->b:I

    .line 34
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/y2;->a([BII)Z

    move-result p1

    return p1
.end method

.method public abstract a([BII)Z
.end method

.method public abstract b([BII)B
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)I
    .locals 5

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/y2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/y2;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y2;->d()I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 7
    invoke-static {v1}, Lcom/android/tools/r8/internal/y2;->b(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/y2;->c(I)Lcom/android/tools/r8/internal/x2;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/x2;->c:Lcom/android/tools/r8/internal/x2;

    if-ne v0, v1, :cond_1

    return v2

    .line 11
    :cond_1
    iget v1, v0, Lcom/android/tools/r8/internal/x2;->a:I

    .line 12
    iget v0, v0, Lcom/android/tools/r8/internal/x2;->b:I

    if-gez v1, :cond_5

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/y2;->b:Z

    if-nez v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/o8;->a:Z

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/y2;->a(I[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2

    .line 16
    :cond_5
    sget-boolean v3, Lcom/android/tools/r8/internal/y2;->b:Z

    if-nez v3, :cond_7

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_7
    :goto_1
    iget v3, p0, Lcom/android/tools/r8/internal/y2;->a:I

    if-ne v3, v2, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y2;->d()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 19
    :cond_8
    iget v2, p0, Lcom/android/tools/r8/internal/y2;->a:I

    .line 20
    invoke-static {}, Lcom/android/tools/r8/internal/y2;->b()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    mul-int/lit8 v3, v3, 0x6

    .line 21
    invoke-static {v2}, Lcom/android/tools/r8/internal/y2;->a(I)I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    new-instance v1, Lcom/android/tools/r8/internal/Zy1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Zy1;-><init>(Lcom/android/tools/r8/internal/y2;)V

    .line 23
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/tools/r8/internal/y2;->a(II[BLjava/util/function/BiPredicate;)I

    move-result p1

    return p1
.end method

.method public abstract c(I)Lcom/android/tools/r8/internal/x2;
.end method

.method public abstract d()I
.end method
