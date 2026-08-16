.class public Lorg/openjdk/tools/javac/api/JavacScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Scope;


# instance fields
.field protected final env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Env;

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/api/JavacScope$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacScope;-><init>(Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public static create(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/api/JavacScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/api/JavacScope;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/JavacScope;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacScope;-><init>(Lorg/openjdk/tools/javac/comp/Env;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/api/JavacScope$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacScope$1;-><init>(Lorg/openjdk/tools/javac/comp/Env;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/api/JavacScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/api/JavacScope;

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p1, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getEnclosingClass()Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getEnclosingMethod()Lorg/openjdk/javax/lang/model/element/ExecutableElement;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getEnclosingScope()Lorg/openjdk/source/tree/Scope;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacScope;->getEnclosingScope()Lorg/openjdk/tools/javac/api/JavacScope;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingScope()Lorg/openjdk/tools/javac/api/JavacScope;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 3
    invoke-static {v1}, Lorg/openjdk/tools/javac/api/JavacScope;->create(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/api/JavacScope;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/api/JavacScope$2;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/api/JavacScope$2;-><init>(Lorg/openjdk/tools/javac/api/JavacScope;Lorg/openjdk/tools/javac/comp/Env;)V

    return-object v1
.end method

.method public getEnv()Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object v0
.end method

.method public getLocalElements()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->getLocalElements()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isStarImportScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavacScope[env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",starImport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
