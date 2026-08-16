.class public abstract Lcom/android/tools/r8/internal/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/x50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/yv;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/O0;)Lcom/android/tools/r8/internal/O0;
    .locals 2

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/internal/lW;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/LJ;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p0, v1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 12
    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ae;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ae;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/android/tools/r8/internal/x50;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/O0;

    .line 3
    :try_start_0
    iget p2, v0, Lcom/android/tools/r8/internal/Ae;->f:I

    if-nez p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 5
    throw p2
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 6
    iput-object p1, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 7
    throw p2
.end method
