.class public Lcom/android/tools/r8/kotlin/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/kotlin/l0$a;,
        Lcom/android/tools/r8/kotlin/l0$c;,
        Lcom/android/tools/r8/kotlin/l0$b;
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    .line 19
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 20
    :catch_0
    new-instance v0, Lcom/android/tools/r8/kotlin/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/kotlin/j0;Lcom/android/tools/r8/kotlin/m0;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/kotlin/j0;->d()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/kotlin/a4;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/kotlin/a4;-><init>(Lcom/android/tools/r8/kotlin/m0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/kotlin/j0;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/kotlin/b4;

    invoke-direct {v0}, Lcom/android/tools/r8/kotlin/b4;-><init>()V

    new-instance v1, Lcom/android/tools/r8/kotlin/c4;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/kotlin/c4;-><init>(Lcom/android/tools/r8/kotlin/m0;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/kotlin/j0;->a(Ljava/util/function/Predicate;ILcom/android/tools/r8/internal/Wr0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lcom/android/tools/r8/kotlin/k0;

    const-string p1, "Unexpected EOF - no debug line positions"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/m0;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/android/tools/r8/kotlin/l0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/kotlin/m0;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/kotlin/m0;)V
    .locals 8

    const/16 v0, 0x3a

    .line 21
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2c

    .line 22
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-le v3, v4, :cond_0

    .line 23
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v5

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v5

    :goto_0
    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x23

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 28
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v0, v5

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v4, :cond_3

    .line 31
    sget-boolean v2, Lcom/android/tools/r8/kotlin/l0;->a:Z

    if-nez v2, :cond_2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    :goto_2
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/kotlin/m0;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/kotlin/l0$c;

    if-eqz v0, :cond_4

    .line 36
    new-instance p0, Lcom/android/tools/r8/naming/M0;

    sub-int/2addr v3, v5

    add-int v2, v7, v3

    .line 37
    invoke-direct {p0, v7, v2, v6}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    .line 38
    new-instance v2, Lcom/android/tools/r8/kotlin/l0$a;

    invoke-direct {v2, v0, p0}, Lcom/android/tools/r8/kotlin/l0$a;-><init>(Lcom/android/tools/r8/kotlin/l0$c;Lcom/android/tools/r8/naming/M0;)V

    .line 39
    iget-object p0, p1, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    add-int/2addr v3, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/tools/r8/internal/kl0;->a(IILjava/lang/Object;)Lcom/android/tools/r8/internal/kl0;

    return-void

    .line 40
    :cond_4
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find file with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    new-instance p0, Lcom/android/tools/r8/kotlin/k0;

    const-string p1, "Could not convert position to number"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/kotlin/m0;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;CI)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 8
    aget-object v1, v0, v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 9
    aget-object v1, v0, v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    .line 12
    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/android/tools/r8/kotlin/l0;->a(Ljava/lang/String;)I

    move-result p0

    .line 13
    new-instance v0, Lcom/android/tools/r8/kotlin/l0$c;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/kotlin/l0$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p2, Lcom/android/tools/r8/kotlin/m0;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/kotlin/l0$c;

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was already mapped to an existing source: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not expect file path to be null or empty for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not expect file name to be empty for line "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong number of entries on line "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Lcom/android/tools/r8/kotlin/m0;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/tools/r8/kotlin/l0;->a(Ljava/lang/String;Lcom/android/tools/r8/kotlin/m0;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "*E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/android/tools/r8/kotlin/l0$b;
    .locals 7

    const-string v0, "*E"

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/tools/r8/kotlin/j0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/kotlin/j0;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p0, "SMAP"

    iget-object v3, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    :try_start_2
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_1
    :try_start_3
    const-string p0, "*S Kotlin"

    :goto_0
    iget-object v3, v2, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    :try_start_4
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance p0, Lcom/android/tools/r8/kotlin/m0;

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/m0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/kotlin/m0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/m0;-><init>()V

    invoke-static {v2, p0}, Lcom/android/tools/r8/kotlin/l0;->a(Lcom/android/tools/r8/kotlin/j0;Lcom/android/tools/r8/kotlin/m0;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "*S KotlinDebug"

    if-eqz v5, :cond_7

    :try_start_6
    iget-object v4, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v0, Lcom/android/tools/r8/kotlin/l0;->a:Z

    if-nez v0, :cond_5

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_1
    new-instance v0, Lcom/android/tools/r8/kotlin/l0$b;

    iget-object p0, p0, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    invoke-direct {v0, p0, v3}, Lcom/android/tools/r8/kotlin/l0$b;-><init>(Lcom/android/tools/r8/internal/kl0;Lcom/android/tools/r8/internal/kl0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :cond_6
    :try_start_8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v4, :cond_8

    :try_start_9
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    :cond_7
    :try_start_a
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v4, :cond_8

    :try_start_b
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    :goto_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_b .. :try_end_b} :catch_0

    return-object v1

    :cond_8
    :try_start_c
    invoke-static {v2, v3}, Lcom/android/tools/r8/kotlin/l0;->a(Lcom/android/tools/r8/kotlin/j0;Lcom/android/tools/r8/kotlin/m0;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Lcom/android/tools/r8/kotlin/k0;

    const-string v0, "Unexpected EOF when parsing SMAP debug entries"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    new-instance v0, Lcom/android/tools/r8/kotlin/l0$b;

    iget-object p0, p0, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    invoke-direct {v0, p0, v3}, Lcom/android/tools/r8/kotlin/l0$b;-><init>(Lcom/android/tools/r8/internal/kl0;Lcom/android/tools/r8/internal/kl0;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object p0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    :goto_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_d .. :try_end_d} :catch_0

    return-object v0

    :goto_5
    :try_start_e
    iget-object v0, v2, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/android/tools/r8/kotlin/k0; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    :cond_b
    :goto_7
    return-object v1
.end method
