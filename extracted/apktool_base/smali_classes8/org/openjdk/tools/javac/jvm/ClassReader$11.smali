.class Lorg/openjdk/tools/javac/jvm/ClassReader$11;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 4

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_2

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->access$002(Lorg/openjdk/tools/javac/jvm/ClassReader;Z)Z

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readTypeParams(I)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigp:I

    iget v3, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->siglimit:I

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->sigToType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->access$002(Lorg/openjdk/tools/javac/jvm/ClassReader;Z)Z

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->access$002(Lorg/openjdk/tools/javac/jvm/ClassReader;Z)Z

    throw p1

    :cond_2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$11;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readType(I)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object p1

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    :cond_3
    :goto_3
    return-void
.end method
