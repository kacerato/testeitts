.class public final Lcom/android/tools/r8/internal/vY;
.super Lcom/android/tools/r8/internal/E00;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/E00;-><init>(Lcom/android/tools/r8/graph/H5;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vY;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/E00;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/vY;

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/E00;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/vY;

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/vY;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->b()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/vY;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
