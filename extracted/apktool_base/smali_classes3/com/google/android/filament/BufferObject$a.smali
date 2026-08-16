.class public Lcom/google/android/filament/BufferObject$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/BufferObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/BufferObject$a$b;,
        Lcom/google/android/filament/BufferObject$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/BufferObject$a$b;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/BufferObject;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/BufferObject$a;->b:J

    new-instance v2, Lcom/google/android/filament/BufferObject$a$b;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/BufferObject$a$b;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/BufferObject$a;->a:Lcom/google/android/filament/BufferObject$a$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/BufferObject$a$a;)Lcom/google/android/filament/BufferObject$a;
    .locals 2
    .param p1    # Lcom/google/android/filament/BufferObject$a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/BufferObject$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/BufferObject;->a(JI)V

    return-object p0
.end method

.method public b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/BufferObject;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/BufferObject$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/BufferObject;->b(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/BufferObject;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/BufferObject;-><init>(JLcom/google/android/filament/d;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create BufferObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Lcom/google/android/filament/BufferObject$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/BufferObject$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/BufferObject;->c(JI)V

    return-object p0
.end method
