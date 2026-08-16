.class abstract Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StackMapTableFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;,
        Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare([Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)I
    .locals 6

    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    const v2, 0x7fffffff

    if-gt v0, v1, :cond_4

    const/4 v1, -0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    array-length v1, p1

    goto :goto_0

    :cond_1
    array-length v1, p0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-static {v4, v5, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public static getInstance(Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;I[Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget p0, p0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    sub-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    array-length p1, v0

    array-length v2, p2

    if-ne p1, v2, :cond_4

    invoke-static {p2, v0, p3}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->compare([Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)I

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;

    aget-object p2, v1, v3

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;-><init>(ILorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_0
    array-length v2, v1

    if-nez v2, :cond_4

    invoke-static {p2, v0, p3}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->compare([Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)I

    move-result p3

    if-nez p3, :cond_1

    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;-><init>(I)V

    return-object p1

    :cond_1
    const/4 v2, -0x4

    if-ge v2, p3, :cond_3

    if-gez p3, :cond_3

    neg-int v1, p3

    new-array v1, v1, [Lorg/openjdk/tools/javac/code/Type;

    array-length p2, p2

    :goto_0
    array-length v2, v0

    if-ge p2, v2, :cond_2

    aget-object v2, v0, p2

    aput-object v2, v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v3, p1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;

    rsub-int p2, p3, 0xfb

    invoke-direct {p1, p2, p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;-><init>(II[Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_3
    if-lez p3, :cond_4

    const/4 p1, 0x4

    if-ge p3, p1, :cond_4

    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;

    rsub-int p2, p3, 0xfb

    invoke-direct {p1, p2, p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;-><init>(II)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;

    invoke-direct {p1, p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;-><init>(I[Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method public static isInt(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/TypeTag;->isStrictSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isInt(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isInt(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_THIS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p0

    return p0

    :cond_4
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_OBJECT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-eqz p2, :cond_6

    check-cast p0, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    iget p0, p0, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    check-cast p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/UninitializedType;->offset:I

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p2, p0, p1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0

    :cond_9
    :goto_2
    return v1
.end method


# virtual methods
.method public abstract getFrameType()I
.end method

.method public write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->getFrameType()I

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendByte(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " frame_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
