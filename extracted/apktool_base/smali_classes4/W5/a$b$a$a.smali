.class public LW5/a$b$a$a;
.super LV/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/a$b$a;->run()V
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
.field public final synthetic e:LW5/a$b$a;


# direct methods
.method public constructor <init>(LW5/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LW5/a$b$a$a;->e:LW5/a$b$a;

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

    iget-object p2, p0, LW5/a$b$a$a;->e:LW5/a$b$a;

    iget-object p2, p2, LW5/a$b$a;->b:LW5/a$b;

    iget-object p2, p2, LW5/a$b;->e:Lq7/a;

    invoke-virtual {p2}, Lq7/a;->p1()V

    new-instance p2, LW5/a;

    invoke-direct {p2, p1}, LW5/a;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, LW5/a$b$a$a;->e:LW5/a$b$a;

    iget-object p1, p1, LW5/a$b$a;->b:LW5/a$b;

    iget-object v0, p1, LW5/a$b;->f:Landroid/view/View;

    iget-object p1, p1, LW5/a$b;->g:Lr4/a$e;

    invoke-static {p2, v0, p1}, LW5/a;->p1(LW5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

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

    invoke-virtual {p0, p1, p2}, LW5/a$b$a$a;->d(Landroid/graphics/Bitmap;LW/f;)V

    return-void
.end method
