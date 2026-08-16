.class Lorg/openjdk/tools/javac/jvm/Items$AssignItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssignItem"
.end annotation


# instance fields
.field lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/jvm/Items$Item;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget v0, p2, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    return-void
.end method

.method public duplicate()V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    return-void
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->stash(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public stash(I)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assign(lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;->lhs:Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->width()I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
