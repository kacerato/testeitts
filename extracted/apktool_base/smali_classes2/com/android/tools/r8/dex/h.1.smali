.class public final Lcom/android/tools/r8/dex/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider$Visitor;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/f0;

.field public final synthetic b:Lcom/android/tools/r8/DataResourceConsumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/f0;Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/naming/N;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/h;->a:Lcom/android/tools/r8/dex/f0;

    iput-object p2, p0, Lcom/android/tools/r8/dex/h;->b:Lcom/android/tools/r8/DataResourceConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iput-object p5, p0, Lcom/android/tools/r8/dex/h;->d:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/android/tools/r8/DataDirectoryResource;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/h;->a:Lcom/android/tools/r8/dex/f0;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/dex/f0;->f:Z

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->Q0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/dex/f0;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->g()Lcom/android/tools/r8/shaking/c4;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/c4;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    .line 6
    :cond_3
    new-instance v1, Lcom/android/tools/r8/dex/a0;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/dex/a0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/android/tools/r8/dex/e0;->c:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 10
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_2
    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/DataDirectoryResource;->fromName(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataDirectoryResource;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_7

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/dex/h;->b:Lcom/android/tools/r8/DataResourceConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    :cond_7
    return-void
.end method

.method public final visit(Lcom/android/tools/r8/DataEntryResource;)V
    .locals 4

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kotlin_module"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/h;->a:Lcom/android/tools/r8/dex/f0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/f0;->b(Lcom/android/tools/r8/DataEntryResource;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/dex/h;->d:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/dex/h;->b:Lcom/android/tools/r8/DataResourceConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/DataResourceConsumer;->accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/dex/h;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method
