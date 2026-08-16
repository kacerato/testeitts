.class Lorg/openjdk/tools/javac/jvm/Items$StackItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;I)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->width()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x58

    goto :goto_0

    :cond_0
    const/16 v1, 0x57

    :goto_0
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public duplicate()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->width()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5c

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 0

    return-object p0
.end method

.method public stash(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$StackItem;->width()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/ByteCodes;->typecodeNames:[Ljava/lang/String;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result v0

    return v0
.end method
