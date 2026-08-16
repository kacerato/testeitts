.class public LV/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV/f;->d()LV/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV/f;


# direct methods
.method public constructor <init>(LV/f;)V
    .locals 0

    iput-object p1, p0, LV/f$a;->b:LV/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LV/f$a;->b:LV/f;

    invoke-virtual {p1}, LV/f;->r()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LV/f$a;->b:LV/f;

    invoke-virtual {p1}, LV/f;->q()V

    return-void
.end method
