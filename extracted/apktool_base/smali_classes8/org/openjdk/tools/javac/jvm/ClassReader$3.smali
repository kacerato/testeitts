.class Lorg/openjdk/tools/javac/jvm/ClassReader$3;
.super Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;->initAttributeReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "bad.constant.value"

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1
.end method

.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 4

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$26;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->checkType(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/TypeTag;->checkRange(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$3;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p2, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "bad.constant.range"

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
