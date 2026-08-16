.class final Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;
.super Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HierarchyPhase"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->HIERARCHY_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v1, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V

    return-void
.end method


# virtual methods
.method public clearTypeParams(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/TypeEnter$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    move-result-object v0

    if-eq v0, p0, :cond_2

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p0, v1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->baseEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->attribSuperTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->java_lang_Object:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v4, :cond_1

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v4, v5}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iput-object p1, v2, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v4, v5}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v2, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->markDeprecated(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicDecl(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method
