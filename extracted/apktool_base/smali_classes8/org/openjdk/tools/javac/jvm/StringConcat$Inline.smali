.class Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;
.super Lorg/openjdk/tools/javac/jvm/StringConcat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/StringConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inline"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method

.method private appendString(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v1, v3, :cond_0

    iget-object v0, v2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->sbAppends:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Gen;->getAttrEnv()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symtab;->stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p1, Lorg/openjdk/tools/javac/util/Names;->append:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->sbAppends:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Gen;->getItems()Lorg/openjdk/tools/javac/jvm/Items;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method private builderToString(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/Names;->toString:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->callMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Z)V

    return-void
.end method

.method private newStringBuilder(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen;->getCode()Lorg/openjdk/tools/javac/jvm/Code;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen;->getCode()Lorg/openjdk/tools/javac/jvm/Code;

    move-result-object v0

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->callMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Z)V

    return-object p1
.end method


# virtual methods
.method public makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->newStringBuilder(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->width()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Gen;->getCode()Lorg/openjdk/tools/javac/jvm/Code;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    .line 7
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->appendString(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collectAll(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 10
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    .line 11
    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->appendString(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->builderToString(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-object v1
.end method

.method public makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 4

    .line 13
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->newStringBuilder(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 15
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collectAll(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 17
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    .line 18
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->appendString(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;->builderToString(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 20
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Gen;->getItems()Lorg/openjdk/tools/javac/jvm/Items;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    return-object p1
.end method
