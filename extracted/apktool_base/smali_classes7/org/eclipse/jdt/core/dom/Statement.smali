.class public abstract Lorg/eclipse/jdt/core/dom/Statement;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# instance fields
.field private optionalLeadingComment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Statement;->optionalLeadingComment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyLeadingComment(Lorg/eclipse/jdt/core/dom/Statement;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Statement;->getLeadingComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/Statement;->setLeadingComment(Ljava/lang/String;)V

    return-void
.end method

.method public getLeadingComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Statement;->optionalLeadingComment:Ljava/lang/String;

    return-object v0
.end method

.method public memSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Statement;->getLeadingComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    return v0
.end method

.method public setLeadingComment(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    :goto_0
    move v0, v3

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkModifiable()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Statement;->optionalLeadingComment:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
