.class public LW5/a$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/g;


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
        "Ljava/lang/Object;",
        "LU/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LW5/a$b$a;


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

    iput-object p1, p0, LW5/a$b$a$b;->b:LW5/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;LV/p;LC/a;Z)Z
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
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "LV/p<",
            "Landroid/graphics/Bitmap;",
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
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    iget-object p1, p0, LW5/a$b$a$b;->b:LW5/a$b$a;

    iget-object p1, p1, LW5/a$b$a;->b:LW5/a$b;

    iget-object p1, p1, LW5/a$b;->e:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

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

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, LW5/a$b$a$b;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;LV/p;LC/a;Z)Z

    move-result p1

    return p1
.end method
