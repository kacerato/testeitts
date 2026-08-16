.class Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;
.super Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreeVarCollector"
.end annotation


# instance fields
.field clazz:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field fvs:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;-><init>(Lorg/openjdk/tools/javac/comp/Lower;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->clazz:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private addFreeVar(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public addFreeVars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->addFreeVar(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->clazz:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    return-void
.end method

.method public visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_3

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->proxyName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->addFreeVar(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_3
    :goto_1
    return-void
.end method
