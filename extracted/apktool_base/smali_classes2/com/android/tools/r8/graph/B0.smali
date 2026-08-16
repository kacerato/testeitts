.class public abstract Lcom/android/tools/r8/graph/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/x0;

.field public final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/B0;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;)Lcom/android/tools/r8/graph/A0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/q6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/q6;-><init>(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 1

    .line 4
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object p0

    .line 6
    sget-char p3, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 8
    new-array p3, p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 9
    :cond_0
    new-instance p1, Ljava/io/PrintStream;

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public static synthetic a(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Ljava/io/PrintStream;)V
    .locals 0

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A0;Ljava/util/function/Consumer;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/A0;->a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;

    move-result-object v2

    .line 14
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    throw p1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    .locals 2

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;->c(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/B0;->d(Ljava/io/PrintStream;)V

    .line 28
    new-instance v0, Lcom/android/tools/r8/graph/o6;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/o6;-><init>(Lcom/android/tools/r8/graph/B0;Ljava/io/PrintStream;)V

    .line 29
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/B0;->c(Ljava/io/PrintStream;)V

    .line 31
    new-instance v0, Lcom/android/tools/r8/graph/p6;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/graph/p6;-><init>(Lcom/android/tools/r8/graph/B0;Ljava/io/PrintStream;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;->b(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V

    return-void
.end method

.method public final synthetic a(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;->b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;->b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/B0;->b:Lcom/android/tools/r8/internal/nJ;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->C0:Lcom/android/tools/r8/internal/Xe0;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    .line 21
    array-length v0, v0

    if-lez v0, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/B0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/n6;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/n6;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
.end method

.method public b(Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/B0;->e(Ljava/io/PrintStream;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/r6;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/r6;-><init>(Ljava/io/PrintStream;)V

    new-instance p1, Lcom/android/tools/r8/graph/s6;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/s6;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/graph/A0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/g1;)V
.end method

.method public abstract c(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
.end method

.method public c(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/io/PrintStream;)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/io/PrintStream;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u1;->d()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of markers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/W;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/W;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
