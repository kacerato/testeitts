.class public Lcom/android/tools/r8/retrace/PartitionCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/PartitionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/retrace/b;

.field private b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field private c:Lcom/android/tools/r8/PartitionMapConsumer;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/retrace/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->a:Lcom/android/tools/r8/retrace/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;-><init>(Lcom/android/tools/r8/retrace/b;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/PartitionCommand;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->c:Lcom/android/tools/r8/PartitionMapConsumer;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/tools/r8/retrace/PartitionCommand;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->a:Lcom/android/tools/r8/retrace/b;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/tools/r8/retrace/PartitionCommand;-><init>(Lcom/android/tools/r8/retrace/b;Lcom/android/tools/r8/retrace/ProguardMapProducer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/retrace/o;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string v1, "PartitionMapConsumer not specified"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string v1, "ProguardMapSupplier not specified"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/retrace/PartitionCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->c:Lcom/android/tools/r8/PartitionMapConsumer;

    return-object p0
.end method

.method public setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/PartitionCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->b:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    return-object p0
.end method
