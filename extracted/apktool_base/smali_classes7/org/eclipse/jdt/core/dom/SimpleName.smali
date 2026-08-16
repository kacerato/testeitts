.class public Lorg/eclipse/jdt/core/dom/SimpleName;
.super Lorg/eclipse/jdt/core/dom/Name;
.source "SourceFile"


# static fields
.field public static final IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final MISSING_IDENTIFIER:Ljava/lang/String; = "MISSING"

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_10_0:Ljava/util/List;

.field public static final VAR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;


# instance fields
.field private identifier:Ljava/lang/String;

.field private isVarType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    const-string v2, "identifier"

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-string v3, "var"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v1, v3, v5, v4}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/SimpleName;->VAR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jdt/core/dom/SimpleName;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->PROPERTY_DESCRIPTORS_10_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Name;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const-string p1, "MISSING"

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->isVarType:Z

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/SimpleName;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/SimpleName;->PROPERTY_DESCRIPTORS_10_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/SimpleName;)Z

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-void
.end method

.method public appendName(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->setIdentifier(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/16 v3, 0xa

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->isVar()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->setVar(Z)V

    :cond_0
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public final internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->VAR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->isVar()Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v0, 0x360000

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/core/dom/SimpleName;->setVar(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SimpleName;->setVar(Z)V

    :goto_0
    return p2

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SimpleName;->setIdentifier(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalSetIdentifier(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isDeclaration()Z
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_1

    return v4

    :cond_1
    return v1

    :cond_2
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_3

    return v4

    :cond_3
    return v1

    :cond_4
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    if-eqz v3, :cond_6

    sget-object v2, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_5

    return v4

    :cond_5
    return v1

    :cond_6
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    if-eqz v3, :cond_8

    sget-object v2, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_7

    return v4

    :cond_7
    return v1

    :cond_8
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    if-eqz v3, :cond_a

    sget-object v2, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_9

    return v4

    :cond_9
    return v1

    :cond_a
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    if-eqz v3, :cond_c

    sget-object v2, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_b

    return v4

    :cond_b
    return v1

    :cond_c
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/TypeParameter;

    if-eqz v3, :cond_e

    sget-object v2, Lorg/eclipse/jdt/core/dom/TypeParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_d

    return v4

    :cond_d
    return v1

    :cond_e
    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    if-eqz v3, :cond_10

    sget-object v2, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_f

    return v4

    :cond_f
    return v1

    :cond_10
    instance-of v2, v2, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    if-eqz v2, :cond_11

    sget-object v2, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_11

    return v4

    :cond_11
    return v1
.end method

.method public isVar()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedBelow10()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->isVarType:Z

    return v0
.end method

.method public memSize()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->identifier:Ljava/lang/String;

    const-string v1, "MISSING"

    const/16 v2, 0x38

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    return v2
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 10

    const-string v0, "<"

    const-string v1, "Invalid identifier : >"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v2, v2, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v7, 0x2f0000

    :try_start_0
    iput-wide v7, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v7, 0x310000

    iput-wide v7, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    array-length v7, v7

    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifier()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v7, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setVar(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedBelow10()V

    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->VAR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/SimpleName;->isVarType:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/SimpleName;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->memSize()I

    move-result v0

    return v0
.end method
