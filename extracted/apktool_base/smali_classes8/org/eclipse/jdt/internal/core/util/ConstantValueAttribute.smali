.class public Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IConstantValueAttribute;


# instance fields
.field private constantPoolEntry:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

.field private constantValueIndex:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;->constantValueIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;->constantPoolEntry:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    return-void
.end method


# virtual methods
.method public getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;->constantPoolEntry:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    return-object v0
.end method

.method public getConstantValueIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;->constantValueIndex:I

    return v0
.end method
