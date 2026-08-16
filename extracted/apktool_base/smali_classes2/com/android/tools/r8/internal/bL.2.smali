.class public final Lcom/android/tools/r8/internal/bL;
.super Lcom/android/tools/r8/internal/dL;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dL;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bL;->i()Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bL;->i()Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/internal/bL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/bL;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bL;->i()Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bL;->i()Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/android/tools/r8/internal/dL;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Array must have size 1, but has size "

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
