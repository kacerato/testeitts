.class public abstract Lcom/android/tools/r8/ir/optimize/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;

.field public final b:Lcom/android/tools/r8/internal/YV;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/YV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/j0;->a:Lcom/android/tools/r8/internal/xw0;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/ir/optimize/j0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/ir/optimize/k0;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p2

    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/ir/optimize/k0;-><init>(Lcom/android/tools/r8/internal/xw0;ILcom/android/tools/r8/internal/YV;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/ir/optimize/l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/l0;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Z
.end method
