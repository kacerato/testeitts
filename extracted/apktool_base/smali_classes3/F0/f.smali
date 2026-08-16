.class public abstract LF0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/data/DataHolder;
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:I
    .annotation build LC0/a;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/data/DataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    iput-object p1, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p2}, LF0/f;->n(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/CharArrayBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/google/android/gms/common/data/DataHolder;->B0(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->p(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)[B
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->t(Ljava/lang/String;II)[B

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    return v0
.end method

.method public e(Ljava/lang/String;)D
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->z0(Ljava/lang/String;II)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    instance-of v0, p1, LF0/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LF0/f;

    iget v0, p1, LF0/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, LF0/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, LF0/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, LF0/f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v0, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public f(Ljava/lang/String;)F
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->A0(Ljava/lang/String;II)F

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->b0(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)J
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->n0(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, LF0/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->v0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->x0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->y0(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public l()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, LF0/f;->b:I

    iget v1, p0, LF0/f;->c:I

    iget-object v2, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->v0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final n(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, LG0/A;->x(Z)V

    iput p1, p0, LF0/f;->b:I

    iget-object v0, p0, LF0/f;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->w0(I)I

    move-result p1

    iput p1, p0, LF0/f;->c:I

    return-void
.end method
