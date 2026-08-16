.class Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompleterDeproxy"
.end annotation


# instance fields
.field proxyOn:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->proxyOn:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->proxyOn:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->proxyOn:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->target:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    if-eqz v2, :cond_2

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->proxyOn:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$CompleterDeproxy;->repeatable:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->setTarget(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->setRepeatable(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    return-void

    :goto_2
    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    throw v1
.end method
