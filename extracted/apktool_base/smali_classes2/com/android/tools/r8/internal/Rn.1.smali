.class public Lcom/android/tools/r8/internal/Rn;
.super Lcom/android/tools/r8/internal/Pn;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Rn;

    new-instance v1, Lcom/android/tools/r8/internal/EO0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EO0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Rn;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Pn;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Pn;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static k()Lcom/android/tools/r8/internal/Rn;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Rn;

    new-instance v1, Lcom/android/tools/r8/internal/Wz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wz0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Rn;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Qn;->a:Lcom/android/tools/r8/internal/Qn;

    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    return-object p1
.end method
