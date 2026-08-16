.class Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;
.super Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/StringConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndyPlain"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method

.method private doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
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

    move-object/from16 v4, p3

    invoke-direct {v7, v4, v3, v0, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v9, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    move-object/from16 v2, p2

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleLookupType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3, v4, v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    iget-object v10, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen;->getAttrEnv()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v12

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v13, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringConcatFactory:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v0, Lorg/openjdk/tools/javac/util/Names;->makeConcat:Lorg/openjdk/tools/javac/util/Name;

    const/16 v16, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v16}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->makeConcat:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    const/4 v5, 0x6

    move-object v2, v0

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

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw v0
.end method


# virtual methods
.method public emit(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7
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

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    const-string v3, "Arguments list is empty"

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/StringConcat;->sharpestAccessible(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v3, v5}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;->doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;->doCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V

    :cond_5
    return-void
.end method
