.class public final Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics:[I


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

.field private dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;>;"
        }
    .end annotation
.end field

.field private dependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field destructableFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;",
            ">;"
        }
    .end annotation
.end field

.field private doneCalled:Z

.field private factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/field/IField;",
            ">;"
        }
    .end annotation
.end field

.field protected hasUserDestructor:Z

.field isAbstract:Z

.field private isNdNode:Z

.field private offsetsComputed:Z

.field private ownerFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;",
            ">;"
        }
    .end annotation
.end field

.field refCounted:Z

.field private refCountedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->values()[Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->EXPLICIT:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->OWNED:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->REFCOUNTED:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics:[I

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependencies:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependents:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructableFields:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->refCountedFields:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->ownerFields:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destructing struct "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    .line 12
    const-class v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isNdNode:Z

    .line 13
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDependency(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V

    .line 15
    :cond_0
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isAbstract:Z

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isAbstract:Z

    if-nez p3, :cond_1

    .line 18
    :try_start_0
    const-class p3, Lorg/eclipse/jdt/internal/core/nd/Nd;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p3, v0}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The node class "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p2, " does not have an appropriate constructor for it to be used with Nd"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p3, 0x0

    .line 22
    :goto_0
    const-class v0, Lorg/eclipse/jdt/internal/core/nd/IDestructable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasUserDestructor:Z

    .line 23
    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;

    invoke-direct {p1, p0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-void
.end method

.method private areAllDependenciesResolved()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependencies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->areOffsetsComputed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private checkMutable()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->doneCalled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not modify a StructDef after done() has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeOffsets()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->refCounted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->REFCOUNTED:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->ownerFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->OWNED:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->EXPLICIT:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    if-eq v1, v0, :cond_5

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->EXPLICIT:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A class ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") that uses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deletion semantics may not inherit from a class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "that uses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " semantics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->offsetsComputed:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->doneCalled:Z

    if-eqz v1, :cond_6

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->computeOffsets()V

    goto :goto_4

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/field/IField;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->getAlignment()I

    move-result v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;->roundUpToNearestMultiple(II)I

    move-result v0

    invoke-interface {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->setOffset(I)V

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->getRecordSize()I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1
.end method

.method public static create(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "-TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V

    return-object v0
.end method

.method public static createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Z)V

    return-object v0
.end method

.method public static createAbstract(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "-TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;-><init>(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Z)V

    return-object v0
.end method

.method private hasIndirectDependent(Ljava/util/Set;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasIndirectDependent(Ljava/util/Set;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;)Lorg/eclipse/jdt/internal/core/nd/field/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TF;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/Field<",
            "TF;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/Field;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/Field;-><init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    .line 5
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->hasDestructor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructableFields:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkMutable()V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addChar()Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addDependency(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p1, v0, p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasIndirectDependent(Ljava/util/Set;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->dependents:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Circular dependency detected. Struct "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and struct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " both depend on one another"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkMutable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructableFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDouble()Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addFloat()Lorg/eclipse/jdt/internal/core/nd/field/FieldFloat;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldFloat;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldFloat;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addOwnerField(Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkMutable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->ownerFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addRefCountedField(Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkMutable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->refCountedFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    return-object v0
.end method

.method public addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    return-object v0
.end method

.method public areOffsetsComputed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->offsetsComputed:Z

    return v0
.end method

.method public checkNotMutable()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->offsetsComputed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call done() before using the struct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructableFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    goto :goto_0
.end method

.method public done()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->doneCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->doneCalled:Z

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->areAllDependenciesResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->computeOffsets()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not call done() more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    return-object v0
.end method

.method public getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-object v0
.end method

.method public getNumFields()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStructClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getStructName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDestructableFields()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->destructableFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->hasDestructableFields()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isNdNode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isNdNode:Z

    return v0
.end method

.method public isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$nd$field$StructDef$DeletionSemantics()[I

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->refCountedFields:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->ownerFields:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->superClass:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->deletionSemantics:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->EXPLICIT:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result p1

    return p1

    :cond_3
    return v3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;->hasReferences(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_5
    return v2
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkNotMutable()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useStandardRefCounting()Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->checkMutable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->refCounted:Z

    return-object p0
.end method
