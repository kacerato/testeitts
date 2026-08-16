.class public Lcom/google/android/filament/utils/ImageDiff$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/ImageDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/filament/utils/ImageDiff$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Lcom/google/android/filament/utils/ImageDiff$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:I

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->LEAF:Lcom/google/android/filament/utils/ImageDiff$b;

    iput-object v0, p0, Lcom/google/android/filament/utils/ImageDiff$a;->a:Lcom/google/android/filament/utils/ImageDiff$b;

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->RGBA:Lcom/google/android/filament/utils/ImageDiff$c;

    iput-object v0, p0, Lcom/google/android/filament/utils/ImageDiff$a;->b:Lcom/google/android/filament/utils/ImageDiff$c;

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/filament/utils/ImageDiff$a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/utils/ImageDiff$a;->d:F

    iput v0, p0, Lcom/google/android/filament/utils/ImageDiff$a;->e:F

    return-void
.end method
