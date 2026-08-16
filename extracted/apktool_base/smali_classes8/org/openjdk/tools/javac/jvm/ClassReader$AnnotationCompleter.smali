.class Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;
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
    name = "AnnotationCompleter"
.end annotation


# instance fields
.field final classFile:Lorg/openjdk/javax/tools/JavaFileObject;

.field final l:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;"
        }
    .end annotation
.end field

.field final sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

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

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_1
    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->classFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->classFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompoundList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v6, v5, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v8, 0x40000000020000L

    or-long/2addr v6, v8

    iput-wide v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v4, v5, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->forRemoval:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v3

    instance-of v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    if-ne v4, v5, :cond_0

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v6, 0x80000000000000L

    or-long/2addr v4, v6

    iput-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->annotationsPendingCompletion()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendAttributes(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ClassReader annotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
