.class public LQ1/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:LQ1/a;


# direct methods
.method public constructor <init>(LQ1/a;)V
    .locals 0

    iput-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LQ1/a$a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {p1}, LQ1/a;->a(LQ1/a;)La2/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {p1}, LQ1/a;->b(LQ1/a;)La2/j;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    new-instance v0, La2/j;

    iget-object v1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {v1}, LQ1/a;->a(LQ1/a;)La2/o;

    move-result-object v1

    invoke-direct {v0, v1}, La2/j;-><init>(La2/o;)V

    invoke-static {p1, v0}, LQ1/a;->c(LQ1/a;La2/j;)La2/j;

    :cond_1
    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {p1}, LQ1/a;->d(LQ1/a;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, LQ1/a$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {p1}, LQ1/a;->b(LQ1/a;)La2/j;

    move-result-object p1

    iget-object v0, p0, LQ1/a$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, LQ1/a$a;->b:LQ1/a;

    invoke-static {p1}, LQ1/a;->b(LQ1/a;)La2/j;

    move-result-object p1

    invoke-virtual {p1, p2}, La2/j;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
