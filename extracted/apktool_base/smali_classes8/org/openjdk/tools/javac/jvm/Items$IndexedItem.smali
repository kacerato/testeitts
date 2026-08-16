.class Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexedItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {p2}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public duplicate()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit8 v1, v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public stash(I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x5b

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public store()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit8 v1, v1, 0x4f

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indexed("

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

    const/4 v0, 0x2

    return v0
.end method
