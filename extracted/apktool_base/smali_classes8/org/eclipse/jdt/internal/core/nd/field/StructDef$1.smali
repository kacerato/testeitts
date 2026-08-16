.class Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

.field private final synthetic val$constructor:Ljava/lang/reflect/Constructor;

.field private final synthetic val$fullyQualifiedClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->val$fullyQualifiedClassName:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation

    const-string v0, "Error in AutoTypeFactory"

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isAbstract:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Attempting to instantiate abstract class"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->val$fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkNotMutable()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasUserDestructor:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/IDestructable;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IDestructable;->destruct()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    move-result-object v0

    return-object v0
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    return v0
.end method

.method public hasDestructor()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasUserDestructor:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasDestructableFields()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result p1

    return p1
.end method
