.class public Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DexIndexedConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/DexIndexedConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardingConsumer"
.end annotation


# static fields
.field private static final b:Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;


# instance fields
.field private final a:Lcom/android/tools/r8/DexIndexedConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;)V

    sput-object v0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->b:Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/DexIndexedConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/DexIndexedConsumer;

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->b:Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;

    return-object v0
.end method


# virtual methods
.method public accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/tools/r8/ByteDataView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexIndexedConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/ProgramConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
