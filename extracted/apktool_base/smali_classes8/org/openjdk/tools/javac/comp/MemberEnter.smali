.class public Lorg/openjdk/tools/javac/comp/MemberEnter;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;
    }
.end annotation


# static fields
.field protected static final memberEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/MemberEnter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field protected env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/MemberEnter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/MemberEnter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/MemberEnter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkReceiver(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const-string v1, "incorrect.constructor.receiver.type"

    invoke-virtual {p0, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->checkType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const-string p2, "incorrect.constructor.receiver.name"

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->checkType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "receiver.parameter.not.applicable.constructor.toplevel.class"

    invoke-virtual {p2, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const-string v2, "incorrect.receiver.type"

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->checkType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "incorrect.receiver.name"

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/MemberEnter;->checkType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getInitEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->initEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    return-object p1
.end method

.method public getMethodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->methodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public initEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/AttrContextEnv;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/AttrContextEnv;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/AttrContext;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Env;->dupto(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v3, 0x8

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v1

    const-wide/16 v5, 0x200

    and-long/2addr v1, v5

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget p2, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    :cond_2
    return-object v0
.end method

.method public memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 2
    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 5
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 7
    throw p1
.end method

.method public memberEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    .line 10
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public methodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    iput-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget v0, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    :cond_1
    return-object p2
.end method

.method public needsLazyConstValue(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;-><init>()V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-boolean p1, v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    return p1
.end method

.method public signature(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p2, p7}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, p2, p7}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypeVariables(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p7}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p3, p4, p7}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual {p0, p5, p7}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p4, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p4, p4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    new-instance p5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_3
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v2, p7}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_4

    :cond_3
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v3, p1, :cond_4

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x800000000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_4
    :goto_4
    invoke-virtual {p5, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p6, p6, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p5

    iget-object p6, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p6, p6, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p1, p2, p3, p5, p6}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object p4, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->recvtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    new-instance p2, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-direct {p2, v0, p1}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    move-object p1, p2

    :goto_5
    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_0
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 14

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Enter;->enterScope(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    new-instance v9, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v5, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Check;->checkFlags(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v1

    iput-wide v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iput-object v9, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v3, 0x80000000000L

    and-long/2addr v1, v3

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-wide v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long v2, v5, v3

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->methodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v12

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v13

    :try_start_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    move-object v1, p0

    move-object v2, v9

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/MemberEnter;->signature(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v1, v13}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v9}, Lorg/openjdk/tools/javac/code/Types;->isSignaturePolymorphic(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v3, 0x400000000000L

    or-long/2addr v1, v3

    iput-wide v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    if-eqz v3, :cond_3

    iget-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v3, 0x400000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, v10

    if-eqz v1, :cond_3

    iget-wide v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v1, v3

    iput-wide v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_3
    iget-object v1, v12, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkUnique(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v9}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v12, v9, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, p1, v12, v9, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->unfinishedDefaultValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v0

    iput-object v0, v9, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v0, v1, v12, v9, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateDefaultValueLater(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v0, v13}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    throw p1
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v3, 0x8

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v5, 0x200

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isEnumInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    invoke-virtual {v2, v0, v5}, Lorg/openjdk/tools/javac/comp/Attr;->attribIdentAsEnumType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v5, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isReceiverParam(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/MemberEnter;->checkReceiver(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v5, 0x400000000L

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->makeVarargs()Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Enter;->enterScope(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v9, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v9, v2

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lorg/openjdk/tools/javac/comp/Check;->checkFlags(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v5

    iput-wide v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v7, :cond_5

    const-wide/32 v8, 0x40000

    or-long/2addr v5, v8

    iput-wide v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v8, 0x10

    and-long/2addr v5, v8

    cmp-long v3, v5, v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/comp/MemberEnter;->needsLazyConstValue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v3}, Lorg/openjdk/tools/javac/comp/MemberEnter;->getInitEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v2, v4, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, v3}, Lorg/openjdk/tools/javac/comp/MemberEnter;->initEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2, v3, v4, p1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->setLazyConstValue(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    :cond_5
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkUnique(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkTransparentVar(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/code/Scope;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v2, v4}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v2, v4}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput p1, v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    return-void

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    throw p1
.end method
