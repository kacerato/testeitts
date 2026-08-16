.class public final Lcom/android/tools/r8/internal/gJ;
.super Lcom/android/tools/r8/internal/hJ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DexFilePerClassFileConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/hJ;-><init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p3, p0, Lcom/android/tools/r8/internal/hJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final combineSyntheticClassesWithPrimaryClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
