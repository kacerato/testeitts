.class public Lcom/google/android/filament/RenderTarget$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderTarget$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/RenderTarget$b$a;

.field public final b:J

.field public final c:[Lcom/google/android/filament/Texture;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/RenderTarget;->a()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/filament/Texture;

    iput-object v0, p0, Lcom/google/android/filament/RenderTarget$b;->c:[Lcom/google/android/filament/Texture;

    invoke-static {}, Lcom/google/android/filament/RenderTarget;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    new-instance v2, Lcom/google/android/filament/RenderTarget$b$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/RenderTarget$b$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/RenderTarget$b;->a:Lcom/google/android/filament/RenderTarget$b$a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/filament/RenderTarget$b;)[Lcom/google/android/filament/Texture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/RenderTarget$b;->c:[Lcom/google/android/filament/Texture;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/RenderTarget;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/RenderTarget;->b(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/RenderTarget;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/google/android/filament/RenderTarget;-><init>(JLcom/google/android/filament/RenderTarget$b;Lcom/google/android/filament/q;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create RenderTarget"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture$c;)Lcom/google/android/filament/RenderTarget$b;
    .locals 2
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderTarget;->c(JII)V

    return-object p0
.end method

.method public d(Lcom/google/android/filament/RenderTarget$a;I)Lcom/google/android/filament/RenderTarget$b;
    .locals 2
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderTarget;->d(JII)V

    return-object p0
.end method

.method public e(Lcom/google/android/filament/RenderTarget$a;I)Lcom/google/android/filament/RenderTarget$b;
    .locals 2
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderTarget;->e(JII)V

    return-object p0
.end method

.method public f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;
    .locals 4
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/RenderTarget$b;->c:[Lcom/google/android/filament/Texture;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderTarget;->f(JIJ)V

    return-object p0
.end method
