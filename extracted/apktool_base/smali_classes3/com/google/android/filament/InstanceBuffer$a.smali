.class public Lcom/google/android/filament/InstanceBuffer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/InstanceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/InstanceBuffer$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/InstanceBuffer$a$a;

.field public final b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/filament/InstanceBuffer;->d(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/InstanceBuffer$a;->b:J

    new-instance p1, Lcom/google/android/filament/InstanceBuffer$a$a;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/InstanceBuffer$a$a;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/InstanceBuffer$a;->a:Lcom/google/android/filament/InstanceBuffer$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/InstanceBuffer;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/InstanceBuffer;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/InstanceBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/InstanceBuffer;-><init>(JLcom/google/android/filament/l;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create InstanceBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(JII)Lcom/google/android/filament/InstanceBuffer$a;
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer$a;->b:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/InstanceBuffer;->c(JJII)I

    move-result p1

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public c(Ljava/nio/Buffer;I)Lcom/google/android/filament/InstanceBuffer$a;
    .locals 3
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer$a;->b:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/android/filament/InstanceBuffer;->b(JLjava/nio/Buffer;II)I

    move-result p1

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
