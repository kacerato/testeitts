.class public LT1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT1/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT1/a;


# direct methods
.method public constructor <init>(LT1/a;)V
    .locals 0

    iput-object p1, p0, LT1/a$a;->a:LT1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, LT1/a$a;->a:LT1/a;

    invoke-static {p1}, LT1/a;->a(LT1/a;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LT1/a$a;->a:LT1/a;

    invoke-static {p1}, LT1/a;->a(LT1/a;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, LT1/a;->b(LT1/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method
