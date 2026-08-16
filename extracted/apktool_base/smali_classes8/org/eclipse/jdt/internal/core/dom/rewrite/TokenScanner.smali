.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOCUMENT_ERROR:I = 0x4e23

.field public static final END_OF_FILE:I = 0x4e21

.field public static final LEXICAL_ERROR:I = 0x4e22


# instance fields
.field private final endPosition:I

.field private final scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getSource()[C

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->endPosition:I

    return-void
.end method

.method public static createError(ILjava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;
    .locals 7

    new-instance v6, Lorg/eclipse/core/runtime/Status;

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, v6

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static isComment(I)Z
    .locals 1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isModifier(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCurrentEndOffset()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentLength()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentStartOffset()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v0

    return v0
.end method

.method public getNextEndOffset(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1

    return p1
.end method

.method public getNextStartOffset(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result p1

    return p1
.end method

.method public getPreviousTokenEndOffset(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->setOffset(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result v1

    :goto_0
    if-ne v1, p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result v1

    goto :goto_0
.end method

.method public getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-object v0
.end method

.method public getTokenEndOffset(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readToToken(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1

    return p1
.end method

.method public getTokenStartOffset(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readToToken(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result p1

    return p1
.end method

.method public readNext(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->setOffset(I)V

    .line 6
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result p1

    return p1
.end method

.method public readNext(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->isComment(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0

    .line 3
    :cond_2
    :try_start_1
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    const-string v0, "End Of File"

    const/4 v1, 0x0

    const/16 v2, 0x4e21

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->createError(ILjava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    const/16 v1, 0x4e22

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->createError(ILjava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0
.end method

.method public readToToken(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void
.end method

.method public readToToken(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->setOffset(I)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readToToken(I)V

    return-void
.end method

.method public setOffset(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->endPosition:I

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    return-void
.end method
