.class Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;
.super Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChopFrame"
.end annotation


# instance fields
.field final frameType:I

.field final offsetDelta:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->frameType:I

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    return-void
.end method


# virtual methods
.method public getFrameType()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->frameType:I

    return v0
.end method

.method public write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " offset_delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
