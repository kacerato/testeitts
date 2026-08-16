.class public LW5/a$a;
.super LV/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/a;->s1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lq7/a;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lr4/a$e;


# direct methods
.method public constructor <init>(Lq7/a;Landroid/view/View;Lr4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$loadingBar",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    iput-object p1, p0, LW5/a$a;->e:Lq7/a;

    iput-object p2, p0, LW5/a$a;->f:Landroid/view/View;

    iput-object p3, p0, LW5/a$a;->g:Lr4/a$e;

    invoke-direct {p0}, LV/e;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Bitmap;LW/f;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LW/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "LW/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, LW5/a$a;->e:Lq7/a;

    invoke-virtual {p2}, Lq7/a;->p1()V

    new-instance p2, LW5/a;

    invoke-direct {p2, p1}, LW5/a;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, LW5/a$a;->f:Landroid/view/View;

    iget-object v0, p0, LW5/a$a;->g:Lr4/a$e;

    invoke-static {p2, p1, v0}, LW5/a;->p1(LW5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholder"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Object;LW/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LW/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, LW5/a$a;->d(Landroid/graphics/Bitmap;LW/f;)V

    return-void
.end method
