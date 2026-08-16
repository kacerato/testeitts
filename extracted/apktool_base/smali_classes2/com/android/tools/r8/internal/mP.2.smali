.class public final Lcom/android/tools/r8/internal/mP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fP;

.field public final b:Lcom/android/tools/r8/internal/FP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/mP;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/mP;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/mP;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/mP;-><init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V

    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;
    .locals 4

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/lP;->a:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;->hasPackage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;->getPackage()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern;

    move-result-object v0

    .line 9
    new-instance v3, Lcom/android/tools/r8/internal/eP;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eP;-><init>()V

    .line 10
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/eP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern;)Lcom/android/tools/r8/internal/eP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eP;->a()Lcom/android/tools/r8/internal/fP;

    move-result-object v0

    :cond_2
    if-nez v2, :cond_4

    .line 11
    sget-object v2, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;->hasUnqualifiedName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;->getUnqualifiedName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern;

    move-result-object p0

    .line 16
    sget-object v2, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    .line 17
    sget-boolean v3, Lcom/android/tools/r8/internal/EP;->a:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern;->hasName()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/vP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/internal/vP;

    move-result-object v2

    .line 20
    :cond_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/FP;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/FP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 22
    :cond_9
    :goto_3
    new-instance p0, Lcom/android/tools/r8/internal/mP;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/mP;-><init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;
    .locals 3

    const/16 v0, 0x2e

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    .line 24
    sget-object v1, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/fP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fP;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/FP;

    invoke-static {p0}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 29
    new-instance p0, Lcom/android/tools/r8/internal/mP;

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/internal/mP;-><init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V

    return-object p0

    .line 30
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    .line 31
    sget-object v0, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    .line 32
    sget-object v0, Lcom/android/tools/r8/internal/fP;->d:Lcom/android/tools/r8/internal/fP;

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/FP;

    invoke-static {p0}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/FP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 34
    new-instance p0, Lcom/android/tools/r8/internal/mP;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/mP;-><init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V

    return-object p0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'.\' at index 0 in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;
    .locals 3

    .line 1
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 6

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 37
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fP;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dP;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern$Builder;

    move-result-object v4

    .line 44
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    iget-object v3, v3, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/vP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern$Builder;->setSingleComponent(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern$Builder;

    .line 46
    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern$Builder;->addComponents(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackageComponentPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern$Builder;

    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;->setPackage(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$PackagePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern$Builder;

    move-result-object v3

    iget-object v2, v2, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern$Builder;->setName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;->setUnqualifiedName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$UnqualifiedNamePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern$Builder;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fP;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "/"

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Attempt to obtain exact qualified type for inexact pattern"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/fP;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/mP;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/mP;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    iget-object v3, p1, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/fP;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/FP;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    iget-object v1, v1, Lcom/android/tools/r8/internal/FP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vP;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/mP;->a:Lcom/android/tools/r8/internal/fP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fP;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "."

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/mP;->b:Lcom/android/tools/r8/internal/FP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
