.class final Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;
.super Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/StringConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndyConstants"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method

.method private doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v7, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct {v7, v4, v3, v0, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v9, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    move-object/from16 v2, p2

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleLookupType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v5, v6, v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v5, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    iget-object v10, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen;->getAttrEnv()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v12

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v13, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringConcatFactory:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v0, Lorg/openjdk/tools/javac/util/Names;->makeConcatWithConstants:Lorg/openjdk/tools/javac/util/Name;

    const/16 v16, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v16}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/Names;->makeConcatWithConstants:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static/range {p3 .. p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x6

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move v5, v10

    invoke-direct/range {v2 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;[Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Gen;->getItems()Lorg/openjdk/tools/javac/jvm/Items;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeDynamicItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-void

    :goto_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw v0
.end method


# virtual methods
.method public emit(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;->split(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "Arguments list is empty"

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v8, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    iget-object v9, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v9, v10, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_4

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->stringValue()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v8}, Lorg/openjdk/tools/javac/jvm/StringConcat;->sharpestAccessible(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v9, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, v5, v9}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;->doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;->doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    :cond_8
    return-void
.end method
