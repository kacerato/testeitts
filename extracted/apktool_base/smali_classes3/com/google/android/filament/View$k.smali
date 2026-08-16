.class public Lcom/google/android/filament/View$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$k;->a:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/filament/View$k;->b:I

    iput-boolean v0, p0, Lcom/google/android/filament/View$k;->c:Z

    return-void
.end method
