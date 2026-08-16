.class public final Lcom/android/tools/r8/internal/f10;
.super Lcom/android/tools/r8/internal/A10;
.source "SourceFile"


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/A10;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Wl0;
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/android/tools/r8/internal/A10;->c:J

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p2, Lcom/android/tools/r8/internal/f10;

    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/f10;-><init>(IJ)V

    return-object p2
.end method

.method public final a(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/A10;->c:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
