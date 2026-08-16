.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.source "SourceFile"


# instance fields
.field public selectionEnd:I

.field public selectionIdentifier:[C

.field public selectionStart:I


# direct methods
.method public constructor <init>(J)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    return-void
.end method


# virtual methods
.method public getCurrentIdentifierSource()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    new-array v2, v0, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    new-array v4, v2, [C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v0

    return-object v0
.end method

.method public isAtAssistIdentifier()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scanIdentifierOrKeyword()I
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionStart:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionEnd:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    return v0
.end method
