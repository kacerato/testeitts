.class public final Lcom/android/tools/r8/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final a:Lcom/android/tools/r8/ProgramResourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramResourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/h0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    return-void
.end method


# virtual methods
.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/h0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/h0;->a:Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResource;

    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/ResourceException;

    invoke-interface {v2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    const-string v2, "R8 does not support compiling DEX inputs"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method
