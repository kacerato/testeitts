.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;
.super Lcom/github/javaparser/ast/validator/Validators;
.source "SourceFile"


# instance fields
.field final modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

.field final noAnnotations:Lcom/github/javaparser/ast/validator/Validator;

.field final noAssertKeyword:Lcom/github/javaparser/ast/validator/Validator;

.field final noBinaryIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

.field final noEnums:Lcom/github/javaparser/ast/validator/Validator;

.field final noForEach:Lcom/github/javaparser/ast/validator/Validator;

.field final noGenerics:Lcom/github/javaparser/ast/validator/Validator;

.field final noInnerClasses:Lcom/github/javaparser/ast/validator/Validator;

.field final noLambdas:Lcom/github/javaparser/ast/validator/Validator;

.field final noModules:Lcom/github/javaparser/ast/validator/Validator;

.field final noMultiCatch:Lcom/github/javaparser/ast/validator/Validator;

.field final noPatternMatchingInstanceOf:Lcom/github/javaparser/ast/validator/Validator;

.field final noPermitsListInClasses:Lcom/github/javaparser/ast/validator/Validator;

.field final noRecordDeclaration:Lcom/github/javaparser/ast/validator/Validator;

.field final noRecordPatterns:Lcom/github/javaparser/ast/validator/Validator;

.field final noReflection:Lcom/github/javaparser/ast/validator/Validator;

.field final noSealedClasses:Lcom/github/javaparser/ast/validator/Validator;

.field final noStaticImports:Lcom/github/javaparser/ast/validator/Validator;

.field final noSwitchExpressions:Lcom/github/javaparser/ast/validator/Validator;

.field final noSwitchNullDefault:Lcom/github/javaparser/ast/validator/Validator;

.field final noSwitchPatterns:Lcom/github/javaparser/ast/validator/Validator;

.field final noTextBlockLiteral:Lcom/github/javaparser/ast/validator/Validator;

.field final noUnderscoresInIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

.field final noVarargs:Lcom/github/javaparser/ast/validator/Validator;

.field final noYield:Lcom/github/javaparser/ast/validator/Validator;

.field final onlyOneLabelInSwitchCase:Lcom/github/javaparser/ast/validator/Validator;

.field final tryWithoutResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/javaparser/ast/validator/Validator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/github/javaparser/ast/validator/Validators;-><init>([Lcom/github/javaparser/ast/validator/Validator;)V

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    invoke-direct {v1, v3, v3, v3}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v1, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v2, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v3, Lcom/github/javaparser/ast/validator/language_level_validations/e;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/language_level_validations/e;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/validator/language_level_validations/g;

    invoke-direct {v4}, Lcom/github/javaparser/ast/validator/language_level_validations/g;-><init>()V

    const-class v5, Lcom/github/javaparser/ast/stmt/AssertStmt;

    invoke-direct {v2, v5, v3, v4}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v2, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noAssertKeyword:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v3, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v4, Lcom/github/javaparser/ast/validator/language_level_validations/s;

    invoke-direct {v4}, Lcom/github/javaparser/ast/validator/language_level_validations/s;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/validator/language_level_validations/E;

    invoke-direct {v5}, Lcom/github/javaparser/ast/validator/language_level_validations/E;-><init>()V

    const-class v6, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {v3, v6, v4, v5}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v3, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noInnerClasses:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v4, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v5, Lcom/github/javaparser/ast/validator/language_level_validations/H;

    invoke-direct {v5}, Lcom/github/javaparser/ast/validator/language_level_validations/H;-><init>()V

    new-instance v7, Lcom/github/javaparser/ast/validator/language_level_validations/I;

    invoke-direct {v7}, Lcom/github/javaparser/ast/validator/language_level_validations/I;-><init>()V

    const-class v8, Lcom/github/javaparser/ast/expr/ClassExpr;

    invoke-direct {v4, v8, v5, v7}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v4, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noReflection:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v5, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v7, Lcom/github/javaparser/ast/validator/language_level_validations/J;

    invoke-direct {v7}, Lcom/github/javaparser/ast/validator/language_level_validations/J;-><init>()V

    invoke-direct {v5, v7}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    iput-object v5, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noGenerics:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v7, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v8, Lcom/github/javaparser/ast/validator/language_level_validations/K;

    invoke-direct {v8}, Lcom/github/javaparser/ast/validator/language_level_validations/K;-><init>()V

    const-class v9, Lcom/github/javaparser/ast/stmt/TryStmt;

    invoke-direct {v7, v9, v8}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v7, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->tryWithoutResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v8, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v9, Lcom/github/javaparser/ast/validator/language_level_validations/M;

    invoke-direct {v9}, Lcom/github/javaparser/ast/validator/language_level_validations/M;-><init>()V

    invoke-direct {v8, v9}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    iput-object v8, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noAnnotations:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v9, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v10, Lcom/github/javaparser/ast/validator/language_level_validations/N;

    invoke-direct {v10}, Lcom/github/javaparser/ast/validator/language_level_validations/N;-><init>()V

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/p;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/p;-><init>()V

    const-class v12, Lcom/github/javaparser/ast/body/EnumDeclaration;

    invoke-direct {v9, v12, v10, v11}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v9, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noEnums:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v10, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/A;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/A;-><init>()V

    new-instance v12, Lcom/github/javaparser/ast/validator/language_level_validations/L;

    invoke-direct {v12}, Lcom/github/javaparser/ast/validator/language_level_validations/L;-><init>()V

    const-class v13, Lcom/github/javaparser/ast/body/Parameter;

    invoke-direct {v10, v13, v11, v12}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v10, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noVarargs:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v12, Lcom/github/javaparser/ast/validator/language_level_validations/P;

    invoke-direct {v12}, Lcom/github/javaparser/ast/validator/language_level_validations/P;-><init>()V

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/Q;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/Q;-><init>()V

    const-class v14, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    invoke-direct {v11, v14, v12, v13}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noForEach:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v12, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/S;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/S;-><init>()V

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/T;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/T;-><init>()V

    const-class v15, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-direct {v12, v15, v13, v14}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v12, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noStaticImports:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v13, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/U;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/U;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/V;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/V;-><init>()V

    move-object/from16 v16, v12

    const-class v12, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    invoke-direct {v13, v12, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->onlyOneLabelInSwitchCase:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v14, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/f;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/f;-><init>()V

    move-object/from16 v17, v13

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/h;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/h;-><init>()V

    move-object/from16 v18, v11

    const-class v11, Lcom/github/javaparser/ast/stmt/YieldStmt;

    invoke-direct {v14, v11, v15, v13}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v14, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noYield:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoBinaryIntegerLiteralsValidator;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoBinaryIntegerLiteralsValidator;-><init>()V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noBinaryIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;-><init>()V

    iput-object v13, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noUnderscoresInIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v15, Lcom/github/javaparser/ast/validator/SimpleValidator;

    move-object/from16 v19, v13

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/i;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/i;-><init>()V

    move-object/from16 v20, v11

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/j;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/j;-><init>()V

    move-object/from16 v21, v14

    const-class v14, Lcom/github/javaparser/ast/type/UnionType;

    invoke-direct {v15, v14, v13, v11}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v15, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noMultiCatch:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/k;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/k;-><init>()V

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/l;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/l;-><init>()V

    move-object/from16 v22, v15

    const-class v15, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-direct {v11, v15, v13, v14}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noLambdas:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v13, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/m;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/m;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/n;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/n;-><init>()V

    move-object/from16 v23, v11

    const-class v11, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-direct {v13, v11, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noModules:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/o;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/o;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/q;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/q;-><init>()V

    move-object/from16 v24, v13

    const-class v13, Lcom/github/javaparser/ast/expr/SwitchExpr;

    invoke-direct {v11, v13, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSwitchExpressions:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v13, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/r;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/r;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/t;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/t;-><init>()V

    move-object/from16 v25, v11

    const-class v11, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    invoke-direct {v13, v11, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noPatternMatchingInstanceOf:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/u;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/u;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/v;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/v;-><init>()V

    move-object/from16 v26, v13

    const-class v13, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    invoke-direct {v11, v13, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noTextBlockLiteral:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v13, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/w;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/w;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/x;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/x;-><init>()V

    move-object/from16 v27, v11

    const-class v11, Lcom/github/javaparser/ast/body/RecordDeclaration;

    invoke-direct {v13, v11, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noRecordDeclaration:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/y;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/y;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/z;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/z;-><init>()V

    invoke-direct {v11, v6, v14, v15}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSealedClasses:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v14, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/B;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/B;-><init>()V

    move-object/from16 v28, v11

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/C;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/C;-><init>()V

    invoke-direct {v14, v6, v15, v11}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v14, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noPermitsListInClasses:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v6, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/D;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/D;-><init>()V

    invoke-direct {v6, v12, v11}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v6, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSwitchNullDefault:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v11, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/F;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/F;-><init>()V

    invoke-direct {v11, v12, v15}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v11, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSwitchPatterns:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v12, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v15, Lcom/github/javaparser/ast/validator/language_level_validations/G;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/language_level_validations/G;-><init>()V

    invoke-direct {v12, v15}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    iput-object v12, v0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noRecordPatterns:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v3}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v4}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v5}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v7}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v8}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v9}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v10}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v13}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v14}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v6}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v11}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {v0, v12}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic A(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$13(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic C(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$28(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic D(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$33(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/github/javaparser/ast/expr/LambdaExpr;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$21(Lcom/github/javaparser/ast/expr/LambdaExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$20(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic G(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$40(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic H(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$5(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic I(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$35(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$14(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic K(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic L(Lcom/github/javaparser/ast/expr/InstanceOfExpr;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$27(Lcom/github/javaparser/ast/expr/InstanceOfExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$8(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic N(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$39(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic O(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$37(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic P(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$34(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/stmt/SwitchEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$15(Lcom/github/javaparser/ast/stmt/SwitchEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/expr/SwitchExpr;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$25(Lcom/github/javaparser/ast/expr/SwitchExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$6(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/body/EnumDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$9(Lcom/github/javaparser/ast/body/EnumDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$24(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$32(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic h(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$18(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic i(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$23(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$26(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic k(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$29(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/github/javaparser/ast/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$null$38(Lcom/github/javaparser/ast/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/stmt/AssertStmt;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "\'assert\' keyword is not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_4:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$10(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Enumerations are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$11(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Varargs are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$12(Lcom/github/javaparser/ast/stmt/ForEachStmt;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$13(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "For-each loops are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$14(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Static imports are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$15(Lcom/github/javaparser/ast/stmt/SwitchEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$16(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Only one label allowed in a switch-case."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$17(Lcom/github/javaparser/ast/stmt/YieldStmt;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$18(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Only labels allowed in break statements."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_13:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$19(Lcom/github/javaparser/ast/type/UnionType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$20(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Multi-catch is not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$21(Lcom/github/javaparser/ast/expr/LambdaExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$22(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Lambdas are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_8:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$23(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$24(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Modules are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_9:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$25(Lcom/github/javaparser/ast/expr/SwitchExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$26(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Switch expressions are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_12:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$27(Lcom/github/javaparser/ast/expr/InstanceOfExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$28(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Use of patterns with instanceof is not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_14:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$29(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "inner classes or interfaces are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_1:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$30(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Text Block Literals are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_15:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$31(Lcom/github/javaparser/ast/body/RecordDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$32(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Record Declarations are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_14:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$33(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$new$34(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Sealed classes are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_15:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$35(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$36(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Permitted sub-classes are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_17:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$37(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Switch case null, default not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_21:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$39(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/O;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/O;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Switch patterns not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_21:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$4(Lcom/github/javaparser/ast/expr/ClassExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$40(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/expr/RecordPatternExpr;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Record patterns are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_21:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$5(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Reflection is not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_1:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$6(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    const/4 v1, 0x0

    const-string v2, "Generics are not supported."

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    sget-object v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v2, v3}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v3}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    sget-object v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v2, v3}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$7(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v2, "Try has no finally and no catch."

    sget-object v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v2, v3}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v2, "Catch with resource is not supported."

    sget-object v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v2, v3}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$8(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "Annotations are not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$9(Lcom/github/javaparser/ast/body/EnumDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$null$38(Lcom/github/javaparser/ast/expr/Expression;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "expr"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/Expression;->isPatternExpr()Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/github/javaparser/ast/stmt/ForEachStmt;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$12(Lcom/github/javaparser/ast/stmt/ForEachStmt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/github/javaparser/ast/type/UnionType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$19(Lcom/github/javaparser/ast/type/UnionType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/github/javaparser/ast/expr/ClassExpr;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$4(Lcom/github/javaparser/ast/expr/ClassExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/github/javaparser/ast/body/RecordDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$31(Lcom/github/javaparser/ast/body/RecordDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$10(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic r(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$22(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic s(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$7(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic t(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$36(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic u(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$30(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic v(Lcom/github/javaparser/ast/stmt/YieldStmt;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$17(Lcom/github/javaparser/ast/stmt/YieldStmt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/github/javaparser/ast/stmt/AssertStmt;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$0(Lcom/github/javaparser/ast/stmt/AssertStmt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$16(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic y(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$1(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic z(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->lambda$new$11(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
