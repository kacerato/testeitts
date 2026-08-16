.class public Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;
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
    name = "AddExports"
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
.field name:[C

.field targets:[[C


# direct methods
.method public constructor <init>([C[[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->accept(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->addExports([C[[C)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getKind()Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    return-object v0
.end method

.method public getTargetModules()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->name:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;->targets:[[C

    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
