.class public final Lcom/android/tools/r8/internal/bg;
.super Lcom/android/tools/r8/internal/gg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/gg;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/gg;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->z4:Lcom/android/tools/r8/graph/F1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/F1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/gg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/gg;->b:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    iget-wide p3, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/tools/r8/internal/gm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/gm0;-><init>(I)V

    return-object p2

    :cond_0
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method
