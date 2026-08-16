.class public interface abstract Lcom/android/tools/r8/AndroidResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method

.method public abstract getAndroidResources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/AndroidResourceInput;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method
