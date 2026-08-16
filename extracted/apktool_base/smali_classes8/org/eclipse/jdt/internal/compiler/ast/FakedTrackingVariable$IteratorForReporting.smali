.class public Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IteratorForReporting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage:[I


# instance fields
.field private final atExit:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

.field private final scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private stage:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

.field private final varSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->values()[Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->AtExit:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfNotEnclosing:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfProcessed:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->OuterLess:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage:[I

    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/Scope;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->varSet:Ljava/util/Set;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->atExit:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->OuterLess:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->setUpForStage(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;)V

    return-void
.end method

.method private found(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->next:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    const/4 p1, 0x1

    return p1
.end method

.method private setUpForStage(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->varSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->stage:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$FakedTrackingVariable$IteratorForReporting$Stage()[I

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->stage:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected Stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->stage:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfProcessed:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->setUpForStage(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->InnerOfNotEnclosing:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->setUpForStage(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->varSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    :cond_5
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v3, :cond_6

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->found(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z

    move-result v0

    return v0

    :cond_6
    if-ne v1, v2, :cond_5

    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;->AtExit:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->setUpForStage(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting$Stage;)V

    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->atExit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->found(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->varSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->found(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->outerTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->found(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->next()Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable$IteratorForReporting;->next:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
