.class public final Lcom/android/tools/r8/internal/Du0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/FE;

.field public final b:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Du0;->a:Lcom/android/tools/r8/internal/FE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Du0;->b:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/Du0;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Du0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Du0;->a:Lcom/android/tools/r8/internal/FE;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Du0;->a:Lcom/android/tools/r8/internal/FE;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Du0;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Du0;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Du0;->a:Lcom/android/tools/r8/internal/FE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Du0;->b:Lcom/android/tools/r8/internal/xw0;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
