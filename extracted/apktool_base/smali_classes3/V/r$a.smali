.class public LV/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV/r;->l()LV/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV/r;


# direct methods
.method public constructor <init>(LV/r;)V
    .locals 0

    iput-object p1, p0, LV/r$a;->b:LV/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LV/r$a;->b:LV/r;

    invoke-virtual {p1}, LV/r;->r()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LV/r$a;->b:LV/r;

    invoke-virtual {p1}, LV/r;->q()V

    return-void
.end method
