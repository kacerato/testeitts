.class public final Lcom/google/android/gms/common/api/c;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/common/api/d;",
        ">;"
    }
.end annotation


# instance fields
.field public r:I

.field public s:Z

.field public t:Z

.field public final u:[Lcom/google/android/gms/common/api/p;

.field public final v:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/C;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/l;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->v:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/c;->r:I

    new-array p2, p2, [Lcom/google/android/gms/common/api/p;

    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->u:[Lcom/google/android/gms/common/api/p;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/p;

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->u:[Lcom/google/android/gms/common/api/p;

    aput-object p3, v0, p2

    new-instance v0, Lcom/google/android/gms/common/api/B;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/B;-><init>(Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/common/api/p;->c(Lcom/google/android/gms/common/api/p$a;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/d;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/common/api/d;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/p;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/google/android/gms/common/api/c;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/c;->t:Z

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/android/gms/common/api/c;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/c;->r:I

    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/common/api/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/c;->s:Z

    return p0
.end method

.method public static bridge synthetic E(Lcom/google/android/gms/common/api/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/c;->t:Z

    return p0
.end method

.method public static bridge synthetic F(Lcom/google/android/gms/common/api/c;)[Lcom/google/android/gms/common/api/p;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/c;->u:[Lcom/google/android/gms/common/api/p;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/google/android/gms/common/api/c;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/c;->r:I

    return p0
.end method

.method public static bridge synthetic y(Lcom/google/android/gms/common/api/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/c;->v:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/google/android/gms/common/api/c;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/c;->s:Z

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->u:[Lcom/google/android/gms/common/api/p;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/p;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/d;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/d;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->u:[Lcom/google/android/gms/common/api/p;

    new-instance v1, Lcom/google/android/gms/common/api/d;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/api/d;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/p;)V

    return-object v1
.end method
