.class abstract Lorg/openjdk/tools/doclint/DocLint$DeclScanner;
.super Lorg/openjdk/source/util/TreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/DocLint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeclScanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final env:Lorg/openjdk/tools/doclint/Env;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/doclint/Env;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/TreePathScanner;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->env:Lorg/openjdk/tools/doclint/Env;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Env;->shouldCheck(Lorg/openjdk/source/tree/CompilationUnitTree;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public abstract visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V
.end method

.method public bridge synthetic visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/DocLint$DeclScanner;->visitDecl(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
