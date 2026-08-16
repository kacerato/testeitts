.class public Lorg/openjdk/tools/javac/code/Scope$StarImportScope;
.super Lorg/openjdk/tools/javac/code/Scope$ImportScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarImportScope"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public importAll(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Types;",
            "Lorg/openjdk/tools/javac/code/Scope;",
            "Lorg/openjdk/tools/javac/code/Scope$ImportFilter;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    instance-of v2, v1, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->access$200(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->access$300(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    move-result-object v2

    if-ne v2, p3, :cond_0

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->access$400(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    move-result-object v1

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    iget-boolean v2, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-ne v1, v2, :cond_0

    return-void

    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V

    return-void
.end method

.method public isFilled()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    return v0
.end method
