.class public Lorg/eclipse/jdt/core/dom/StringLiteral;
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

    const-class v3, Lorg/eclipse/jdt/core/dom/StringLiteral;

    const-string v4, "escapedValue"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Expression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const-string p1, "\"\""

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->escapedValue:Ljava/lang/String;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/StringLiteral;)Z

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/StringLiteral;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/StringLiteral;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->setEscapedValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEscapedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->escapedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteralValue()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentStringLiteral()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/StringLiteral;->setEscapedValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalSetEscapedValue(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->escapedValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->escapedValue:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    return v0
.end method

.method public setEscapedValue(Ljava/lang/String;)V
    .locals 5

    const-string v0, "<"

    const-string v1, "Invalid string literal : >"

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v2, v2, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v4, 0x0

    array-length v3, v3

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/StringLiteral;->escapedValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Token cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLiteralValue(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->setEscapedValue(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/StringLiteral;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StringLiteral;->memSize()I

    move-result v0

    return v0
.end method
