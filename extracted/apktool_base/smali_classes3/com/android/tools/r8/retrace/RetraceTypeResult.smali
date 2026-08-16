.class public interface abstract Lcom/android/tools/r8/retrace/RetraceTypeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceResult<",
        "Lcom/android/tools/r8/retrace/RetraceTypeElement;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/retrace/RetraceResult;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic isEmpty()Z
.end method
