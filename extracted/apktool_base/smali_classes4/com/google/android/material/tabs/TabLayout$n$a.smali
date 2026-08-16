.class public Lcom/google/android/material/tabs/TabLayout$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$n;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout$n;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$n;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$n$a;->b:Lcom/google/android/material/tabs/TabLayout$n;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$n$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$n$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$n$a;->b:Lcom/google/android/material/tabs/TabLayout$n;

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$n$a;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout$n;->b(Lcom/google/android/material/tabs/TabLayout$n;Landroid/view/View;)V

    :cond_0
    return-void
.end method
