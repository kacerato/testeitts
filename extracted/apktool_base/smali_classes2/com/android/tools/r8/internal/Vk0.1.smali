.class public final Lcom/android/tools/r8/internal/Vk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/k3;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {p1}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/k3;->s()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/k3;

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/k3;->s()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/k3;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vk0;->a:Lcom/android/tools/r8/graph/k3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/Vk0;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Vk0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk0;->a:Lcom/android/tools/r8/graph/k3;

    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    iget-object v2, p1, Lcom/android/tools/r8/internal/Vk0;->a:Lcom/android/tools/r8/graph/k3;

    iget v2, v2, Lcom/android/tools/r8/graph/g;->c:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vk0;->a:Lcom/android/tools/r8/graph/k3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
