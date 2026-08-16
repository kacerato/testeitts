.class public final Lcom/android/tools/r8/internal/Xv0;
.super Lcom/android/tools/r8/internal/aw0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/aw0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(J)B
    .locals 0

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;J)B
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/bw0;->a(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final a(J[BJ)V
    .locals 0

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;JB)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->h:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/bw0;->a(Ljava/lang/Object;JB)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
