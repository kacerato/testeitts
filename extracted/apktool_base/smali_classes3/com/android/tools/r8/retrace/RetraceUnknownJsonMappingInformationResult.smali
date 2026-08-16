.class public interface abstract Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/RetraceUnknownMappingInformationElement;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/tools/r8/retrace/RetraceUnknownMappingInformationElement;",
            ">;"
        }
    .end annotation
.end method
