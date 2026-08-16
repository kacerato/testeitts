.class public LG5/a$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG5/a;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LG5/a;


# direct methods
.method public constructor <init>(LG5/a;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$v",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, LG5/a$e;->d:LG5/a;

    iput-object p2, p0, LG5/a$e;->b:Landroid/view/View;

    iput-object p3, p0, LG5/a$e;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LG5/a$e;->d:LG5/a;

    invoke-static {p1}, LG5/a;->s(LG5/a;)I

    move-result p1

    iget-object v0, p0, LG5/a$e;->d:LG5/a;

    iget v1, v0, LG5/a;->S:I

    if-ne p1, v1, :cond_0

    new-instance p1, LG5/a$e$a;

    invoke-direct {p1, p0}, LG5/a$e$a;-><init>(LG5/a$e;)V

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, p1}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, LG5/a;->s(LG5/a;)I

    move-result p1

    iget-object v0, p0, LG5/a$e;->d:LG5/a;

    iget v1, v0, LG5/a;->T:I

    if-ne p1, v1, :cond_1

    invoke-static {v0}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    invoke-interface {p1}, LG5/a$k;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iget-object v0, p0, LG5/a$e;->b:Landroid/view/View;

    iget-object v1, p0, LG5/a$e;->c:Landroid/content/Context;

    sget-object v2, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v3, LG5/a$e$b;

    invoke-direct {v3, p0}, LG5/a$e$b;-><init>(LG5/a$e;)V

    invoke-static {p1, v0, v1, v2, v3}, Lt5/f;->L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V

    :cond_1
    :goto_0
    return-void
.end method
