.class public Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;
.super Lorg/openjdk/tools/javac/code/Scope$ImportScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedImportScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V

    return-void
.end method

.method private appendScope(Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public importByName(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Types;",
            "Lorg/openjdk/tools/javac/code/Scope;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Scope$ImportFilter;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Scope;"
        }
    .end annotation

    new-instance v7, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, v7}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;->appendScope(Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p1

    return-object p1
.end method

.method public importType(Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {v0, p1, p3, p2}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;->appendScope(Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p1

    return-object p1
.end method
