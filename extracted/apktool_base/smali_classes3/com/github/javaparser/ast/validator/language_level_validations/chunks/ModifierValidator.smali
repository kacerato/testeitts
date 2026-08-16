.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;
.super Lcom/github/javaparser/ast/validator/VisitorValidator;
.source "SourceFile"


# instance fields
.field private final hasDefaultAndStaticInterfaceMethods:Z

.field private final hasPrivateInterfaceMethods:Z

.field private final hasStrictfp:Z

.field private final interfaceWithNothingSpecial:[Lcom/github/javaparser/ast/Modifier$Keyword;

.field private final interfaceWithStaticAndDefault:[Lcom/github/javaparser/ast/Modifier$Keyword;

.field private final interfaceWithStaticAndDefaultAndPrivate:[Lcom/github/javaparser/ast/Modifier$Keyword;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hasStrictfp",
            "hasDefaultAndStaticInterfaceMethods",
            "hasPrivateInterfaceMethods"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    sget-object v10, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v11, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v12, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v13, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v14, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v15, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v16, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    filled-new-array/range {v1 .. v7}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    iput-object v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithNothingSpecial:[Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v17, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v18, Lcom/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

    move-object v1, v10

    move-object/from16 v4, v17

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    filled-new-array/range {v1 .. v9}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    iput-object v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithStaticAndDefault:[Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    move-object v1, v10

    move-object v4, v12

    move-object/from16 v5, v17

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v18

    filled-new-array/range {v1 .. v10}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    iput-object v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithStaticAndDefaultAndPrivate:[Lcom/github/javaparser/ast/Modifier$Keyword;

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasStrictfp:Z

    move/from16 v1, p2

    iput-boolean v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasDefaultAndStaticInterfaceMethods:Z

    move/from16 v1, p3

    iput-boolean v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasPrivateInterfaceMethods:Z

    return-void
.end method

.method public static synthetic B3(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->lambda$visit$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method

.method public static synthetic C3(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->lambda$visit$2(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method

.method public static synthetic D3(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->lambda$visit$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method

.method private arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "searchItem"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$visit$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method private synthetic lambda$visit$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method private synthetic lambda$visit$2(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method private removeModifierFromArray(Lcom/github/javaparser/ast/Modifier$Keyword;[Lcom/github/javaparser/ast/Modifier$Keyword;)[Lcom/github/javaparser/ast/Modifier$Keyword;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "allowedModifiers"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/javaparser/ast/Modifier$Keyword;

    return-object p1
.end method

.method private varargs validateAtMostOneOf(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "reporter",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
            "*>;:",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;>(TT;",
            "Lcom/github/javaparser/ast/validator/ProblemReporter;",
            "[",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    invoke-interface {p1, v4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-le p3, v1, :cond_3

    new-instance p3, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;

    const-string v1, "\', \'"

    const-string v3, "\'."

    const-string v4, "Can have only one of \'"

    invoke-direct {p3, v4, v1, v3}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v3}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/github/javaparser/utils/SeparatedItemStringBuilder;

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    invoke-virtual {p3}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private validateClassModifiers(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v1 .. v6}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v7, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v8, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v9, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v1 .. v9}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isLocalClassDeclaration()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private validateInterfaceModifiers(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;",
            "Lcom/github/javaparser/ast/validator/ProblemReporter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v7, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v8, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v1 .. v8}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter",
            "allowedModifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
            "*>;:",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;>(TT;",
            "Lcom/github/javaparser/ast/validator/ProblemReporter;",
            "[",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateAtMostOneOf(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateAtMostOneOf(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    iget-boolean v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasStrictfp:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateAtMostOneOf(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, v0, p3}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->removeModifierFromArray(Lcom/github/javaparser/ast/Modifier$Keyword;[Lcom/github/javaparser/ast/Modifier$Keyword;)[Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p3

    :goto_0
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "\'%s\' is not allowed here."

    invoke-virtual {p2, v2, v3, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateInterfaceModifiers(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 22
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 24
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateInterfaceModifiers(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateClassModifiers(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 15
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 3
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 26
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lb0/i;

    invoke-direct {v1, p0, p2}, Lb0/i;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 4
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 20
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 5
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v0 .. v6}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 29
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 6
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;

    const-string v1, "\', \'"

    const-string v2, "\'."

    const-string v3, "Cannot be \'abstract\' and also \'"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v7, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v8, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v9, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v4 .. v9}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Modifier$Keyword;

    .line 33
    invoke-interface {p1, v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v2}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/github/javaparser/utils/SeparatedItemStringBuilder;

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v0}, Lcom/github/javaparser/utils/SeparatedItemStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_6

    .line 39
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    iget-boolean v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasDefaultAndStaticInterfaceMethods:Z

    if-eqz v0, :cond_4

    .line 41
    iget-boolean v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->hasPrivateInterfaceMethods:Z

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithStaticAndDefaultAndPrivate:[Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithStaticAndDefault:[Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->interfaceWithNothingSpecial:[Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 45
    :cond_5
    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v7, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v8, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v9, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array/range {v1 .. v9}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 46
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lb0/j;

    invoke-direct {v1, p0, p2}, Lb0/j;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lb0/k;

    invoke-direct {v1, p0, p2}, Lb0/k;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 8
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 9
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 55
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 10
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->validateModifiers(Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 51
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 11
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
