.class Lorg/openjdk/tools/javac/jvm/Items$StaticItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StaticItem"
.end annotation


# instance fields
.field member:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Items;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitInvokestatic(ILorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xb2

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public store()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xb3

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;->member:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
