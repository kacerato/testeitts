.class Lcom/google/android/filament/View$InternalOnPickCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/android/filament/proguard/UsedByNative;
    value = "View.cpp"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalOnPickCallback"
.end annotation


# instance fields
.field public final b:Lcom/google/android/filament/View$l;

.field public final c:Lcom/google/android/filament/View$m;

.field mDepth:F
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "View.cpp"
    .end annotation
.end field

.field mFragCoordsX:F
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "View.cpp"
    .end annotation
.end field

.field mFragCoordsY:F
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "View.cpp"
    .end annotation
.end field

.field mFragCoordsZ:F
    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "View.cpp"
    .end annotation
.end field

.field mRenderable:I
    .annotation build Lcom/google/android/filament/g;
    .end annotation

    .annotation build Lcom/google/android/filament/proguard/UsedByNative;
        value = "View.cpp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/filament/View$l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/filament/View$m;

    invoke-direct {v0}, Lcom/google/android/filament/View$m;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->c:Lcom/google/android/filament/View$m;

    iput-object p1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->b:Lcom/google/android/filament/View$l;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->c:Lcom/google/android/filament/View$m;

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mRenderable:I

    iput v1, v0, Lcom/google/android/filament/View$m;->a:I

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mDepth:F

    iput v1, v0, Lcom/google/android/filament/View$m;->b:F

    iget-object v1, v0, Lcom/google/android/filament/View$m;->c:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsX:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsY:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsZ:F

    aput v3, v1, v2

    iget-object v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->b:Lcom/google/android/filament/View$l;

    invoke-interface {v1, v0}, Lcom/google/android/filament/View$l;->a(Lcom/google/android/filament/View$m;)V

    return-void
.end method
