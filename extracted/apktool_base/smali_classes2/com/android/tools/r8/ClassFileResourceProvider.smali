.class public interface abstract Lcom/android/tools/r8/ClassFileResourceProvider;
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

.method public abstract getClassDescriptors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
.end method
