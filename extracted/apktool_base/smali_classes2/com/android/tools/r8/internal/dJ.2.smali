.class public final Lcom/android/tools/r8/internal/dJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/ProgramResource$Kind;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ProgramResource$Kind;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/dJ;->a:Lcom/android/tools/r8/ProgramResource$Kind;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;Lcom/android/tools/r8/internal/o50;)Ljava/lang/Integer;
    .locals 1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    add-int/2addr v0, p0

    add-int/lit16 v0, v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/dJ;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".global"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()[B
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/o50;

    const-string v4, "compilerinfo"

    invoke-direct {v3, v4, v0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/dJ;->a:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/o50;

    const-string v3, "kind"

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/v81;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/v81;-><init>()V

    .line 8
    invoke-static {v2, v0, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    .line 9
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 10
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/dJ;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/o50;

    .line 12
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v0, v7, v8, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    const/4 v7, 0x0

    .line 13
    iput-object v7, v6, Lcom/android/tools/r8/internal/o50;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 16
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method
