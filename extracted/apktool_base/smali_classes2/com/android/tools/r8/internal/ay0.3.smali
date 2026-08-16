.class public Lcom/android/tools/r8/internal/ay0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tn0;


# instance fields
.field public final a:Ljava/util/AbstractCollection;

.field public final b:Ljava/util/AbstractCollection;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    check-cast p2, Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ay0;->b:Ljava/util/AbstractCollection;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/ay0;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ay0;->b:Ljava/util/AbstractCollection;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ay0;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/ay0;->c:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ay0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ay0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/ay0;->c:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/ay0;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/ay0;->b:Ljava/util/AbstractCollection;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ay0;->b:Ljava/util/AbstractCollection;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ay0;->b:Ljava/util/AbstractCollection;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ay0;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
