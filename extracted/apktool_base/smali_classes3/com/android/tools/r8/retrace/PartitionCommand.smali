.class public Lcom/android/tools/r8/retrace/PartitionCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/PartitionCommand$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/retrace/b;

.field private final b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field private final c:Lcom/android/tools/r8/PartitionMapConsumer;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/ProguardMapProducer;Lcom/android/tools/r8/PartitionMapConsumer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->a:Lcom/android/tools/r8/retrace/b;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->c:Lcom/android/tools/r8/PartitionMapConsumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/ProguardMapProducer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/retrace/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/retrace/PartitionCommand;-><init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/ProguardMapProducer;Lcom/android/tools/r8/PartitionMapConsumer;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/PartitionCommand$Builder;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;

    new-instance v1, Lcom/android/tools/r8/retrace/b;

    invoke-direct {v1}, Lcom/android/tools/r8/retrace/b;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;-><init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/n;)V

    return-object v0
.end method


# virtual methods
.method public getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->a:Lcom/android/tools/r8/retrace/b;

    return-object v0
.end method

.method public getPartitionMapConsumer()Lcom/android/tools/r8/PartitionMapConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->c:Lcom/android/tools/r8/PartitionMapConsumer;

    return-object v0
.end method

.method public getProguardMapProducer()Lcom/android/tools/r8/retrace/ProguardMapProducer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionCommand;->b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    return-object v0
.end method
