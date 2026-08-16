.class public final Lcom/android/tools/r8/internal/dA;
.super Lcom/android/tools/r8/internal/qV;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/eA;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eA;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/dA;->c:Lcom/android/tools/r8/internal/eA;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/qV;-><init>(Ljava/util/AbstractMap;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/cA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cA;-><init>(Lcom/android/tools/r8/internal/dA;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/dA;->c:Lcom/android/tools/r8/internal/eA;

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dA;->c:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    const/4 p1, 0x1

    return p1
.end method
