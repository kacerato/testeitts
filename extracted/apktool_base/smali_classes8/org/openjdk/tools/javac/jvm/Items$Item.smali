.class abstract Lorg/openjdk/tools/javac/jvm/Items$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Item"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;

.field typecode:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;I)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    return-void
.end method


# virtual methods
.method public coerce(I)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 4

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    .line 3
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    if-le v1, v0, :cond_1

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, 0x85

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :cond_2
    if-eq p1, v1, :cond_3

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    add-int/lit16 v1, p1, 0x8c

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public coerce(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 0

    .line 8
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(I)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    return-object p1
.end method

.method public drop()V
    .locals 0

    return-void
.end method

.method public duplicate()V
    .locals 0

    return-void
.end method

.method public invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public mkCond()Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    return-object v0
.end method

.method public stash(I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    return-void
.end method

.method public store()V
    .locals 3

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store unsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public width()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
