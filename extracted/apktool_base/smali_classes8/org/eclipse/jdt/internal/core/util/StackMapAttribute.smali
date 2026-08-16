.class public Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IStackMapAttribute;


# static fields
.field private static final NO_ENTRIES:[B

.field private static final NO_FRAMES:[Lorg/eclipse/jdt/core/util/IStackMapFrame;


# instance fields
.field private bytes:[B

.field private frames:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

.field private numberOfEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IStackMapFrame;

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->NO_FRAMES:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->NO_ENTRIES:[B

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->numberOfEntries:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v3, v1, [Lorg/eclipse/jdt/core/util/IStackMapFrame;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->frames:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    const/16 v3, 0x8

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;

    add-int v6, p3, v3

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->frames:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    aput-object v5, v6, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/util/DefaultStackMapFrame;->sizeInBytes()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->NO_FRAMES:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->frames:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v3

    long-to-int p2, v3

    if-eqz v1, :cond_2

    add-int/2addr p3, v0

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->bytes:[B

    invoke-static {p1, p3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->NO_ENTRIES:[B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->bytes:[B

    :goto_2
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->bytes:[B

    return-object v0
.end method

.method public getNumberOfEntries()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->numberOfEntries:I

    return v0
.end method

.method public getStackMapFrame()[Lorg/eclipse/jdt/core/util/IStackMapFrame;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/StackMapAttribute;->frames:[Lorg/eclipse/jdt/core/util/IStackMapFrame;

    return-object v0
.end method
