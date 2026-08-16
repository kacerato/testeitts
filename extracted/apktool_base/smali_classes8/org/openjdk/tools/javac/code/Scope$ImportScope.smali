.class public Lorg/openjdk/tools/javac/code/Scope$ImportScope;
.super Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportScope"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public finalizeScope()V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    instance-of v2, v1, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_0
    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    new-instance v3, Lorg/openjdk/tools/javac/code/Scope$ImportScope$1;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/code/Scope$ImportScope$1;-><init>(Lorg/openjdk/tools/javac/code/Scope$ImportScope;)V

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->add(Lorg/openjdk/tools/javac/code/Scope$ScopeListener;)V

    iput-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    return-void
.end method
