.class public Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/PostfixExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operator"
.end annotation


# static fields
.field private static final CODES:Ljava/util/Map;

.field public static final DECREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

.field public static final INCREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    const-string v1, "++"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->INCREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    new-instance v1, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    const-string v2, "--"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->DECREMENT:Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->CODES:Ljava/util/Map;

    filled-new-array {v0, v1}, [Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->CODES:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->token:Ljava/lang/String;

    return-void
.end method

.method public static toOperator(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->CODES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->token:Ljava/lang/String;

    return-object v0
.end method
