.class public Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ILineNumberAttribute;


# static fields
.field private static final NO_ENTRIES:[[I


# instance fields
.field private lineNumberTable:[[I

.field private lineNumberTableLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->NO_ENTRIES:[[I

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTableLength:I

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p2, v1, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTable:[[I

    const/16 v1, 0x8

    move v3, v0

    :goto_0
    if-lt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTable:[[I

    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    aput v5, v4, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTable:[[I

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, p1, v5, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->NO_ENTRIES:[[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTable:[[I

    :goto_1
    return-void
.end method


# virtual methods
.method public getLineNumberTable()[[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTable:[[I

    return-object v0
.end method

.method public getLineNumberTableLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LineNumberAttribute;->lineNumberTableLength:I

    return v0
.end method
