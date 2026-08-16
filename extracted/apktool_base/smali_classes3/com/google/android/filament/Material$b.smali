.class public Lcom/google/android/filament/Material$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/nio/Buffer;

.field public b:I

.field public c:I

.field public d:Lcom/google/android/filament/Material$b$a;

.field public e:Lcom/google/android/filament/Material$l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/Material$b;->c:I

    sget-object v0, Lcom/google/android/filament/Material$b$a;->LOW:Lcom/google/android/filament/Material$b$a;

    iput-object v0, p0, Lcom/google/android/filament/Material$b;->d:Lcom/google/android/filament/Material$b$a;

    sget-object v0, Lcom/google/android/filament/Material$l;->DEFAULT:Lcom/google/android/filament/Material$l;

    iput-object v0, p0, Lcom/google/android/filament/Material$b;->e:Lcom/google/android/filament/Material$l;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/filament/Material$b;->a:Ljava/nio/Buffer;

    iget v3, p0, Lcom/google/android/filament/Material$b;->b:I

    iget v4, p0, Lcom/google/android/filament/Material$b;->c:I

    iget-object p1, p0, Lcom/google/android/filament/Material$b;->d:Lcom/google/android/filament/Material$b$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object p1, p0, Lcom/google/android/filament/Material$b;->e:Lcom/google/android/filament/Material$l;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/Material;->a(JLjava/nio/Buffer;IIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/Material;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/Material;-><init>(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Material"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
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

    iput-object p1, p0, Lcom/google/android/filament/Material$b;->a:Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/android/filament/Material$b;->b:I

    return-object p0
.end method

.method public c(Lcom/google/android/filament/Material$b$a;)Lcom/google/android/filament/Material$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/Material$b;->d:Lcom/google/android/filament/Material$b$a;

    return-object p0
.end method

.method public d(I)Lcom/google/android/filament/Material$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/filament/Material$b;->c:I

    return-object p0
.end method

.method public e(Lcom/google/android/filament/Material$l;)Lcom/google/android/filament/Material$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/Material$b;->e:Lcom/google/android/filament/Material$l;

    return-object p0
.end method
