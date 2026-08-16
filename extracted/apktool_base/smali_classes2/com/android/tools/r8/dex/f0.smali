.class public final Lcom/android/tools/r8/dex/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/Hz;

.field public final d:Lcom/android/tools/r8/naming/r0;

.field public final e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/f0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/f0;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/f0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    sget-boolean p0, Lcom/android/tools/r8/dex/f0;->f:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p0, p0, Lcom/android/tools/r8/internal/nJ$p;->Q0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/c4;

    .line 4
    iget-boolean p2, p1, Lcom/android/tools/r8/shaking/c4;->a:Z

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p0}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ".class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/c4;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/DataEntryResource;)[B
    .locals 5

    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10
    new-instance v1, Lcom/android/tools/r8/dex/b0;

    invoke-direct {v1, p0, v2}, Lcom/android/tools/r8/dex/b0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/e0;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    sget-boolean v2, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/tools/r8/dex/e0;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 18
    :cond_3
    :goto_2
    throw v1
    :try_end_4
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 19
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_5

    .line 20
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/DataEntryResource;)Lcom/android/tools/r8/DataEntryResource;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    new-instance v1, Lu/n0;

    invoke-direct {v1}, Lu/n0;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/dex/f0;->a(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/dex/d0;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/dex/d0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/dex/Z;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/dex/Z;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/e0;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/tools/r8/dex/e0;->c:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-boolean v1, Lcom/android/tools/r8/dex/f0;->f:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    new-instance v2, Lu/o0;

    invoke-direct {v2}, Lu/o0;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/dex/f0;->a(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/f0;->a(Lcom/android/tools/r8/DataEntryResource;)[B

    move-result-object v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1, v0}, Lcom/android/tools/r8/DataEntryResource;->withName(Ljava/lang/String;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    :cond_9
    return-object p1
.end method
