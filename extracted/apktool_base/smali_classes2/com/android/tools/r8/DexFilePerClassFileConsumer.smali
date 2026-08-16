.class public interface abstract Lcom/android/tools/r8/DexFilePerClassFileConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramConsumer;
.implements Lcom/android/tools/r8/ByteBufferProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;,
        Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;,
        Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;
    }
.end annotation


# static fields
.field public static final SHOULD_COMBINE_SYNTHETIC_CLASSES:Z = true


# direct methods
.method public static emptyConsumer()Lcom/android/tools/r8/DexFilePerClassFileConsumer;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->a()Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/ByteDataView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexFilePerClassFileConsumer;->accept(Ljava/lang/String;[BLjava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Ljava/lang/String;[BLjava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string p2, "Deprecated use of DexFilePerClassFileConsumer::accept(..., byte[], ...)"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public bridge synthetic acquireByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/ByteBufferProvider;->acquireByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public combineSyntheticClassesWithPrimaryClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/ByteBufferProvider;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method
