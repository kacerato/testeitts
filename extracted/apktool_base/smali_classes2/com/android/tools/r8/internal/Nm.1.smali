.class public Lcom/android/tools/r8/internal/Nm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Jm;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Jm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nm;->a:Lcom/android/tools/r8/internal/Jm;

    return-void
.end method

.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/Nm;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Nm;

    new-instance v1, Lcom/android/tools/r8/internal/Jm;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Jm;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Nm;-><init>(Lcom/android/tools/r8/internal/Jm;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O4;->d()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Km;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 20
    invoke-static {p1}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_1
    const-string v0, "<nocode>"

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nm;->a:Lcom/android/tools/r8/internal/Jm;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jm;->a()Lcom/android/tools/r8/internal/Km;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/DO0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/DO0;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 16
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/internal/Km;Lcom/android/tools/r8/graph/H2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    .line 18
    :goto_1
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 19
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nm;->a:Lcom/android/tools/r8/internal/Jm;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jm;->a()Lcom/android/tools/r8/internal/Km;

    move-result-object v0

    .line 8
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
