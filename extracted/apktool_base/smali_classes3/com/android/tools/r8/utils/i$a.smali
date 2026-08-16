.class public Lcom/android/tools/r8/utils/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Ljava/util/AbstractCollection;

.field public i:Ljava/util/AbstractCollection;

.field public j:Z

.field public k:Lcom/android/tools/r8/v0;

.field public l:Lcom/android/tools/r8/v0$a;

.field public final m:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/utils/i$a;->j:Z

    iput-object p1, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 7

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-direct {v2, p1, p0}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 31
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 33
    invoke-static {v1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 34
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 35
    new-instance v6, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 36
    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 37
    :cond_0
    const-string v2, ".dup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " resource: "

    if-eqz v2, :cond_1

    .line 38
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: Duplicate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: Unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 42
    sget-boolean p0, Lcom/android/tools/r8/utils/i;->j:Z

    .line 43
    new-instance p0, Lcom/android/tools/r8/utils/c;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/c;-><init>(Ljava/util/HashMap;)V

    .line 44
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 45
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/P0;)Lcom/android/tools/r8/utils/ArchiveResourceProvider;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    iget-boolean v1, p0, Lcom/android/tools/r8/utils/i$a;->j:Z

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;-><init>(Lcom/android/tools/r8/shaking/P0;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/shaking/P0;->c:Lcom/android/tools/r8/origin/Origin;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/shaking/P0;->d:Lcom/android/tools/r8/position/Position;

    .line 8
    const-string v3, "Unexpected input type. Only archive types are supported, e.g., .jar, .zip, etc."

    invoke-direct {v1, v3, v2, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/DataResource;)Lcom/android/tools/r8/utils/i$a;
    .locals 2

    const/4 v0, 0x1

    .line 85
    new-array v0, v0, [Lcom/android/tools/r8/DataResource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/utils/i$a;->n:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/v0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/v0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/utils/i$a;->k:Lcom/android/tools/r8/v0;

    return-object p0
.end method

.method public a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading dump from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 12
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/utils/C;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/utils/C;-><init>(Lcom/android/tools/r8/utils/i$a;Lcom/android/tools/r8/origin/Origin;)V

    .line 13
    invoke-static {p1, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;Lcom/android/tools/r8/utils/u$a;)V

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 80
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/utils/i$a;->a([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/utils/i$a;->a([BLcom/android/tools/r8/origin/Origin;Ljava/util/Set;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    return-object p1
.end method

.method public a([BLcom/android/tools/r8/origin/Origin;Ljava/util/Set;)Lcom/android/tools/r8/utils/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/origin/Origin;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {p2, v0, p1, p3}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/tools/r8/ProgramResource;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 83
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs a([Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    .locals 0

    .line 77
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->e(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([[B)Lcom/android/tools/r8/utils/i$a;
    .locals 0

    .line 78
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/utils/i;
    .locals 11

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i$a;->b()V

    .line 90
    new-instance v10, Lcom/android/tools/r8/utils/i;

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    .line 91
    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->d:Ljava/util/HashMap;

    .line 92
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    .line 93
    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    .line 94
    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    .line 95
    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/utils/i$a;->k:Lcom/android/tools/r8/v0;

    iget-object v7, p0, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    iget-object v8, p0, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    iget-object v9, p0, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/utils/i;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/v0;Lcom/android/tools/r8/v0$a;Ljava/util/List;Ljava/util/List;)V

    return-object v10
.end method

.method public final a(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;)V
    .locals 7

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v3, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-direct {v3, p2, p1}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 53
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    sget-object v4, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 55
    invoke-static {v2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 56
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 57
    new-instance v6, Lcom/android/tools/r8/internal/a40;

    invoke-direct {v6, v3, v4, v5, p2}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 58
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    new-instance v3, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    invoke-direct {v3, p2, p1}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 62
    sget-object p2, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 63
    invoke-static {v2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 64
    new-instance v5, Lcom/android/tools/r8/internal/a40;

    const/4 v6, 0x0

    invoke-direct {v5, v3, p2, v4, v6}, Lcom/android/tools/r8/internal/a40;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    const-string v3, ".dup"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: Duplicate program resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3, p2, p1}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p2

    .line 69
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return-void

    .line 72
    :cond_5
    :goto_1
    new-instance p1, Lcom/android/tools/r8/utils/f;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/utils/f;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-void

    .line 73
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/origin/Origin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    .line 14
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "r8-version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    new-instance p1, Ljava/lang/String;

    invoke-static {p3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 17
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dump produced by R8 version: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    const-string v1, "program.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;)V

    return-void

    .line 20
    :cond_1
    const-string v1, "classpath.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    new-instance p2, Lcom/android/tools/r8/tracereferences/m;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/tracereferences/m;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    const-string v0, "classpath"

    invoke-static {p1, p3, p2, v0}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_2
    const-string v1, "library.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    new-instance p2, Lcom/android/tools/r8/tracereferences/l;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/tracereferences/l;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    const-string v0, "library"

    invoke-static {p1, p3, p2, v0}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WARNING: Unexpected dump file entry: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/nio/file/Path;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    .line 96
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v3, Ljava/nio/file/NoSuchFileException;

    .line 98
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/ZI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ZI;-><init>(Ljava/nio/file/Path;)V

    .line 102
    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v1, p2, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 105
    :cond_1
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p1}, Lcom/android/tools/r8/DirectoryClassFileProvider;->fromDirectory(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 107
    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/If;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, 0x0

    .line 108
    const-string v1, "Unsupported source file type"

    invoke-direct {p2, v0, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    throw p2
.end method

.method public b(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/utils/i$a;
    .locals 2

    .line 5
    instance-of v0, p1, Lcom/android/tools/r8/internal/ZI;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/ZI;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/nio/file/Path;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/nio/file/Path;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;
    .locals 2

    .line 8
    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/tools/r8/ProgramResource;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs b([Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->f(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/utils/h;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/utils/h;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 18
    new-instance v3, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v5, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v5, v3, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->d(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v2, p1}, Lcom/android/tools/r8/ProgramResource;->fromFile(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    new-array v0, v0, [Lcom/android/tools/r8/ProgramResource;

    aput-object p1, v0, v1

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 24
    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->b(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v2, p1}, Lcom/android/tools/r8/ProgramResource;->fromFile(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    new-array v0, v0, [Lcom/android/tools/r8/ProgramResource;

    aput-object p1, v0, v1

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 28
    :cond_2
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, ".aar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/f;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/f;-><init>(Ljava/nio/file/Path;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-object p0

    .line 32
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-boolean v0, p0, Lcom/android/tools/r8/utils/i$a;->j:Z

    invoke-static {p1, v0}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->fromArchive(Ljava/nio/file/Path;Z)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-object p0

    .line 34
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, 0x0

    .line 35
    const-string v2, "Unsupported source file type"

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method public c(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/shaking/P0;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/P0;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/ax;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ax;-><init>(Lcom/android/tools/r8/shaking/P0;)V

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v4, Lcom/android/tools/r8/origin/PathOrigin;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    .line 9
    invoke-direct {v4, v0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 11
    iget-object v3, v0, Lcom/android/tools/r8/shaking/P0;->c:Lcom/android/tools/r8/origin/Origin;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P0;->d:Lcom/android/tools/r8/position/Position;

    .line 13
    const-string v4, "Unexpected input type. Only archive types are supported, e.g., .jar, .zip, etc."

    invoke-direct {v2, v4, v3, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/shaking/P0;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/P0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/shaking/P0;)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/nio/file/Path;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/utils/i$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method
