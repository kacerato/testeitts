.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public insertedTokenUsed:[Z

.field public insertedTokens:[[I

.field public insertedTokensPosition:[I

.field public insertedTokensPtr:I

.field public removedTokenUsed:[Z

.field public removedTokensEnd:[I

.field public removedTokensPtr:I

.field public removedTokensStart:[I

.field public replacedTokenUsed:[Z

.field public replacedTokens:[[I

.field public replacedTokensEnd:[I

.field public replacedTokensPtr:I

.field public replacedTokensStart:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    return-void
.end method


# virtual methods
.method public removeUnused()Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    move v0, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    if-le v0, v4, :cond_0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    aget-boolean v5, v4, v0

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aget-object v7, v6, v0

    aput-object v7, v6, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    aget v7, v6, v0

    aput v7, v6, v3

    aput-boolean v5, v4, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    if-eqz v0, :cond_5

    move v0, v1

    move v3, v2

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    if-le v0, v4, :cond_3

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    aget-boolean v5, v4, v0

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    aget-object v7, v6, v0

    aput-object v7, v6, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    aget v7, v6, v0

    aput v7, v6, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    aget v7, v6, v0

    aput v7, v6, v3

    aput-boolean v5, v4, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    if-eqz v0, :cond_8

    :goto_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    if-le v1, v0, :cond_6

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    aget-boolean v3, v0, v1

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    aget v5, v4, v1

    aput v5, v4, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    aget v5, v4, v1

    aput v5, v4, v2

    aput-boolean v3, v0, v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-object p0
.end method
