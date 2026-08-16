.class public Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddReads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
        ">;"
    }
.end annotation


# instance fields
.field targetModule:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->accept(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->addReads([C)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public getKind()Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    return-object v0
.end method

.method public getTarget()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;->targetModule:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    return v0
.end method
