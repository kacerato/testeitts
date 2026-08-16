.class public final Lk2/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/u;->o(La2/o;La2/o;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)La2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/RectF;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    iput-object p1, p0, Lk2/u$b;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lk2/u$b;->b:Landroid/graphics/RectF;

    iput p3, p0, Lk2/u$b;->c:F

    iput p4, p0, Lk2/u$b;->d:F

    iput p5, p0, Lk2/u$b;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La2/d;La2/d;)La2/d;
    .locals 3
    .param p1    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lk2/u$b;->a:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, La2/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lk2/u$b;->b:Landroid/graphics/RectF;

    invoke-interface {p2, v0}, La2/d;->a(Landroid/graphics/RectF;)F

    move-result p2

    iget v0, p0, Lk2/u$b;->c:F

    iget v1, p0, Lk2/u$b;->d:F

    iget v2, p0, Lk2/u$b;->e:F

    invoke-static {p1, p2, v0, v1, v2}, Lk2/u;->l(FFFFF)F

    move-result p1

    new-instance p2, La2/a;

    invoke-direct {p2, p1}, La2/a;-><init>(F)V

    return-object p2
.end method
