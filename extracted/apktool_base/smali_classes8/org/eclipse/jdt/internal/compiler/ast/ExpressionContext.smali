.class public abstract enum Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field public static final enum CASTING_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field public static final enum INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field public static final enum VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$1;

    const-string v1, "ASSIGNMENT_CONTEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$2;

    const-string v3, "INVOCATION_CONTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$3;

    const-string v5, "CASTING_CONTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->CASTING_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$4;

    const-string v7, "VANILLA_CONTEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract definesTargetType()Z
.end method
