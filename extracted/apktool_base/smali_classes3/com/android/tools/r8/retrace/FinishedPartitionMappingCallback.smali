.class public interface abstract Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/k;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/k;-><init>()V

    sput-object v0, Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;->a(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static empty()Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    return-object v0
.end method


# virtual methods
.method public abstract finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method
