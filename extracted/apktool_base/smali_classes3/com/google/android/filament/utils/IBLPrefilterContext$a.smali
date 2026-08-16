.class public Lcom/google/android/filament/utils/IBLPrefilterContext$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/IBLPrefilterContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/IBLPrefilterContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext$a;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/IBLPrefilterContext$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/IBLPrefilterContext;->c(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext$a;->a:J

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/utils/IBLPrefilterContext$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed EquirectangularToCubemap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/Texture;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/utils/IBLPrefilterContext$a;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/utils/IBLPrefilterContext;->e(JJ)J

    move-result-wide v0

    new-instance p1, Lcom/google/android/filament/Texture;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/Texture;-><init>(J)V

    return-object p1
.end method
