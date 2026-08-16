.class public Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssignAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer<",
        "Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;",
        ">;"
    }
.end annotation


# instance fields
.field classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field firstadr:I

.field flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

.field final inits:Lorg/openjdk/tools/javac/util/Bits;

.field final initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

.field final initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

.field private isInitialConstructor:Z

.field protected nextadr:I

.field protected returnadr:I

.field startPos:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;

.field final uninits:Lorg/openjdk/tools/javac/util/Bits;

.field final uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

.field final uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

.field final uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

.field unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field protected vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;-><init>()V

    sget-object p1, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method

.method private addVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Bits;",
            "Lorg/openjdk/tools/javac/util/Bits;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isIdentOrThisDotIdent(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2
.end method

.method private varargs resetBits([Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Bits;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public analyzeTree(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "*>;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-interface {v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v3

    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->startPos:I

    .line 3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-nez v3, :cond_0

    const/16 v3, 0x20

    .line 4
    new-array v3, v3, [Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    move v3, v1

    .line 5
    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 6
    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    .line 8
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    .line 9
    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 10
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 11
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 12
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->startPos:I

    .line 14
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    filled-new-array/range {v3 .. v9}, [Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->resetBits([Lorg/openjdk/tools/javac/util/Bits;)V

    .line 15
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz p1, :cond_2

    move p1, v1

    .line 16
    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 17
    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 18
    :cond_2
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    .line 19
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    .line 20
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 21
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 22
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    .line 23
    :goto_3
    iput v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->startPos:I

    .line 24
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    filled-new-array/range {v3 .. v9}, [Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->resetBits([Lorg/openjdk/tools/javac/util/Bits;)V

    .line 25
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz p2, :cond_3

    move p2, v1

    .line 26
    :goto_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    array-length v3, v0

    if-ge p2, v3, :cond_3

    .line 27
    aput-object v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 28
    :cond_3
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    .line 29
    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    .line 30
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 31
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 32
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 33
    throw p1
.end method

.method public checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 1

    .line 1
    const-string v0, "var.might.not.have.been.initialized"

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/String;)V

    return-void
.end method

.method public checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget v0, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    if-ge v0, v1, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 4
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget p2, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    :cond_1
    return-void
.end method

.method public initParam(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget p1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    return-void
.end method

.method public isFinalUninitializedField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200040010L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol;->isEnclosedBy(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFinalUninitializedStaticField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isFinalUninitializedField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 3

    .line 17
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    .line 18
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    .line 21
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    :cond_1
    return-void
.end method

.method public letInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 8

    .line 1
    iget v0, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    const-wide/16 v2, 0x10

    const-wide/16 v4, 0x0

    if-lt v0, v1, :cond_6

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v6, 0x20000000000L

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget v0, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, -0x20000000001L

    and-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninit(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x8000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "multicatch.parameter.may.not.be.assigned"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "final.parameter.may.not.be.assigned"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->errKey:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninit(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    .line 14
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget p2, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "var.might.already.be.assigned"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public markDead()V
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isFinalUninitializedStaticField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    return-void
.end method

.method public merge()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method

.method public newVar(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v3, 0x20000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_0
    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v1, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    iget p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void
.end method

.method public referenced(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public bridge synthetic scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isFalse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Bits;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->merge()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Bits;->isReset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->merge()V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Bits;->isReset()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->split(Z)V

    :cond_5
    :goto_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    filled-new-array {p1, v0}, [Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->resetBits([Lorg/openjdk/tools/javac/util/Bits;)V

    :cond_6
    return-void
.end method

.method public scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Bits;->isReset()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->merge()V

    :cond_0
    return-void
.end method

.method public scanExprs(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public split(Z)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    filled-new-array {p1, v0}, [Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->resetBits([Lorg/openjdk/tools/javac/util/Bits;)V

    :cond_0
    return-void
.end method

.method public trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 2

    iget v0, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->startPos:I

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isFinalUninitializedField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public uninit(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget v1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    iget p1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget p1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    :goto_0
    return-void
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExprs(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isIdentOrThisDotIdent(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :goto_0
    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 13

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-eq v5, v6, :cond_2

    iget v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x8

    if-eqz v6, :cond_4

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v11, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v11, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v9, v11

    cmp-long v7, v9, v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->newVar(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :cond_3
    :goto_2
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v6}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v11

    and-long/2addr v11, v9

    cmp-long v6, v11, v7

    if-eqz v6, :cond_5

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_5
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_6
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_4
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v11, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v11, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v11, v9

    cmp-long v11, v11, v7

    if-nez v11, :cond_7

    iget-object v11, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v11}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->newVar(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    :cond_7
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    :cond_8
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v6}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v11

    and-long/2addr v11, v9

    cmp-long v6, v11, v7

    if-nez v6, :cond_9

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_9
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :cond_a
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_b
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :cond_c
    :try_start_3
    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_7
    :try_start_4
    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v5, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :goto_0
    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    iget v3, v3, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    :goto_0
    new-instance v5, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_0
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v6

    iget v6, v6, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->diffSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v6

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v5, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v5, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v4

    iget v4, v4, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    :goto_0
    new-instance v6, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v3, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_0
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v3, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v3, v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v5, v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->inclRange(II)V

    :cond_2
    :goto_1
    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v7

    iget v7, v7, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-ne v7, v4, :cond_4

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v7, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->diffSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v7

    iget v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    goto/16 :goto_0

    :cond_4
    :goto_2
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v5, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    iget v5, v5, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    :goto_0
    new-instance v6, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v7

    iget v7, v7, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-ne v7, v5, :cond_1

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v7, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->diffSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v7

    iget v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->referenced(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :goto_0
    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 9

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :try_start_0
    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v8, v8, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v6, v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v5

    sget-object v6, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v5, v6, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void

    :goto_2
    iput v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    :goto_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :cond_2
    :try_start_1
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide v10, 0x2000000001000L

    and-long/2addr v8, v10

    cmp-long v3, v8, v4

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v5, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget v8, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iget v9, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v10

    invoke-static {v10}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-boolean v10, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v11

    iput-boolean v11, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    if-nez v11, :cond_4

    iget v11, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v11, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    :goto_1
    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v11}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_6

    iget-object v12, v11, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v1, v12}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v15, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v15

    const-wide v17, 0x200000000L

    and-long v15, v15, v17

    cmp-long v15, v15, v6

    if-eqz v15, :cond_5

    move v13, v14

    :cond_5
    const-string v14, "Method parameter without PARAMETER flag"

    invoke-static {v13, v14}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    invoke-virtual {v1, v12}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initParam(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v11, v11, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_6
    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v11, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    if-eqz v11, :cond_a

    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v11

    const-wide v15, 0x1000000000L

    and-long/2addr v11, v15

    cmp-long v6, v11, v6

    if-eqz v6, :cond_7

    move v13, v14

    :cond_7
    iget v6, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    :goto_3
    iget v7, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    if-ge v6, v7, :cond_a

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    aget-object v7, v7, v6

    iget-object v11, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v12, v11, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v14, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v14, v14, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v12, v14, :cond_9

    if-eqz v13, :cond_8

    invoke-static {v11, v7}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    const-string v12, "var.not.initialized.in.default.constructor"

    invoke-virtual {v1, v7, v11, v12}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v7}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    invoke-virtual {v1, v7, v11}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v6, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v6, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_b
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, v6, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v7

    iget-object v11, v6, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v7, v11}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    iget-boolean v7, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    if-eqz v7, :cond_b

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v11, v6, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget v7, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    :goto_5
    iget v11, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    if-ge v7, v11, :cond_b

    iget-object v11, v6, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->vardecls:[Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    aget-object v12, v12, v7

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, v11, v12}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    :try_start_3
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iput v5, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v8, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iput v9, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iput-boolean v10, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    :try_start_4
    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iput v5, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iput v8, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    iput v9, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->returnadr:I

    iput-boolean v10, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->isInitialConstructor:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw v0
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExprs(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExprs(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExprs(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public bridge synthetic visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$1200(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->checkInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    :cond_0
    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_1
    if-eqz v5, :cond_1

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v7, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_1
    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v6, v2, v3}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->addVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V

    if-nez v5, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_2
    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    iput v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->markDead()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 13

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v3, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v7, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    instance-of v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v6, :cond_1

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v5, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v7

    sget-object v8, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v9, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v8

    sget-object v9, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    iget-object v11, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "try.resource.not.referenced"

    invoke-virtual {v8, v9, v10, v12, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->unrefdResources:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    new-instance v7, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v7, v8}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v10, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v10, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initParam(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v9}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v9}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iput v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :goto_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_inits:Lorg/openjdk/tools/javac/util/Bits;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->orSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_7
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Bits;->orSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsTry:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :goto_0
    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->trackable(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->newVar(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->letInit(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v4, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v4, v3}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    iget v3, v3, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    new-instance v5, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->nextadr:I

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    :goto_0
    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scanCond(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenFalse:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    :cond_0
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->initsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninitsWhenTrue:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v6

    iget v6, v6, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->diffSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v6

    iget v7, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->firstadr:I

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iput-object v6, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->flowKind:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method
