.class public final synthetic Lcom/android/tools/r8/retrace/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceAsyncResult;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/retrace/RetraceAsync;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/RetraceAsync;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/D;->a:Lcom/android/tools/r8/retrace/RetraceAsync;

    iput-object p2, p0, Lcom/android/tools/r8/retrace/D;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/retrace/D;->c:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-void
.end method


# virtual methods
.method public final getResult(Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/retrace/D;->a:Lcom/android/tools/r8/retrace/RetraceAsync;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/D;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/D;->c:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/retrace/RetraceAsync;->h(Lcom/android/tools/r8/retrace/RetraceAsync;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    return-object p1
.end method
