.class public Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IStackMapFrame;


# static fields
.field private static final EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;


# instance fields
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

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->offsetDelta:I

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->numberOfLocals:I

    const/4 v3, 0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    if-eqz v2, :cond_1

    new-array v3, v2, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    add-int/2addr v5, p3

    invoke-direct {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v4, v5, v3

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->numberOfStackItems:I

    if-eqz v2, :cond_3

    new-array v1, v2, [Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_2
    if-lt v0, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v1, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    aput-object v1, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->sizeInBytes()I

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->EMPTY_LOCALS_OR_STACK_ITEMS:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    :goto_3
    return-void
.end method


# virtual methods
.method public getFrameType()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getLocals()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->locals:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-object v0
.end method

.method public getNumberOfLocals()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->numberOfLocals:I

    return v0
.end method

.method public getNumberOfStackItems()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->numberOfStackItems:I

    return v0
.end method

.method public getOffsetDelta()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->offsetDelta:I

    return v0
.end method

.method public getStackItems()[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->stackItems:[Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;

    return-object v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->readOffset:I

    return v0
.end method
