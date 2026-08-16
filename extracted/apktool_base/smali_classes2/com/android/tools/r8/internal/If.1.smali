.class public Lcom/android/tools/r8/internal/If;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/origin/Origin;

.field public final c:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/MethodPosition;)V
    .locals 2

    const-string v0, "Absent Code attribute in method that is not native or abstract"

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/internal/If;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-object p3, p0, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    .line 13
    iput-object p4, p0, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
