.class public Lcom/google/android/material/internal/u;
.super Lcom/google/android/material/internal/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/x;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/google/android/material/internal/u;
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/internal/x;->a(Landroid/view/View;)Lcom/google/android/material/internal/x;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/u;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/internal/x;->a:Lcom/google/android/material/internal/x$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/x$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/internal/x;->a:Lcom/google/android/material/internal/x$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/x$a;->h(Landroid/view/View;)V

    return-void
.end method
