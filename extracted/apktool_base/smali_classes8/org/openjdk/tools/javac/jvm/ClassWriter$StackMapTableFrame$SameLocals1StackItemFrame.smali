.class Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;
.super Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameLocals1StackItemFrame"
.end annotation


# instance fields
.field final offsetDelta:I

.field final stack:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->stack:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public getFrameType()I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf7

    :goto_0
    return v0
.end method

.method public write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lorg/openjdk/tools/javac/jvm/ClassWriter;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->getFrameType()I

    move-result v0

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter;->databuf:Lorg/openjdk/tools/javac/util/ByteBuffer;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->access$500(Lorg/openjdk/tools/javac/jvm/ClassWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " stack[0]="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->stack:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeStackMapType(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method
