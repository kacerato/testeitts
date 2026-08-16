.class Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;
.super Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeAnnotationCompleter"
.end annotation


# instance fields
.field proxies:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->proxies:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public deproxyTypeCompoundList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->compound:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-direct {v3, v2, v1}, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;-><init>(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->classFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->proxies:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->deproxyTypeCompoundList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    throw v0
.end method
