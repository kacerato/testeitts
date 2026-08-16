.class public abstract Lcom/android/tools/r8/internal/Op0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/android/tools/r8/internal/Np0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/Ip0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ip0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Kp0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Kp0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Lp0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Lp0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/Jp0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Jp0;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/tools/r8/internal/Np0;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/android/tools/r8/internal/Op0;->a:[Lcom/android/tools/r8/internal/Np0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/Mp0;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/yp0;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Mp0;->h:Ljava/util/IdentityHashMap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
