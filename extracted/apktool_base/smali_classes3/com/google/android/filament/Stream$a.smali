.class public Lcom/google/android/filament/Stream$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Stream$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Stream$a$a;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Stream;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Stream$a;->b:J

    new-instance v2, Lcom/google/android/filament/Stream$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Stream$a$a;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/Stream$a;->a:Lcom/google/android/filament/Stream$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Stream;
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Stream$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Stream;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Stream;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/filament/Stream;-><init>(JLcom/google/android/filament/Engine;)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)Lcom/google/android/filament/Stream$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Stream$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->b(JI)V

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/filament/Stream$a;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/o;->a()Lcom/google/android/filament/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/o;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/Stream$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->c(JLjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)Lcom/google/android/filament/Stream$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Stream$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->d(JI)V

    return-object p0
.end method
