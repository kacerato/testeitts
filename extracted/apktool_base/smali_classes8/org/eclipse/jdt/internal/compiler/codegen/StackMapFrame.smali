.class public Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPEND_FRAME:I = 0x2

.field public static final CHOP_FRAME:I = 0x1

.field public static final FULL_FRAME:I = 0x4

.field public static final SAME_FRAME:I = 0x0

.field public static final SAME_FRAME_EXTENDED:I = 0x3

.field public static final SAME_LOCALS_1_STACK_ITEMS:I = 0x5

.field public static final SAME_LOCALS_1_STACK_ITEMS_EXTENDED:I = 0x6

.field public static final USED:I = 0x1


# instance fields
.field public localIndex:I

.field public locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

.field private numberOfDifferentLocals:I

.field private numberOfLocals:I

.field public numberOfStackItems:I

.field public pc:I

.field public stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

.field public tagBits:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfLocals:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return-void
.end method

.method private equals(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private print([Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private printFrame(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V
    .locals 5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {p0, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->print([Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {p0, v4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->print([Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, v2, v3, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "[pc : {0} locals: {1} stack items: {2}\nlocals: {3}\nstack: {4}\n]"

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    .line 3
    aput-object p1, v2, v1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v0

    .line 6
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    if-ne v3, v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 7
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    aput-object p1, v0, v1

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "info cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11
    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    .line 12
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v3, v2, v1

    .line 13
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_0

    .line 14
    :cond_0
    array-length v2, v0

    .line 15
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    if-ne v3, v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 16
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v2, v0, v1

    :goto_0
    return-void
.end method

.method public duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v0, v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;-><init>(I)V

    const/4 v2, -0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfLocals:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v4

    aput-object v4, v5, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    if-eqz v0, :cond_4

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    :goto_2
    if-lt v2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method public getFrameType(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getOffsetDelta(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/16 v2, 0x3f

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-gt v0, v2, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 p1, 0x4

    return p1

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    if-gt v0, v2, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    :goto_2
    return p1

    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getIndexOfDifferentLocals(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getNumberOfLocals()I
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfLocals:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v1, v0, :cond_2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfLocals:I

    return v2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getOffsetDelta(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    return p1

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :goto_0
    return p1
.end method

.method public numberOfDifferentLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v2

    :cond_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v3, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    array-length v5, v3

    :goto_0
    if-nez v4, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    array-length v6, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    move-result v7

    const v8, 0x7fffffff

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x1

    if-nez v1, :cond_8

    if-eqz v7, :cond_1e

    move v1, v2

    :goto_2
    if-ge v2, v6, :cond_7

    if-lt v1, v7, :cond_4

    goto :goto_4

    :cond_4
    aget-object v3, v4, v2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    if-eq v3, v10, :cond_5

    if-eq v3, v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v11

    goto :goto_2

    :cond_6
    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v8

    :cond_7
    :goto_4
    move v2, v7

    goto/16 :goto_13

    :cond_8
    if-nez v7, :cond_d

    neg-int v4, v1

    move v6, v2

    :goto_5
    if-ge v2, v5, :cond_c

    if-lt v6, v1, :cond_9

    goto :goto_7

    :cond_9
    aget-object v7, v3, v2

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v7

    if-eq v7, v10, :cond_a

    if-eq v7, v9, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v11

    goto :goto_5

    :cond_b
    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v8

    :cond_c
    :goto_7
    move v2, v4

    goto/16 :goto_13

    :cond_d
    move v12, v2

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_8
    if-ge v12, v6, :cond_16

    if-lt v13, v7, :cond_e

    goto :goto_b

    :cond_e
    aget-object v2, v4, v12

    if-eqz v2, :cond_10

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v11

    if-eq v11, v10, :cond_f

    if-eq v11, v9, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v12, v12, 0x1

    :cond_10
    :goto_9
    if-ge v14, v5, :cond_14

    if-ge v15, v1, :cond_14

    aget-object v11, v3, v14

    if-eqz v11, :cond_12

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v8

    if-eq v8, v10, :cond_11

    if-eq v8, v9, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v14, v14, 0x1

    :cond_12
    :goto_a
    invoke-direct {v0, v11, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->equals(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-ne v14, v12, :cond_13

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const v8, 0x7fffffff

    const/4 v11, 0x1

    goto :goto_8

    :cond_13
    const v8, 0x7fffffff

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v8

    :cond_14
    if-eqz v2, :cond_15

    const/4 v2, 0x1

    add-int/2addr v12, v2

    const/4 v2, 0x1

    goto :goto_c

    :cond_15
    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v8

    :cond_16
    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-ge v13, v7, :cond_1a

    :goto_d
    if-ge v12, v6, :cond_1e

    if-lt v13, v7, :cond_17

    goto :goto_13

    :cond_17
    aget-object v1, v4, v12

    if-nez v1, :cond_18

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v8

    :cond_18
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v1

    if-eq v1, v10, :cond_19

    if-eq v1, v9, :cond_19

    :goto_e
    const/4 v1, 0x1

    goto :goto_f

    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :goto_f
    add-int/2addr v12, v1

    const v8, 0x7fffffff

    goto :goto_d

    :cond_1a
    if-ge v15, v1, :cond_1e

    neg-int v2, v2

    :goto_10
    if-ge v14, v5, :cond_1e

    if-lt v15, v1, :cond_1b

    goto :goto_13

    :cond_1b
    aget-object v4, v3, v14

    if-nez v4, :cond_1c

    const v6, 0x7fffffff

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v6

    :cond_1c
    const v6, 0x7fffffff

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v4

    if-eq v4, v10, :cond_1d

    if-eq v4, v9, :cond_1d

    :goto_11
    const/4 v4, 0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :goto_12
    add-int/2addr v14, v4

    goto :goto_10

    :cond_1e
    :goto_13
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals:I

    return v2
.end method

.method public putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public replaceWithElementType()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->replaceWithElementType()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->printFrame(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
