.class public interface abstract Lcom/android/tools/r8/ProgramResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getProgramResources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method
