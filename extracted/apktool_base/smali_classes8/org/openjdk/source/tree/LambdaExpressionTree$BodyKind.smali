.class public final enum Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/source/tree/LambdaExpressionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

.field public static final enum EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

.field public static final enum STATEMENT:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    const-string v1, "EXPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    new-instance v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    const-string v2, "STATEMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->STATEMENT:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->$VALUES:[Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
    .locals 1

    const-class v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->$VALUES:[Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    invoke-virtual {v0}, [Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    return-object v0
.end method
