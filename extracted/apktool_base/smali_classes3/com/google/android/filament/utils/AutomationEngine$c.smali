.class public Lcom/google/android/filament/utils/AutomationEngine$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/AutomationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/google/android/filament/View;

.field public b:Lcom/google/android/filament/Renderer;

.field public c:[Lcom/google/android/filament/MaterialInstance;

.field public d:Lcom/google/android/filament/LightManager;

.field public e:Lcom/google/android/filament/Scene;

.field public f:Lcom/google/android/filament/IndirectLight;

.field public g:I
    .annotation build Lcom/google/android/filament/g;
    .end annotation
.end field

.field public h:[I
    .annotation build Lcom/google/android/filament/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
