.class Lorg/openjdk/tools/javac/jvm/ClassReader$6;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$6;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$6;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, p2, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p1, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->skipInnerClasses()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readInnerClasses(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :goto_0
    return-void
.end method
