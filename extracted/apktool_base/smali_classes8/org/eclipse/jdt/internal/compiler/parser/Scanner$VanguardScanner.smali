.class final Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VanguardScanner"
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    return-void
.end method


# virtual methods
.method public getNextToken()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isInModuleDeclaration()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->INACTIVE:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken0()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isRestrictedKeyword(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->disambiguatedRestrictedKeyword(I)I

    move-result v0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->updateScanContext(I)V

    :cond_4
    const/16 v2, 0x25

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atTypeAnnotation()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->currentGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->LambdaParameterListGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->disambiguatedToken(I)I

    move-result v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x1b

    :cond_6
    :goto_1
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_7

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    return v1
.end method
