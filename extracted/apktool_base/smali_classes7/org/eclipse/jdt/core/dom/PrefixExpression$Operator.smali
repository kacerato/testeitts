.class public Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/PrefixExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operator"
.end annotation


# static fields
.field private static final CODES:Ljava/util/Map;

.field public static final COMPLEMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

.field public static final DECREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

.field public static final INCREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

.field public static final MINUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

.field public static final NOT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

.field public static final PLUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v1, "++"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->INCREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v2, "--"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->DECREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v2, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v3, "+"

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v3, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v4, "-"

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v5, "~"

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->COMPLEMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v5, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    const-string v6, "!"

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->NOT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->CODES:Ljava/util/Map;

    filled-new-array/range {v0 .. v5}, [Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->CODES:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->token:Ljava/lang/String;

    return-void
.end method

.method public static toOperator(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->CODES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->token:Ljava/lang/String;

    return-object v0
.end method
