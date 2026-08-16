.class Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationDeproxy"
.end annotation


# instance fields
.field private requestingOwner:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field result:Lorg/openjdk/tools/javac/code/Attribute;

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

.field type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-void
.end method


# virtual methods
.method public deproxy(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    throw p1
.end method

.method public deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->resolvePossibleProxyType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->findAccessMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxy(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    return-object p1
.end method

.method public deproxyCompoundList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findAccessMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 8

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    if-nez v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-boolean v3, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->lintClassfile:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    iget-object v0, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "annotation.method.not.found"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "annotation.method.not.found.reason"

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v3, 0x401

    iget-object v7, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0

    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public resolvePossibleProxyType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :try_start_0
    check-cast p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$ProxyType;->resolve()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    throw p1

    :cond_1
    return-object p1
.end method

.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public visitArrayAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    new-array v0, v0, [Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lorg/openjdk/tools/javac/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxy(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move v2, v3

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Array;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, v1, v0}, Lorg/openjdk/tools/javac/code/Attribute$Array;-><init>(Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Attribute;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method public visitClassAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$ClassAttributeProxy;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->resolvePossibleProxyType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Class;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Attribute$Class;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public visitCompoundAnnotationProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public visitEnumAttributeProxy(Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->resolvePossibleProxyType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_0
    move-object v1, v0

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    filled-new-array {v0, v6, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unknown.enum.constant.reason"

    invoke-virtual {v2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v0, v6, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "unknown.enum.constant"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v7, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance v8, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lorg/openjdk/tools/javac/util/Name;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v2, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-direct {v0, v7, v8}, Lorg/openjdk/tools/javac/code/Attribute$Enum;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v1, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, v1, v0}, Lorg/openjdk/tools/javac/code/Attribute$Enum;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lorg/openjdk/tools/javac/code/Attribute;

    :goto_3
    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
