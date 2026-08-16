.class abstract Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;
.super Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractHeaderPhase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V

    return-void
.end method


# virtual methods
.method public attribSuperTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->clearTypeParams(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x1

    move-object v7, v2

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lorg/openjdk/tools/javac/comp/Attr;->attribBase(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    goto :goto_2

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v6, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0x4000

    and-long/2addr v6, v8

    cmp-long v2, v6, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v6

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->enumBase(ILorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lorg/openjdk/tools/javac/comp/Attr;->attribBase(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->java_lang_Object:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v6, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :goto_1
    move-object v2, v5

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v6, v2, v7}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->modelMissingTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->clearTypeParams(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v10, 0x0

    move-object v8, v6

    move-object v9, p2

    invoke-virtual/range {v7 .. v12}, Lorg/openjdk/tools/javac/comp/Attr;->attribBase(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    sget-object v8, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v5

    :cond_5
    const/4 v8, 0x1

    invoke-virtual {p0, p2, v7, v6, v8}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->modelMissingTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_6
    iget-wide p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x2000

    and-long/2addr p1, v6

    cmp-long p1, p1, v3

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_4
    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    return-void
.end method

.method public baseEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/openjdk/tools/javac/comp/Env;->baseClause:Z

    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p2, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    return-object p1
.end method

.method public clearTypeParams(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    return-object p1
.end method

.method public enumBase(ILorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object p1

    return-object p1
.end method

.method public modelMissingTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/code/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    return-object v0
.end method
