.class Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Goal"
.end annotation


# static fields
.field static BlockStatementoptGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

.field static BlockStatementoptRule:I

.field static IntersectionCastGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

.field static IntersectionCastRule:I

.field static LambdaParameterListGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

.field static LambdaParameterListRule:I

.field static ReferenceExpressionGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

.field static ReferenceExpressionRule:I

.field static VarargTypeAnnotationGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

.field static VarargTypeAnnotationsRule:I


# instance fields
.field first:I

.field follow:[I

.field rule:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x363

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    const/16 v1, 0x62

    filled-new-array {v1}, [I

    move-result-object v2

    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->LambdaParameterListRule:I

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->LambdaParameterListGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->followSetOfCast()[I

    move-result-object v1

    sget v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->IntersectionCastRule:I

    const/16 v3, 0x17

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->IntersectionCastGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    const/16 v1, 0x7a

    filled-new-array {v1}, [I

    move-result-object v1

    sget v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->VarargTypeAnnotationsRule:I

    const/16 v3, 0x25

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->VarargTypeAnnotationGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    const/4 v1, 0x7

    filled-new-array {v1}, [I

    move-result-object v1

    sget v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->ReferenceExpressionRule:I

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->ReferenceExpressionGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    const/4 v1, 0x0

    new-array v1, v1, [I

    sget v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->BlockStatementoptRule:I

    const/16 v3, 0x31

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;-><init>(I[II)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->BlockStatementoptGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    return-void

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v3, v0

    aget-char v2, v2, v3

    aget-object v1, v1, v2

    const-string v2, "ParenthesizedLambdaParameterList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->LambdaParameterListRule:I

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v3, v0

    aget-char v2, v2, v3

    aget-object v1, v1, v2

    const-string v2, "ParenthesizedCastNameAndBounds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->IntersectionCastRule:I

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v3, v0

    aget-char v2, v2, v3

    aget-object v1, v1, v2

    const-string v2, "ReferenceExpressionTypeArgumentsAndTrunk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->ReferenceExpressionRule:I

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v3, v0

    aget-char v2, v2, v3

    aget-object v1, v1, v2

    const-string v2, "TypeAnnotations"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->VarargTypeAnnotationsRule:I

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v3, v0

    aget-char v2, v2, v3

    aget-object v1, v1, v2

    const-string v2, "BlockStatementopt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->BlockStatementoptRule:I

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(I[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->first:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->follow:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->rule:I

    return-void
.end method

.method private static followSetOfCast()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x16
        0x24
        0x22
        0x23
        0x26
        0x28
        0x27
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x3f
        0x40
        0x17
    .end array-data
.end method


# virtual methods
.method public hasBeenReached(II)Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->rule:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->follow:[I

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->follow:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method
