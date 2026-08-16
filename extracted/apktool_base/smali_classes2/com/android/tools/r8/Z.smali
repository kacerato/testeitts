.class public final Lcom/android/tools/r8/Z;
.super Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DexIndexedConsumer;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/Z;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/Z;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;)V

    return-void
.end method


# virtual methods
.method public final accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/Z;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/Z;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_classes"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".dex"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
