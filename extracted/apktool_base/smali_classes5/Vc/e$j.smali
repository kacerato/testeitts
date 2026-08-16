.class public LVc/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVc/e;->c0(Landroid/widget/ImageView;Ljava/lang/String;IILcom/bumptech/glide/load/engine/i;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LU/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/load/engine/i;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:LU/h;

.field public final synthetic f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/i;Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$strategy",
            "val$context",
            "val$url",
            "val$options",
            "val$imageView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVc/e$j;->b:Lcom/bumptech/glide/load/engine/i;

    iput-object p2, p0, LVc/e$j;->c:Landroid/content/Context;

    iput-object p3, p0, LVc/e$j;->d:Ljava/lang/String;

    iput-object p4, p0, LVc/e$j;->e:LU/h;

    iput-object p5, p0, LVc/e$j;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;LV/p;LC/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "LV/p<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "LC/a;",
            "Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LV/p;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "model",
            "target",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "LV/p<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object p1, p0, LVc/e$j;->b:Lcom/bumptech/glide/load/engine/i;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-eq p1, p2, :cond_0

    new-instance p1, LVc/e$j$a;

    invoke-direct {p1, p0}, LVc/e$j$a;-><init>(LVc/e$j;)V

    invoke-static {p1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;LV/p;LC/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, LVc/e$j;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;LV/p;LC/a;Z)Z

    move-result p1

    return p1
.end method
