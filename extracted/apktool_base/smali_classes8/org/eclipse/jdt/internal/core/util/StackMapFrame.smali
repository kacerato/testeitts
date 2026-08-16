.class public Lorg/eclipse/jdt/internal/core/util/StackMapFrame;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IStackMapFrame;


# static fields
.field private static final EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;


# instance fields
.field private frameType:I

.field private locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

.field private numberOfLocals:I

.field private numberOfStackItems:I

.field private offsetDelta:I

.field private readOffset:I

.field private stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->frameType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_6

    add-int/lit8 v1, v1, -0x40

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    new-array v1, v3, [Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    add-int/2addr p3, v3

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v1, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    const/4 v2, 0x5

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    if-eqz v1, :cond_2

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/2addr v4, p3

    invoke-direct {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v3, v4, v2

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    if-eqz v1, :cond_4

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_2
    if-lt v0, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/lit16 v1, v1, -0xfb

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_3
    if-lt v0, v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    new-array v1, v3, [Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    add-int/2addr p3, v2

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v1, p1, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    :cond_6
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xf7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrameType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->frameType:I

    return v0
.end method

.method public getLocals()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-object v0
.end method

.method public getNumberOfLocals()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfLocals:I

    return v0
.end method

.method public getNumberOfStackItems()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->numberOfStackItems:I

    return v0
.end method

.method public getOffsetDelta()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->offsetDelta:I

    return v0
.end method

.method public getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-object v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapFrame;->readOffset:I

    return v0
.end method
