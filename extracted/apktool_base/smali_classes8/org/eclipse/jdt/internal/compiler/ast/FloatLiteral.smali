.class public Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;
.source "SourceFile"


# instance fields
.field value:F


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>([CII)V

    return-void
.end method


# virtual methods
.method public computeConstant()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    const/16 v1, 0x5f

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->remove([CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    array-length v4, v3

    if-lt v1, v4, :cond_2

    goto :goto_1

    :cond_2
    aget-char v3, v3, v1

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x30

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_5

    const/16 v4, 0x58

    if-eq v3, v4, :cond_3

    const/16 v4, 0x70

    if-eq v3, v4, :cond_5

    const/16 v4, 0x78

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    return-void

    :pswitch_0
    if-eqz v2, :cond_5

    return-void

    :cond_3
    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;->value:F

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/FloatUtil;->valueOfHexFloatLiteral([C)F

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v0, v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;->value:F

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 1

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public literalType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/FloatLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
