.class public Lorg/openjdk/tools/javac/comp/Operators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$ComparisonKind;,
        Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$UnaryReferenceOperator;,
        Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;,
        Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;,
        Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;,
        Lorg/openjdk/tools/javac/comp/Operators$OperatorType;
    }
.end annotation


# static fields
.field protected static final operatorsKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Operators;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private binaryOperators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field public final noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

.field private opname:[Lorg/openjdk/tools/javac/util/Name;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private unaryOperators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Operators;->operatorsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->getNumberOfOperators()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->unaryOperators:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->getNumberOfOperators()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->binaryOperators:Ljava/util/Map;

    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->getNumberOfOperators()I

    move-result v0

    new-array v0, v0, [Lorg/openjdk/tools/javac/util/Name;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->opname:[Lorg/openjdk/tools/javac/util/Name;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Operators;->operatorsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Operators;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    new-instance p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    const/4 v3, -0x1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Operators;->initOperatorNames()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Operators;->initUnaryOperators()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Operators;->initBinaryOperators()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveBinary$4(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Operators;->makeOperator(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Operators;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveUnary$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveUnary$1(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveBinary$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveBinary$3(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/function/Predicate;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$lookupBinaryOp$7(Ljava/util/function/Predicate;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$lookupBinaryOp$8(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$resolveUnary$2(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->lambda$makeOperator$6(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method private initBinaryOperators()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Operators;->binaryOperators:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryStringOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sget-object v4, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->STRING:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->OBJECT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    const/16 v6, 0x100

    filled-new-array {v6}, [I

    move-result-object v7

    invoke-virtual {v2, v4, v5, v4, v7}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v7

    invoke-virtual {v2, v5, v4, v4, v7}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v7

    invoke-virtual {v2, v4, v4, v4, v7}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v7, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->INT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v8

    invoke-virtual {v2, v4, v7, v4, v8}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v8, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->LONG:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v9

    invoke-virtual {v2, v4, v8, v4, v9}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v9, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->FLOAT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v10

    invoke-virtual {v2, v4, v9, v4, v10}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v10, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->DOUBLE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v11

    invoke-virtual {v2, v4, v10, v4, v11}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v11, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v12

    invoke-virtual {v2, v4, v11, v4, v12}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    sget-object v12, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BOT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v4, v12, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v7, v4, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v8, v4, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v9, v4, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v10, v4, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-virtual {v2, v11, v4, v4, v13}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v2, v12, v4, v4, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v13

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x63

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x62

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v9, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x61

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x60

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v14

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x67

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x66

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v9, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x65

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x64

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v15

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x6b

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x6a

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v9, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x69

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x68

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v16

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x6f

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x6e

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v9, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x6d

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x6c

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v17

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x73

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x72

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v9, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x71

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x70

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v18

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x7e

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v2, v11, v11, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v19

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    new-instance v6, Lorg/openjdk/tools/javac/comp/u1;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/comp/u1;-><init>()V

    invoke-direct {v2, v0, v3, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V

    const/16 v3, 0x7f

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v20

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x80

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v2, v11, v11, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v21

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    new-instance v6, Lorg/openjdk/tools/javac/comp/u1;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/comp/u1;-><init>()V

    invoke-direct {v2, v0, v3, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V

    const/16 v3, 0x81

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v22

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x82

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v2, v11, v11, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v23

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    new-instance v6, Lorg/openjdk/tools/javac/comp/u1;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/comp/u1;-><init>()V

    invoke-direct {v2, v0, v3, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V

    const/16 v3, 0x83

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v24

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x78

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x10e

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v8, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x79

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v7, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x10f

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v25

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x7a

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x110

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v8, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x7b

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v7, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x111

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v26

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryShiftOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x7c

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x112

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v8, v7, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x7d

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v7, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x113

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v8, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v27

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x98

    const/16 v4, 0x9b

    filled-new-array {v3, v4}, [I

    move-result-object v6

    invoke-virtual {v2, v10, v10, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v6, 0x96

    filled-new-array {v6, v4}, [I

    move-result-object v12

    invoke-virtual {v2, v9, v9, v11, v12}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v12, 0x94

    filled-new-array {v12, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v8, v8, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0xa1

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v7, v7, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v28

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x97

    const/16 v6, 0x9d

    filled-new-array {v4, v6}, [I

    move-result-object v3

    invoke-virtual {v2, v10, v10, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x95

    filled-new-array {v3, v6}, [I

    move-result-object v4

    invoke-virtual {v2, v9, v9, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v12, v6}, [I

    move-result-object v4

    invoke-virtual {v2, v8, v8, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0xa3

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v7, v7, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v29

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x9e

    const/16 v6, 0x98

    filled-new-array {v6, v4}, [I

    move-result-object v6

    invoke-virtual {v2, v10, v10, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v6, 0x96

    filled-new-array {v6, v4}, [I

    move-result-object v6

    invoke-virtual {v2, v9, v9, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v12, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v8, v8, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0xa4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v7, v7, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v30

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0x9c

    const/16 v6, 0x97

    filled-new-array {v6, v4}, [I

    move-result-object v12

    invoke-virtual {v2, v10, v10, v11, v12}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3, v4}, [I

    move-result-object v6

    invoke-virtual {v2, v9, v9, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v6, 0x94

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v8, v8, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0xa2

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v7, v7, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v31

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0xa5

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v5, v5, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0x9f

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v2, v11, v11, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v6, 0x99

    const/16 v12, 0x97

    filled-new-array {v12, v6}, [I

    move-result-object v4

    invoke-virtual {v2, v10, v10, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3, v6}, [I

    move-result-object v4

    invoke-virtual {v2, v9, v9, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0x94

    filled-new-array {v4, v6}, [I

    move-result-object v6

    invoke-virtual {v2, v8, v8, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0x9f

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v7, v7, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v32

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryEqualityOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v4, 0xa6

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v5, v5, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v4, 0xa0

    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v2, v11, v11, v11, v5}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v5, 0x9a

    const/16 v6, 0x97

    filled-new-array {v6, v5}, [I

    move-result-object v6

    invoke-virtual {v2, v10, v10, v11, v6}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-virtual {v2, v9, v9, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x94

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-virtual {v2, v8, v8, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-virtual {v2, v7, v7, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v33

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x102

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v11, v11, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v34

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->OR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x103

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v11, v11, v11, v3}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->addBinaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v35

    filled-new-array/range {v13 .. v35}, [Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Operators;->initOperators(Ljava/util/Map;[Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)V

    return-void
.end method

.method private initOperatorNames()V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v1, "+"

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "-"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "!"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->COMPL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "~"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "++"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v3, "--"

    invoke-direct {p0, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NULLCHK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "<*nullchk*>"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->OR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "||"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "&&"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "=="

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "!="

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "<"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, ">"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "<="

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, ">="

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "|"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "^"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "&"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "<<"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, ">>"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, ">>>"

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->hyphen:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->slash:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v1, "%"

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private final varargs initOperators(Ljava/util/Map;[Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "TO;>;>;[TO;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initUnaryOperators()V
    .locals 14

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->unaryOperators:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sget-object v2, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->DOUBLE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v1, v2, v2, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v4, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->FLOAT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v5

    invoke-virtual {v1, v4, v4, v5}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v5, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->LONG:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v6

    invoke-virtual {v1, v5, v5, v6}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v6, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->INT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v6, v6, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v7

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v1, p0, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x77

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v2, v2, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x76

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v4, v4, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x75

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v5, v5, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x74

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v6, v6, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v8

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->COMPL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    new-instance v9, Lorg/openjdk/tools/javac/comp/u1;

    invoke-direct {v9}, Lorg/openjdk/tools/javac/comp/u1;-><init>()V

    invoke-direct {v1, p0, v3, v9}, Lorg/openjdk/tools/javac/comp/Operators$UnaryNumericOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/function/Predicate;)V

    const/16 v3, 0x83

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v5, v5, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x82

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v6, v6, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v9

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v1, p0, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v3, 0x63

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v2, v2, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x62

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v4, v4, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x61

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v5, v5, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    const/16 v3, 0x60

    filled-new-array {v3}, [I

    move-result-object v10

    invoke-virtual {v1, v6, v6, v10}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v10, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->CHAR:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v11

    invoke-virtual {v1, v10, v10, v11}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v11, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->SHORT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v12

    invoke-virtual {v1, v11, v11, v12}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    sget-object v12, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BYTE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v12, v12, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;

    sget-object v13, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v3, p0, v13}, Lorg/openjdk/tools/javac/comp/Operators$UnaryPrefixPostfixOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    const/16 v13, 0x67

    filled-new-array {v13}, [I

    move-result-object v13

    invoke-virtual {v3, v2, v2, v13}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x66

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v4, v4, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x65

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    const/16 v3, 0x64

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v2, v6, v6, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v2, v10, v10, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v2, v11, v11, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v2

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v12, v12, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v11

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, p0, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryBooleanOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sget-object v3, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    const/16 v4, 0x101

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v3, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v12

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$UnaryReferenceOperator;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NULLCHK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {v2, p0, v3}, Lorg/openjdk/tools/javac/comp/Operators$UnaryReferenceOperator;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sget-object v3, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->OBJECT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    const/16 v4, 0x114

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v2, v3, v3, v4}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->addUnaryOperator(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v13

    move-object v10, v1

    filled-new-array/range {v7 .. v13}, [Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->initOperators(Ljava/util/Map;[Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;)V

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Operators;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Operators;->operatorsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Operators;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Operators;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Operators;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$lookupBinaryOp$7(Ljava/util/function/Predicate;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorHelper;->doLookup(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$lookupBinaryOp$8(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$makeOperator$6(Lorg/openjdk/tools/javac/comp/Operators$OperatorType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->asType(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$resolveBinary$3(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Z
    .locals 0

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$resolveBinary$4(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-virtual {p2, p0, p1}, Lorg/openjdk/tools/javac/comp/Operators$BinaryOperatorHelper;->resolve(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$resolveBinary$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    filled-new-array {p3, p4}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->reportErrorIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;[Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$resolveUnary$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Z
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$resolveUnary$1(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/comp/Operators$UnaryOperatorHelper;->resolve(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$resolveUnary$2(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0

    filled-new-array {p3}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->reportErrorIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;[Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method private varargs makeOperator(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Operators$OperatorType;[I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Operators$OperatorType;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Operators$OperatorType;",
            "[I)",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/openjdk/tools/javac/comp/r1;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/r1;-><init>(Lorg/openjdk/tools/javac/comp/Operators;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->collector()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->asType(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance p2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-direct {p0, p4}, Lorg/openjdk/tools/javac/comp/Operators;->mergeOpcodes([I)I

    move-result p3

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p2, p1, v0, p3, p4}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V

    return-object p2
.end method

.method private varargs mergeOpcodes([I)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-ne v0, v2, :cond_2

    aget p1, p1, v1

    goto :goto_2

    :cond_2
    aget v0, p1, v1

    shl-int/lit8 v0, v0, 0x9

    aget p1, p1, v2

    or-int/2addr p1, v0

    :goto_2
    return p1
.end method

.method private varargs reportErrorIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;[Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 3

    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/y1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/y1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Operators;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p3, p3, v1

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OperatorCantBeApplied(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    goto :goto_0

    :cond_0
    aget-object v0, p3, v1

    aget-object p3, p3, v2

    invoke-static {p2, v0, p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OperatorCantBeApplied1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Operators;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object p1
.end method

.method private resolve(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/Map;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "TO;>;>;",
            "Ljava/util/function/Predicate<",
            "TO;>;",
            "Ljava/util/function/Function<",
            "TO;",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Operators;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object p1
.end method

.method private setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;)V

    return-void
.end method

.method private setOperatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->opname:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->operatorIndex()I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public binaryPromotion(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-object p1

    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public lookupBinaryOp(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->binaryOperators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/z1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/z1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/A1;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/comp/A1;-><init>(Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/B1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/B1;-><init>(Lorg/openjdk/tools/javac/comp/Operators;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    return-object p1
.end method

.method public operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->opname:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->operatorIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 10

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Operators;->binaryOperators:Ljava/util/Map;

    new-instance v7, Lorg/openjdk/tools/javac/comp/v1;

    invoke-direct {v7, p3, p4}, Lorg/openjdk/tools/javac/comp/v1;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v8, Lorg/openjdk/tools/javac/comp/w1;

    invoke-direct {v8, p3, p4}, Lorg/openjdk/tools/javac/comp/w1;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v9, Lorg/openjdk/tools/javac/comp/x1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/x1;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Operators;->resolve(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/Map;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    return-object v0
.end method

.method public resolveUnary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 6

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Operators;->unaryOperators:Ljava/util/Map;

    new-instance v3, Lorg/openjdk/tools/javac/comp/C1;

    invoke-direct {v3, p3}, Lorg/openjdk/tools/javac/comp/C1;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v4, Lorg/openjdk/tools/javac/comp/s1;

    invoke-direct {v4, p3}, Lorg/openjdk/tools/javac/comp/s1;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v5, Lorg/openjdk/tools/javac/comp/t1;

    invoke-direct {v5, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/t1;-><init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Operators;->resolve(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Ljava/util/Map;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public unaryPromotion(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Operators$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Operators;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1
.end method
