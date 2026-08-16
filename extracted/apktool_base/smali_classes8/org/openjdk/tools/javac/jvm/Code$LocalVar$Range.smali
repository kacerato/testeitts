.class Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code$LocalVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Range"
.end annotation


# instance fields
.field length:C

.field start_pc:C

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Code$LocalVar;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->this$0:Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0xffff

    .line 2
    iput-char p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    .line 3
    iput-char p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;C)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->this$0:Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0xffff

    .line 5
    iput-char p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    .line 6
    iput-char p2, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;CC)V
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->this$0:Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-char p2, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    .line 9
    iput-char p3, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    return-void
.end method


# virtual methods
.method public closed()Z
    .locals 2

    iget-char v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-char v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    iget-char v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startpc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
