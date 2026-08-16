.class public interface abstract Lcom/android/tools/r8/InputDependencyGraphConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
.end method

.method public acceptProguardApplyMapping(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardClassObfuscationDictionary(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardInJars(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardInclude(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardLibraryJars(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardObfuscationDictionary(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public acceptProguardPackageObfuscationDictionary(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method

.method public abstract finished()V
.end method
