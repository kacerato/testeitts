.class public Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;


# instance fields
.field private index:I

.field private length:I

.field private startPC:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->startPC:I

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->length:I

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->length:I

    return v0
.end method

.method public getStartPC()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;->startPC:I

    return v0
.end method
