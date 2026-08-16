.class public Lcom/android/tools/r8/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/x$b;,
        Lcom/android/tools/r8/x$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/internal/QG;
    .locals 14

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/QG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QG;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/tools/r8/dex/E;->a()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 6
    new-instance v6, Lcom/android/tools/r8/x$b;

    invoke-direct {v6}, Lcom/android/tools/r8/x$b;-><init>()V

    invoke-virtual {v0, v5, v6}, Lcom/android/tools/r8/internal/QG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/pe;

    sget-object v2, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/function/Consumer;)Ljava/util/ArrayList;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/ProgramResource;

    .line 10
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v6, v7, :cond_1

    .line 11
    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    iget-object v7, v1, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 13
    :cond_2
    :goto_1
    invoke-interface {v5}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    .line 14
    sget-boolean v7, Lcom/android/tools/r8/dex/C;->m:Z

    .line 15
    new-instance v9, Lcom/android/tools/r8/dex/D;

    invoke-static {v6}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v9, v5, v6}, Lcom/android/tools/r8/dex/D;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    .line 16
    new-instance v5, Lcom/android/tools/r8/dex/C;

    sget-object v10, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    new-instance v11, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    .line 17
    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/dex/C;-><init>(Lcom/android/tools/r8/dex/D;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/nJ;ILcom/android/tools/r8/dex/C;)V

    .line 18
    iget-object v5, v5, Lcom/android/tools/r8/dex/C;->c:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/dex/E;

    .line 20
    sget-boolean v9, Lcom/android/tools/r8/x;->a:Z

    if-nez v9, :cond_4

    iget v9, v8, Lcom/android/tools/r8/dex/E;->a:I

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/QG;->a(I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 21
    iget v0, v8, Lcom/android/tools/r8/dex/E;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/dex/E;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 23
    :cond_4
    :goto_3
    iget v9, v8, Lcom/android/tools/r8/dex/E;->a:I

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/QG;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/x$b;

    .line 24
    iget v10, v8, Lcom/android/tools/r8/dex/E;->b:I

    .line 25
    iget v11, v8, Lcom/android/tools/r8/dex/E;->d:I

    iget v8, v8, Lcom/android/tools/r8/dex/E;->c:I

    sub-int/2addr v11, v8

    .line 26
    iget v8, v9, Lcom/android/tools/r8/x$b;->a:I

    add-int/2addr v8, v10

    .line 27
    iput v8, v9, Lcom/android/tools/r8/x$b;->a:I

    .line 28
    iget v8, v9, Lcom/android/tools/r8/x$b;->b:I

    add-int/2addr v8, v11

    iput v8, v9, Lcom/android/tools/r8/x$b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V

    return-object v0

    .line 30
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method public static a(Lcom/android/tools/r8/x$a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/x$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/r8/x$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/x$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/x;->a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/internal/QG;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/utils/i;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/utils/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/r8/x$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/x;->a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/internal/QG;

    move-result-object p0

    return-object p0
.end method
