.class public Lorg/openjdk/tools/javac/comp/AttrContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

.field enclVar:Lorg/openjdk/tools/javac/code/Symbol;

.field isAnonymousDiamond:Z

.field isLambda:Z

.field isNewClass:Z

.field isSelfCall:Z

.field isSerializable:Z

.field isSpeculative:Z

.field lint:Lorg/openjdk/tools/javac/code/Lint;

.field pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

.field returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field selectSuper:Z

.field staticLevel:I

.field visitingServiceImplementation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    const/4 v1, 0x0

    iput v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isAnonymousDiamond:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public dup()Lorg/openjdk/tools/javac/comp/AttrContext;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/AttrContext;-><init>()V

    .line 2
    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    iput p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    .line 4
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 5
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    .line 10
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    .line 11
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    .line 12
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    .line 13
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    .line 14
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isAnonymousDiamond:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isAnonymousDiamond:Z

    .line 15
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    .line 16
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 17
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    iput-boolean p1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    return-object v0
.end method

.method public getLocalElements()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public lastResolveVarargs()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttrContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
