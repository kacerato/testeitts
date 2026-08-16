.class public Lorg/eclipse/jdt/core/dom/CharacterLiteral;
.super Lorg/eclipse/jdt/core/dom/Expression;
.source "SourceFile"


# static fields
.field public static final ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;


# instance fields
.field private escapedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    const-class v3, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    const-string v4, "escapedValue"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Expression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const-string p1, "\'X\'"

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/CharacterLiteral;)Z

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/CharacterLiteral;)V

    return-void
.end method

.method public charValue()C
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v2, 0x0

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v2

    const-string v3, "illegal character literal"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_12

    const/16 v5, 0x27

    if-ne v1, v5, :cond_12

    int-to-char v1, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v6

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_10

    if-eq v6, v4, :cond_f

    const/16 v1, 0x22

    if-eq v6, v1, :cond_d

    if-eq v6, v5, :cond_c

    if-eq v6, v7, :cond_b

    const/16 v1, 0x62

    if-eq v6, v1, :cond_a

    const/16 v1, 0x66

    if-eq v6, v1, :cond_9

    const/16 v1, 0x6e

    if-eq v6, v1, :cond_8

    const/16 v1, 0x72

    if-eq v6, v1, :cond_7

    const/16 v1, 0x74

    if-eq v6, v1, :cond_6

    int-to-char v1, v6

    :try_start_0
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v2

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    int-to-char v2, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v0

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_3

    int-to-char v0, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    int-to-char v0, v1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    const/16 v1, 0x9

    goto :goto_2

    :cond_7
    const/16 v1, 0xd

    goto :goto_2

    :cond_8
    const/16 v1, 0xa

    goto :goto_2

    :cond_9
    const/16 v1, 0xc

    goto :goto_2

    :cond_a
    const/16 v1, 0x8

    goto :goto_2

    :cond_b
    move v1, v7

    goto :goto_2

    :cond_c
    move v1, v5

    :cond_d
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v6

    if-eq v6, v4, :cond_e

    goto :goto_3

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_3
    if-eq v6, v4, :cond_11

    if-ne v6, v5, :cond_11

    return v1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->setEscapedValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEscapedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->setEscapedValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalSetEscapedValue(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    return v0
.end method

.method public setCharValue(C)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->setEscapedValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEscapedValue(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v2, 0x0

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->escapedValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/CharacterLiteral;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->memSize()I

    move-result v0

    return v0
.end method
