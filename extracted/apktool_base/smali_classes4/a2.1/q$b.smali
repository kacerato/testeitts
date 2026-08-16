.class public La2/q$b;
.super La2/q$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:La2/q$d;


# direct methods
.method public constructor <init>(La2/q$d;)V
    .locals 0

    invoke-direct {p0}, La2/q$i;-><init>()V

    iput-object p1, p0, La2/q$b;->b:La2/q$d;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Matrix;LZ1/b;ILandroid/graphics/Canvas;)V
    .locals 8
    .param p2    # LZ1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v0}, La2/q$d;->h(La2/q$d;)F

    move-result v6

    iget-object v0, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v0}, La2/q$d;->i(La2/q$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v0}, La2/q$d;->b(La2/q$d;)F

    move-result v0

    iget-object v1, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v1}, La2/q$d;->c(La2/q$d;)F

    move-result v1

    iget-object v2, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v2}, La2/q$d;->d(La2/q$d;)F

    move-result v2

    iget-object v3, p0, La2/q$b;->b:La2/q$d;

    invoke-static {v3}, La2/q$d;->e(La2/q$d;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, LZ1/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
