.class Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;
.super Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullFrame"
.end annotation


# instance fields
.field final locals:[Lorg/openjdk/tools/javac/code/Type;

.field final offsetDelta:I

.field final stack:[Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(I[Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public getFrameType()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nlocals="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v2, v2

    const-string v3, "]="

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " locals["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " nstack="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " stack["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
