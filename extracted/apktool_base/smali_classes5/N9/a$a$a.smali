.class public LN9/a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN9/a$a;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:LN9/a$a;


# direct methods
.method public constructor <init>(LN9/a$a;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gradient",
            "val$curveView"
        }
    .end annotation

    iput-object p1, p0, LN9/a$a$a;->d:LN9/a$a;

    iput-object p2, p0, LN9/a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iput-object p3, p0, LN9/a$a$a;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/16 v0, 0x162

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v4

    const/16 v1, 0x6e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v5

    new-instance v2, Lt5/j;

    iget-object v3, p0, LN9/a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v6, p0, LN9/a$a$a;->d:LN9/a$a;

    iget-object v6, v6, LN9/a$a;->b:LN9/a$b;

    invoke-direct {v2, v3, v6}, Lt5/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;LN9/a$b;)V

    new-instance v3, LN9/a$a$a$a;

    invoke-direct {v3, p0}, LN9/a$a$a$a;-><init>(LN9/a$a$a;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Lo4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    sget-object v3, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v6, LN9/a$a$a$b;

    invoke-direct {v6, p0, v0, v1}, LN9/a$a$a$b;-><init>(LN9/a$a$a;II)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-void
.end method
