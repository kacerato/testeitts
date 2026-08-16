.class public final enum Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/expr/UnaryExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;",
        ">;",
        "Lcom/github/javaparser/printer/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum BITWISE_COMPLEMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum LOGICAL_COMPLEMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum MINUS:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PLUS:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum POSTFIX_DECREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum POSTFIX_INCREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PREFIX_DECREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

.field public static final enum PREFIX_INCREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;

.field private final isPostfix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v1, "+"

    const-string v2, "PLUS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->PLUS:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v1, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v2, "-"

    const-string v4, "MINUS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->MINUS:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v2, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v4, "PREFIX_INCREMENT"

    const/4 v6, 0x2

    const-string v7, "++"

    invoke-direct {v2, v4, v6, v7, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->PREFIX_INCREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v4, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v6, "PREFIX_DECREMENT"

    const/4 v8, 0x3

    const-string v9, "--"

    invoke-direct {v4, v6, v8, v9, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->PREFIX_DECREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v6, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const/4 v8, 0x4

    const-string v10, "!"

    const-string v11, "LOGICAL_COMPLEMENT"

    invoke-direct {v6, v11, v8, v10, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->LOGICAL_COMPLEMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v8, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const/4 v10, 0x5

    const-string v11, "~"

    const-string v12, "BITWISE_COMPLEMENT"

    invoke-direct {v8, v12, v10, v11, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->BITWISE_COMPLEMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v10, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v3, "POSTFIX_INCREMENT"

    const/4 v11, 0x6

    invoke-direct {v10, v3, v11, v7, v5}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->POSTFIX_INCREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    new-instance v7, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    const-string v3, "POSTFIX_DECREMENT"

    const/4 v11, 0x7

    invoke-direct {v7, v3, v11, v9, v5}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->POSTFIX_DECREMENT:Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-object v3, v4

    move-object v4, v6

    move-object v5, v8

    move-object v6, v10

    filled-new-array/range {v0 .. v7}, [Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->$VALUES:[Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "codeRepresentation",
            "isPostfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->$VALUES:[Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public isPostfix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix:Z

    return v0
.end method

.method public isPrefix()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
