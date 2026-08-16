.class public final Lcom/android/tools/r8/internal/eJ;
.super Lcom/android/tools/r8/internal/hJ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/hJ;-><init>(Lcom/android/tools/r8/GlobalSyntheticsConsumer;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

.method public final accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p3, p0, Lcom/android/tools/r8/internal/hJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/hJ;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
