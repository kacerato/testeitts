.class public LN9/a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN9/a$a$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN9/a$a$a;


# direct methods
.method public constructor <init>(LN9/a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LN9/a$a$a$a;->a:LN9/a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LN9/a$a$a$a;->a:LN9/a$a$a;

    iget-object v1, v0, LN9/a$a$a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v0, v0, LN9/a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz v0, :cond_0

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->h(II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
