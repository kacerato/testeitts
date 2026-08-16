.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# static fields
.field public static NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# instance fields
.field public constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field public implicitConversion:I

.field public resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public statementEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementEnd:I

    return-void
.end method

.method public static computeNullStatus(II)I
    .locals 1

    and-int/lit8 v0, p1, 0x12

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x10

    :cond_0
    and-int/lit8 v0, p1, 0x24

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    and-int/lit8 p1, p1, 0x9

    if-eqz p1, :cond_2

    or-int/lit8 p0, p0, 0x8

    :cond_2
    return p0
.end method

.method private getAllInheritedMethods0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v2, v5, :cond_1

    return-void

    :cond_1
    aget-object p1, v4, v2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getAllInheritedMethods0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAllOriginalInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getAllInheritedMethods0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;

    if-nez v0, :cond_6

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p0

    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PrefixExpression;

    if-eqz p0, :cond_6

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_6

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static final isConstantValueRepresentable(Lorg/eclipse/jdt/internal/compiler/impl/Constant;II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    return v1

    :pswitch_3
    return v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-double v2, p0

    cmpl-double p0, p1, v2

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    return v1

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    return v1

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_6

    return v0

    :cond_6
    return v1

    :pswitch_a
    packed-switch p1, :pswitch_data_2

    :pswitch_b
    return v1

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    return v1

    :pswitch_d
    return v0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    float-to-double v2, p0

    cmpl-double p0, p1, v2

    if-nez p0, :cond_8

    return v0

    :cond_8
    return v1

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_9

    return v0

    :cond_9
    return v1

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    return v1

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_b

    return v0

    :cond_b
    return v1

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_c

    return v0

    :cond_c
    return v1

    :pswitch_13
    packed-switch p1, :pswitch_data_3

    :pswitch_14
    return v1

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_d

    return v0

    :cond_d
    return v1

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_e

    return v0

    :cond_e
    return v1

    :pswitch_17
    return v0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_f

    return v0

    :cond_f
    return v1

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_10

    return v0

    :cond_10
    return v1

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_11

    return v0

    :cond_11
    return v1

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_12

    return v0

    :cond_12
    return v1

    :pswitch_1c
    packed-switch p1, :pswitch_data_4

    :pswitch_1d
    return v1

    :pswitch_1e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-nez p0, :cond_13

    return v0

    :cond_13
    return v1

    :pswitch_1f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    long-to-float p0, v2

    cmpl-float p0, p1, p0

    if-nez p0, :cond_14

    return v0

    :cond_14
    return v1

    :pswitch_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double p0, p1, v2

    if-nez p0, :cond_15

    return v0

    :cond_15
    return v1

    :pswitch_21
    return v0

    :pswitch_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-nez p0, :cond_16

    return v0

    :cond_16
    return v1

    :pswitch_23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-nez p0, :cond_17

    return v0

    :cond_17
    return v1

    :pswitch_24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-nez p0, :cond_18

    return v0

    :cond_18
    return v1

    :pswitch_25
    packed-switch p1, :pswitch_data_5

    :pswitch_26
    return v1

    :pswitch_27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    if-ne p1, p0, :cond_19

    return v0

    :cond_19
    return v1

    :pswitch_28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1a

    return v0

    :cond_1a
    return v1

    :pswitch_29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-double v2, p0

    cmpl-double p0, p1, v2

    if-nez p0, :cond_1b

    return v0

    :cond_1b
    return v1

    :pswitch_2a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    return v1

    :pswitch_2b
    return v0

    :pswitch_2c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    if-ne p1, p0, :cond_1d

    return v0

    :cond_1d
    return v1

    :pswitch_2d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    if-ne p1, p0, :cond_1e

    return v0

    :cond_1e
    return v1

    :pswitch_2e
    packed-switch p1, :pswitch_data_6

    :pswitch_2f
    return v1

    :pswitch_30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    if-ne p1, p0, :cond_1f

    return v0

    :cond_1f
    return v1

    :pswitch_31
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_20

    return v0

    :cond_20
    return v1

    :pswitch_32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-double v2, p0

    cmpl-double p0, p1, v2

    if-nez p0, :cond_21

    return v0

    :cond_21
    return v1

    :pswitch_33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-nez p0, :cond_22

    return v0

    :cond_22
    return v1

    :pswitch_34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    if-ne p1, p0, :cond_23

    return v0

    :cond_23
    return v1

    :pswitch_35
    return v0

    :pswitch_36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    if-ne p1, p0, :cond_24

    return v0

    :cond_24
    return v1

    :pswitch_37
    packed-switch p1, :pswitch_data_7

    :pswitch_38
    return v1

    :pswitch_39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    if-ne p1, p0, :cond_25

    return v0

    :cond_25
    return v1

    :pswitch_3a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_26

    return v0

    :cond_26
    return v1

    :pswitch_3b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-double v2, p0

    cmpl-double p0, p1, v2

    if-nez p0, :cond_27

    return v0

    :cond_27
    return v1

    :pswitch_3c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-nez p0, :cond_28

    return v0

    :cond_28
    return v1

    :pswitch_3d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    if-ne p1, p0, :cond_29

    return v0

    :cond_29
    return v1

    :pswitch_3e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    if-ne p1, p0, :cond_2a

    return v0

    :cond_2a
    return v1

    :pswitch_3f
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_13
        :pswitch_a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    .line 1
    return-object p3
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public final checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v11, 0x1

    if-eqz v8, :cond_51

    if-nez v9, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    const/4 v12, 0x0

    if-ltz v0, :cond_1

    move v0, v11

    goto :goto_0

    :cond_1
    move v0, v12

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v13, 0x330000

    cmp-long v1, v1, v13

    if-ltz v1, :cond_2

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v10, :cond_3

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_4
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_a

    move v12, v0

    :cond_5
    if-eqz v10, :cond_6

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v0, v0, 0x4

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    add-int/2addr v0, v1

    iput v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->castTo(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_6
    if-nez v12, :cond_7

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    return v11

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoxedPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p1 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v11

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_a
    return v12

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    array-length v2, v1

    move v0, v12

    :goto_2
    if-lt v0, v2, :cond_d

    return v11

    :cond_d
    aget-object v3, v1, v0

    invoke-virtual {v6, v7, v3, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_e

    return v12

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x25

    const/16 v3, 0x24

    const/16 v4, 0x1004

    const/16 v5, 0x44

    if-eq v1, v5, :cond_45

    const/16 v15, 0x84

    if-eq v1, v15, :cond_43

    const/16 v15, 0x204

    if-eq v1, v15, :cond_40

    if-eq v1, v4, :cond_38

    const/16 v15, 0x2004

    if-eq v1, v15, :cond_40

    const v15, 0x8004

    if-eq v1, v15, :cond_35

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    if-eq v1, v5, :cond_22

    if-eq v1, v4, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v10, v9

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_11

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_11
    if-eqz v0, :cond_13

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v0, v0, v13

    if-gez v0, :cond_12

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v12

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v12

    :cond_13
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getAllOriginalInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-direct {v6, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getAllOriginalInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    array-length v3, v2

    array-length v4, v1

    move v5, v12

    :goto_3
    if-lt v5, v4, :cond_15

    :cond_14
    return v11

    :cond_15
    move v0, v12

    :goto_4
    if-lt v0, v3, :cond_16

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_16
    aget-object v7, v1, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v8, v2, v0

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_17

    aget-object v7, v1, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    aget-object v8, v2, v0

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_17

    aget-object v7, v1, v5

    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_17

    return v12

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v11, :cond_19

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    invoke-virtual/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_1a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_1a
    move-object v10, v8

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_1b

    return v12

    :cond_1b
    if-eqz v0, :cond_1d

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v0, v0, v13

    if-gez v0, :cond_1c

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v12

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v12

    :cond_1d
    return v11

    :cond_1e
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    :cond_1f
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_5
    if-lt v2, v1, :cond_20

    return v11

    :cond_20
    aget-object v3, v0, v2

    invoke-virtual {v6, v7, v3, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_21

    return v12

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_22
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v3, :cond_23

    if-eq v0, v2, :cond_23

    return v12

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    return v11

    :cond_24
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    if-eq v1, v5, :cond_32

    if-eq v1, v4, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v10, v9

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_25

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_25
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_26

    return v12

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    invoke-virtual/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_27

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_27
    if-eqz v0, :cond_29

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v0, v0, v13

    if-gez v0, :cond_28

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v12

    :cond_28
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-nez v0, :cond_29

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasIncompatibleSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v12

    :cond_29
    return v11

    :cond_2a
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_2c

    if-eqz v10, :cond_2b

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2b

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_2c
    invoke-virtual/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_2d
    return v12

    :cond_2e
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_2f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    :cond_2f
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    array-length v2, v1

    move v0, v12

    :goto_6
    if-lt v0, v2, :cond_30

    return v11

    :cond_30
    aget-object v3, v1, v0

    invoke-virtual {v6, v7, v3, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_31

    return v12

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_32
    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v11, :cond_34

    if-eqz v0, :cond_33

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    return v11

    :cond_34
    return v12

    :cond_35
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_7
    if-lt v2, v1, :cond_36

    return v12

    :cond_36
    aget-object v3, v0, v2

    invoke-virtual {v6, v7, v8, v3, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-eqz v3, :cond_37

    return v11

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_38
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-nez v4, :cond_3e

    instance-of v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_3b

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_8
    if-lt v2, v1, :cond_39

    goto :goto_a

    :cond_39
    aget-object v3, v0, v2

    invoke-virtual {v6, v7, v3, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_3a

    return v12

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3b
    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_9
    if-lt v2, v1, :cond_3c

    goto :goto_a

    :cond_3c
    aget-object v3, v0, v2

    invoke-virtual {v6, v7, v8, v3, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_3d

    return v12

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3e
    :goto_a
    if-nez v4, :cond_3f

    move v5, v11

    goto :goto_b

    :cond_3f
    move v5, v12

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_40
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_41

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    return v0

    :cond_41
    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_42

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_42
    invoke-virtual {v6, v7, v8, v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v0

    return v0

    :cond_43
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v9, v0, :cond_44

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_44
    return v12

    :cond_45
    invoke-static/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_46
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    if-eq v0, v5, :cond_4d

    if-eq v0, v4, :cond_49

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v11, :cond_48

    if-eq v0, v3, :cond_47

    if-eq v0, v2, :cond_47

    return v12

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    return v11

    :cond_48
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v11

    :cond_49
    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_4a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    :cond_4a
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_c
    if-lt v2, v1, :cond_4b

    return v11

    :cond_4b
    aget-object v3, v0, v2

    invoke-virtual {v6, v7, v3, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v12

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_4d
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_d

    :cond_4e
    invoke-virtual {v6, v7, v0, v1, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v0

    return v0

    :cond_4f
    :goto_d
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsNeedCheckCast()V

    return v11

    :cond_50
    return v12

    :cond_51
    :goto_e
    return v11
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    move-result p1

    return p1
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 11

    .line 1
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2
    iget-wide v4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v6, 0x100000000000000L

    and-long/2addr v6, v4

    cmp-long p4, v6, v0

    if-eqz p4, :cond_0

    return v2

    :cond_0
    const-wide/high16 v6, 0x80000000000000L

    and-long/2addr v4, v6

    cmp-long p4, v4, v0

    if-eqz p4, :cond_1

    move p4, v2

    goto :goto_0

    :cond_1
    move p4, v3

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 4
    iget-object v4, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    .line 5
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x20000

    and-int/2addr p4, v0

    if-nez p4, :cond_2

    const/4 v8, 0x3

    move-object v4, p2

    move-object v5, p1

    move-object v6, v10

    move-object v7, p0

    move-object v9, p3

    .line 6
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    .line 7
    invoke-virtual {p3, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    .line 9
    :cond_2
    invoke-virtual {p3, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p2, v10, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    return v2

    :cond_3
    if-eqz p4, :cond_4

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->dereferencingNullableExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return v2

    :cond_4
    return v3
.end method

.method public checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, p1, p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_0
    return-void
.end method

.method public checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 2

    invoke-static {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    return v1

    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    if-nez p5, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    return v1
.end method

.method public computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    const/16 v1, 0xb

    if-eq p2, v0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/16 v2, 0x400

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoboxing(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object p3, v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x200

    if-eq p3, v0, :cond_5

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v0, p3

    :cond_3
    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0x21

    if-le p2, v1, :cond_4

    move-object v0, p3

    :cond_4
    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 p2, p2, 0x4

    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    add-int/2addr p2, v1

    or-int/2addr p2, v2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2, p0, p3, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoboxing(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p1, v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result p1

    if-eq p1, v1, :cond_6

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    return-void

    :cond_6
    :goto_0
    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v0, 0x80

    const/4 v2, 0x1

    if-lt p1, v0, :cond_8

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoxedPrimitiveType()Z

    move-result p3

    if-nez p3, :cond_9

    move p1, v2

    :cond_9
    :goto_2
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    shl-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    or-int p1, p3, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    goto :goto_3

    :pswitch_2
    if-ne p1, v2, :cond_a

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    shl-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    or-int p1, p3, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    goto :goto_3

    :cond_a
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    add-int/lit16 p1, p1, 0xa0

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    :cond_b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public forcedToBeRaw(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z
    .locals 6

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isParameter()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v2, :cond_c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_1

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    :cond_2
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_c

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    :cond_3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getFileName()[C

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_4
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getFileName()[C

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    :cond_6
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_c

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    :cond_7
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->forcedToBeRaw(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->forcedToBeRaw(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_8
    return v1

    :cond_9
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->forcedToBeRaw(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_c
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 1

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p1, p3, :cond_0

    .line 4
    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/util/Messages;->ast_missingCode:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    if-eqz p5, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_2
    :goto_1
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_3
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p5, :cond_5

    if-nez p4, :cond_4

    if-eqz p3, :cond_5

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_5
    :goto_2
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V
    .locals 2

    const/16 v0, 0xb

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationAppendForType(I)V

    return-void
.end method

.method public generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V
    .locals 2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newStringContatenation()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    const/16 v1, 0xb

    if-eq p3, v1, :cond_0

    const/16 v1, 0xc

    if-eq p3, v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringValueOf(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p3, v1, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationDefaultConstructor()V

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringValueOf(I)V

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationStringConstructor()V

    return-void

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationDefaultConstructor()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationAppendForType(I)V

    return-void
.end method

.method public getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_0
    return-object v0
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCompactableOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isWidening(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueRepresentable(Lorg/eclipse/jdt/internal/compiler/impl/Constant;II)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public isExactMethodReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFunctionalType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isPolyExpression()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1
.end method

.method public isTrulyExpression()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTypeReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public markAsNonNull()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public nullAnnotatedVariableBinding(Z)Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0
.end method

.method public postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v2, v2, 0x4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    :goto_0
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 0

    return-object p0
.end method

.method public resolveExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public reusableJSRTarget()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    return-void
.end method

.method public setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    return-void
.end method

.method public statementExpression()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tagAsNeedCheckCast()V
    .locals 0

    return-void
.end method

.method public tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    return-void
.end method

.method public toTypeReference()Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 0

    return-object p0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 2
    return-void
.end method
