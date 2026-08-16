.class public final Lcom/google/android/material/internal/A$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/A;->d(Landroid/view/View;Lcom/google/android/material/internal/A$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/A$e;

.field public final synthetic b:Lcom/google/android/material/internal/A$f;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/A$e;Lcom/google/android/material/internal/A$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/A$c;->a:Lcom/google/android/material/internal/A$e;

    iput-object p2, p0, Lcom/google/android/material/internal/A$c;->b:Lcom/google/android/material/internal/A$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/A$c;->a:Lcom/google/android/material/internal/A$e;

    new-instance v1, Lcom/google/android/material/internal/A$f;

    iget-object v2, p0, Lcom/google/android/material/internal/A$c;->b:Lcom/google/android/material/internal/A$f;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/A$f;-><init>(Lcom/google/android/material/internal/A$f;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/A$e;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/A$f;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
