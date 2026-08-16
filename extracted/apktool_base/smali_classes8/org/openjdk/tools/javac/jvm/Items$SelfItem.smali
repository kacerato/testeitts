.class Lorg/openjdk/tools/javac/jvm/Items$SelfItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelfItem"
.end annotation


# instance fields
.field isSuper:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Z)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;->isSuper:Z

    return-void
.end method


# virtual methods
.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;->isSuper:Z

    if-eqz v0, :cond_0

    const-string v0, "super"

    goto :goto_0

    :cond_0
    const-string v0, "this"

    :goto_0
    return-object v0
.end method
