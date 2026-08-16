.class public Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;
    }
.end annotation


# static fields
.field public static final IGNORE:I = 0x2

.field public static final LBRACE_MISSING:I = 0x1

.field public static final NO_FLAG:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDietRange([Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[[I
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;-><init>()V

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;->computeDietRange0([Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->getRanges()[[I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x3

    aput v0, p0, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private static computeDietRange0([Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;->computeDietRange0([Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;)V

    :cond_1
    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    array-length v4, v2

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_2

    goto :goto_4

    :cond_2
    aget-object v6, v2, v5

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;->containsIgnoredBody(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;->containsErrorInSignature(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-virtual {p1, v7, v6, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->addInterval(III)V

    goto :goto_3

    :cond_3
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    if-ne v7, v9, :cond_4

    goto :goto_2

    :cond_4
    move v8, v0

    :goto_2
    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-virtual {p1, v9, v6, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->addInterval(III)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v2, :cond_a

    array-length v4, v2

    move v5, v0

    :goto_5
    if-lt v5, v4, :cond_7

    goto :goto_7

    :cond_7
    aget-object v6, v2, v5

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v7, :cond_9

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    if-ne v7, v8, :cond_8

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-eq v9, v7, :cond_8

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p1, v9, v7, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->addInterval(III)V

    goto :goto_6

    :cond_8
    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {p1, v6, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->addInterval(II)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static containsErrorInSignature(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static containsIgnoredBody(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
