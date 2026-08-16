.class public Lcom/google/android/filament/VertexBuffer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/VertexBuffer$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/VertexBuffer$b$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    new-instance v2, Lcom/google/android/filament/VertexBuffer$b$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/VertexBuffer$b$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/VertexBuffer$b;->a:Lcom/google/android/filament/VertexBuffer$b$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;)Lcom/google/android/filament/VertexBuffer$b;
    .locals 6
    .param p1    # Lcom/google/android/filament/VertexBuffer$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;
    .locals 7
    .param p1    # Lcom/google/android/filament/VertexBuffer$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/VertexBuffer;->a(JIIIII)V

    return-object p0
.end method

.method public c(I)Lcom/google/android/filament/VertexBuffer$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/VertexBuffer;->b(JI)V

    return-object p0
.end method

.method public d(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/VertexBuffer;->c(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/VertexBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/VertexBuffer;-><init>(JLcom/google/android/filament/v;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create VertexBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Z)Lcom/google/android/filament/VertexBuffer$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/VertexBuffer;->d(JZ)V

    return-object p0
.end method

.method public f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;
    .locals 3
    .param p1    # Lcom/google/android/filament/VertexBuffer$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/VertexBuffer;->e(JIZ)V

    return-object p0
.end method

.method public g(Lcom/google/android/filament/VertexBuffer$c;Z)Lcom/google/android/filament/VertexBuffer$b;
    .locals 2
    .param p1    # Lcom/google/android/filament/VertexBuffer$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->e(JIZ)V

    return-object p0
.end method

.method public h(I)Lcom/google/android/filament/VertexBuffer$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$b;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/VertexBuffer;->f(JI)V

    return-object p0
.end method
