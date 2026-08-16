.class Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;
.super Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppendFrame"
.end annotation


# instance fields
.field final frameType:I

.field final locals:[Lorg/openjdk/tools/javac/code/Type;

.field final offsetDelta:I


# direct methods
.method public constructor <init>(II[Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->frameType:I

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public getFrameType()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->frameType:I

    return v0
.end method

.method public write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " locals["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
