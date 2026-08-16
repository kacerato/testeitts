.class Lorg/openjdk/tools/javac/jvm/Items$LocalItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalItem"
.end annotation


# instance fields
.field reg:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;

.field type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;I)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {p2}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->type:Lorg/openjdk/tools/javac/code/Type;

    iput p3, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    return-void
.end method


# virtual methods
.method public incr(I)V
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    if-nez v0, :cond_0

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0x84

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1w(III)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v0, 0x60

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(I)Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->store()V

    :goto_1
    return-void
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1a

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1w(II)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public store()V
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3b

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1w(II)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localItem(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; reg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
