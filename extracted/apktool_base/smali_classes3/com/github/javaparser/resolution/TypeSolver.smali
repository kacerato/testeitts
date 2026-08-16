.class public interface abstract Lcom/github/javaparser/resolution/TypeSolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JAVA_LANG_OBJECT:Ljava/lang/String;

.field public static final JAVA_LANG_RECORD:Ljava/lang/String; = "java.lang.Record"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/TypeSolver;->JAVA_LANG_OBJECT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getParent()Lcom/github/javaparser/resolution/TypeSolver;
.end method

.method public getRoot()Lcom/github/javaparser/resolution/TypeSolver;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/TypeSolver;->getParent()Lcom/github/javaparser/resolution/TypeSolver;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/TypeSolver;->getParent()Lcom/github/javaparser/resolution/TypeSolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/TypeSolver;->getRoot()Lcom/github/javaparser/resolution/TypeSolver;

    move-result-object v0

    return-object v0
.end method

.method public getSolvedJavaLangObject()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javaparser/resolution/UnsolvedSymbolException;
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/resolution/TypeSolver;->JAVA_LANG_OBJECT:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getSolvedJavaLangRecord()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javaparser/resolution/UnsolvedSymbolException;
        }
    .end annotation

    const-string v0, "java.lang.Record"

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public hasType(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/TypeSolver;->tryToSolveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result p1

    return p1
.end method

.method public abstract setParent(Lcom/github/javaparser/resolution/TypeSolver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation
.end method

.method public solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javaparser/resolution/UnsolvedSymbolException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/TypeSolver;->tryToSolveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/model/SymbolReference;->getCorrespondingDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return-object p1

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public abstract tryToSolveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ">;"
        }
    .end annotation
.end method
