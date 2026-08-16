.class public final Lcom/android/tools/r8/kotlin/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/io/BufferedReader;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Predicate;ILcom/android/tools/r8/internal/Wr0;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, p2

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/kotlin/j0;->c()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/kotlin/j0;->c:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 11
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    new-instance p1, Lcom/android/tools/r8/kotlin/k0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Block size does not match linesInBlock = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/kotlin/Y3;

    const-string v1, "*L"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/Y3;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/tools/r8/kotlin/j0;->a(Ljava/util/function/Predicate;ILcom/android/tools/r8/internal/Wr0;)Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    const-string v1, "*F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/k0;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/j0;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match the expected string "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
