.class public Lcom/android/tools/r8/internal/U0;
.super Lcom/android/tools/r8/internal/Jl0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/V0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/V0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jl0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/LY;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U0;->a()Lcom/android/tools/r8/internal/LY;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/MY;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U0;->a()Lcom/android/tools/r8/internal/LY;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->g()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/internal/MY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U0;->a()Lcom/android/tools/r8/internal/LY;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/tools/r8/internal/LY;->a(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->c()I

    move-result v0

    return v0
.end method
