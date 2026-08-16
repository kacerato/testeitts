.class public Lcom/google/android/filament/IndirectLight$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/IndirectLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndirectLight$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/IndirectLight$a$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/IndirectLight;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    new-instance v2, Lcom/google/android/filament/IndirectLight$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/IndirectLight$a$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/IndirectLight$a;->a:Lcom/google/android/filament/IndirectLight$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndirectLight;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/IndirectLight;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/IndirectLight;-><init>(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create IndirectLight"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(F)Lcom/google/android/filament/IndirectLight$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/IndirectLight;->e(JF)V

    return-object p0
.end method

.method public c(I[F)Lcom/google/android/filament/IndirectLight$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "3 bands SH, array must be at least 9 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bands must be 1, 2 or 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    array-length v0, p2

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "2 bands SH, array must be at least 4 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    array-length v0, p2

    if-lt v0, v1, :cond_5

    :goto_0
    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/IndirectLight;->f(JI[F)V

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "1 band SH, array must be at least 1 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$a;
    .locals 4
    .param p1    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndirectLight;->g(JJ)V

    return-object p0
.end method

.method public e(I[F)Lcom/google/android/filament/IndirectLight$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "3 bands SH, array must be at least 9 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bands must be 1, 2 or 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    array-length v0, p2

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "2 bands SH, array must be at least 4 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    array-length v0, p2

    if-lt v0, v1, :cond_5

    :goto_0
    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/IndirectLight;->h(JI[F)V

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "1 band SH, array must be at least 1 x float3"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$a;
    .locals 4
    .param p1    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndirectLight;->b(JJ)V

    return-object p0
.end method

.method public g([F)Lcom/google/android/filament/IndirectLight$a;
    .locals 11
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x9L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/IndirectLight$a;->b:J

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    const/4 v6, 0x4

    aget v6, p1, v6

    const/4 v7, 0x5

    aget v7, p1, v7

    const/4 v8, 0x6

    aget v8, p1, v8

    const/4 v9, 0x7

    aget v9, p1, v9

    const/16 v10, 0x8

    aget v10, p1, v10

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/IndirectLight;->i(JFFFFFFFFF)V

    return-object p0
.end method
