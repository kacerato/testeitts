.class Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VanguardParser"
.end annotation


# static fields
.field public static final FAILURE:Z = false

.field public static final SUCCESS:Z = true


# instance fields
.field currentGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    return-void
.end method


# virtual methods
.method public parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z
    .locals 6

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->currentGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->first:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v0, 0x464

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    array-length v3, v2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    if-lt v4, v3, :cond_0

    add-int/lit16 v4, v3, 0xff

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    aput v0, v2, v3

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    const/16 v2, 0x4246

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v3, 0x363

    if-gt v0, v3, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    goto :goto_1

    :cond_2
    if-le v0, v2, :cond_5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    add-int/lit16 v0, v0, -0x4246

    :cond_3
    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->hasBeenReached(II)Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    :cond_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v4, v4, v0

    sub-int/2addr v4, v5

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stateStackTop:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->stack:[I

    aget v2, v4, v2

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v0, v4, v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v0

    if-le v0, v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    throw p1

    :cond_5
    const/16 v3, 0x4245

    if-ge v0, v3, :cond_6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    goto :goto_0

    :catchall_1
    move-exception p1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\n\n----------------Scanner--------------\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
