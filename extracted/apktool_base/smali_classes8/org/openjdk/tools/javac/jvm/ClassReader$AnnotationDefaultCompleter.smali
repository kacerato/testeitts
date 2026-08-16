.class Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;
.super Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationDefaultCompleter"
.end annotation


# instance fields
.field final classFile:Lorg/openjdk/javax/tools/JavaFileObject;

.field final sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

.field final value:Lorg/openjdk/tools/javac/code/Attribute;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute;)V
    .locals 3

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->classFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->classFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v3, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v0, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxy(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v0

    iput-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ClassReader store default for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
