.class public final Lcom/android/tools/r8/internal/Ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider$Visitor;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Uq0;

.field public final b:Lcom/android/tools/r8/internal/Ef0;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Lcom/android/tools/r8/internal/ll0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/Uq0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ht;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ht;->a:Lcom/android/tools/r8/internal/Uq0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ht;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/DataEntryResource;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance v1, Lcom/android/tools/r8/shaking/x3;

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/shaking/x3;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;)V

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_0

    .line 4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_3

    .line 6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_3
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->c:Ljava/util/ArrayList;

    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/DataEntryResource;)Z
    .locals 8

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/com.android.tools/r8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 12
    :cond_1
    const-string v0, "-from-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "-upto-"

    if-nez v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 13
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/ll0;->f:Lcom/android/tools/r8/internal/ll0;

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v5, 0x2f

    const/4 v6, 0x6

    const/4 v7, -0x1

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/zq0;->a:[C

    const/16 v0, 0x2d

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v0, v7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    if-ne v3, v7, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ne v0, v7, :cond_5

    return v1

    .line 20
    :cond_5
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/ll0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    return v1

    .line 22
    :cond_6
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_7

    return v1

    .line 25
    :cond_7
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/ll0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    return v1

    :cond_8
    const/4 p1, 0x0

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->e:Lcom/android/tools/r8/internal/ll0;

    if-nez v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->a:Lcom/android/tools/r8/internal/Uq0;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ll0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ht;->e:Lcom/android/tools/r8/internal/ll0;

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->e:Lcom/android/tools/r8/internal/ll0;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/ll0;->a(Lcom/android/tools/r8/internal/ll0;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->e:Lcom/android/tools/r8/internal/ll0;

    .line 29
    iget v3, p1, Lcom/android/tools/r8/internal/ll0;->b:I

    iget v4, v0, Lcom/android/tools/r8/internal/ll0;->b:I

    if-eq v3, v4, :cond_a

    if-le v3, v4, :cond_d

    goto :goto_3

    .line 30
    :cond_a
    iget v3, p1, Lcom/android/tools/r8/internal/ll0;->c:I

    iget v4, v0, Lcom/android/tools/r8/internal/ll0;->c:I

    if-eq v3, v4, :cond_b

    if-le v3, v4, :cond_d

    goto :goto_3

    .line 31
    :cond_b
    iget p1, p1, Lcom/android/tools/r8/internal/ll0;->d:I

    iget v0, v0, Lcom/android/tools/r8/internal/ll0;->d:I

    if-le p1, v0, :cond_d

    :cond_c
    :goto_3
    return v2

    :cond_d
    return v1
.end method

.method public final visit(Lcom/android/tools/r8/DataDirectoryResource;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final visit(Lcom/android/tools/r8/DataEntryResource;)V
    .locals 5

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/proguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "/"

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Ht;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ht;->a(Lcom/android/tools/r8/DataEntryResource;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/sH0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/sH0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ht;->a(Lcom/android/tools/r8/DataEntryResource;Ljava/util/function/Consumer;)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ht;->a(Lcom/android/tools/r8/DataEntryResource;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/Ht;->f:Z

    if-nez v0, :cond_6

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/sH0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/sH0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ht;->a(Lcom/android/tools/r8/DataEntryResource;Ljava/util/function/Consumer;)V

    :cond_7
    return-void
.end method
