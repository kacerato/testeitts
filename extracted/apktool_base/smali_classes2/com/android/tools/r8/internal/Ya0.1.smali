.class public final Lcom/android/tools/r8/internal/Ya0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8CompilationMetadata;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:J
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "buildTimeNs"
    .end annotation
.end field

.field public final b:J
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "numberOfThreads"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/tools/r8/internal/Ya0;->a:J

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/tools/r8/internal/Ya0;->b:J

    return-void
.end method


# virtual methods
.method public final getBuildTimeInNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ya0;->a:J

    return-wide v0
.end method

.method public final getNumberOfThreads()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ya0;->b:J

    return-wide v0
.end method
