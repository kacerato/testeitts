.class public Lcom/google/android/filament/Skybox$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Skybox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Skybox$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Skybox$a$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Skybox;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    new-instance v2, Lcom/google/android/filament/Skybox$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Skybox$a$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/Skybox$a;->a:Lcom/google/android/filament/Skybox$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Skybox;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/Skybox;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/Skybox;-><init>(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Skybox"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(FFFF)Lcom/google/android/filament/Skybox$a;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->b(JFFFF)V

    return-object p0
.end method

.method public c([F)Lcom/google/android/filament/Skybox$a;
    .locals 6
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Skybox;->b(JFFFF)V

    return-object p0
.end method

.method public d(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/Skybox$a;
    .locals 4
    .param p1    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Skybox;->c(JJ)V

    return-object p0
.end method

.method public e(F)Lcom/google/android/filament/Skybox$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Skybox;->d(JF)V

    return-object p0
.end method

.method public f(I)Lcom/google/android/filament/Skybox$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Skybox;->e(JI)V

    return-object p0
.end method

.method public g(Z)Lcom/google/android/filament/Skybox$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Skybox$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Skybox;->f(JZ)V

    return-object p0
.end method
