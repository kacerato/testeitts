.class public Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/InfixExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operator"
.end annotation


# static fields
.field public static final AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field private static final CODES:Ljava/util/Map;

.field public static final CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final DIVIDE:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final GREATER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final GREATER_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final LEFT_SHIFT:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final LESS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final LESS_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final MINUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final REMAINDER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final RIGHT_SHIFT_SIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final RIGHT_SHIFT_UNSIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final TIMES:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

.field public static final XOR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v0, v1

    const-string v2, "*"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->TIMES:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v1, v2

    const-string v3, "/"

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->DIVIDE:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v2, v3

    const-string v4, "%"

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->REMAINDER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v3, v4

    const-string v5, "+"

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v4, v5

    const-string v6, "-"

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v6, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v5, v6

    const-string v7, "<<"

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LEFT_SHIFT:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v7, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v6, v7

    const-string v8, ">>"

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_SIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v8, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v7, v8

    const-string v9, ">>>"

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_UNSIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v9, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v8, v9

    const-string v10, "<"

    invoke-direct {v9, v10}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v10, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v9, v10

    const-string v11, ">"

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v11, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v10, v11

    const-string v12, "<="

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v12, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v11, v12

    const-string v13, ">="

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v13, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v12, v13

    const-string v14, "=="

    invoke-direct {v13, v14}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v14, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v13, v14

    const-string v15, "!="

    invoke-direct {v14, v15}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v15, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v14, v15

    move-object/from16 v19, v0

    const-string v0, "^"

    invoke-direct {v15, v0}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->XOR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object v15, v0

    move-object/from16 v20, v1

    const-string v1, "|"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object/from16 v16, v0

    const-string v1, "&"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object/from16 v17, v0

    const-string v1, "||"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-object/from16 v18, v0

    const-string v1, "&&"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CODES:Ljava/util/Map;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    filled-new-array/range {v0 .. v18}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CODES:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->token:Ljava/lang/String;

    return-void
.end method

.method public static toOperator(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CODES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->token:Ljava/lang/String;

    return-object v0
.end method
