.class final Lorg/openjdk/tools/javac/api/JavacScope$1;
.super Lorg/openjdk/tools/javac/api/JavacScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacScope;->create(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/api/JavacScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/api/JavacScope;-><init>(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/api/JavacScope$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEnclosingScope()Lorg/openjdk/source/tree/Scope;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/api/JavacScope;->getEnclosingScope()Lorg/openjdk/tools/javac/api/JavacScope;

    move-result-object v0

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

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
