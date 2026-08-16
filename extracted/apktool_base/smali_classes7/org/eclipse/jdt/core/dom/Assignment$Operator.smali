.class public Lorg/eclipse/jdt/core/dom/Assignment$Operator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/Assignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operator"
.end annotation


# static fields
.field public static final ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final BIT_AND_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final BIT_OR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final BIT_XOR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field private static final CODES:Ljava/util/Map;

.field public static final DIVIDE_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final LEFT_SHIFT_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final MINUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final PLUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final REMAINDER_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final RIGHT_SHIFT_SIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final RIGHT_SHIFT_UNSIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

.field public static final TIMES_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;


# instance fields
.field private op:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v1, "="

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v2, "+="

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->PLUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v2, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v3, "-="

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->MINUS_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v3, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v4, "*="

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->TIMES_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v4, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v5, "/="

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->DIVIDE_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v5, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v6, "&="

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_AND_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v6, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v7, "|="

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_OR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v7, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v8, "^="

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->BIT_XOR_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v8, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v9, "%="

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->REMAINDER_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v9, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v10, "<<="

    invoke-direct {v9, v10}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->LEFT_SHIFT_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v10, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v11, ">>="

    invoke-direct {v10, v11}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->RIGHT_SHIFT_SIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v11, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    const-string v12, ">>>="

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->RIGHT_SHIFT_UNSIGNED_ASSIGN:Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    new-instance v12, Ljava/util/HashMap;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    sput-object v12, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->CODES:Ljava/util/Map;

    filled-new-array/range {v0 .. v11}, [Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->CODES:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->op:Ljava/lang/String;

    return-void
.end method

.method public static toOperator(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Assignment$Operator;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->CODES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->op:Ljava/lang/String;

    return-object v0
.end method
