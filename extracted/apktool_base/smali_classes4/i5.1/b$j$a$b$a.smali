.class public Li5/b$j$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$j$a$b;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Li5/b$j$a$b;


# direct methods
.method public constructor <init>(Li5/b$j$a$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$finalResoPixels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$j$a$b$a;->c:Li5/b$j$a$b;

    iput p2, p0, Li5/b$j$a$b$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Li5/b$j$a$b$a;->c:Li5/b$j$a$b;

    iget-object v1, v0, Li5/b$j$a$b;->f:Li5/b$j$a;

    iget-object v1, v1, Li5/b$j$a;->a:Li5/b$j;

    iget-object v1, v1, Li5/b$j;->b:Li5/b;

    iget-object v0, v0, Li5/b$j$a$b;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v2, p0, Li5/b$j$a$b$a;->c:Li5/b$j$a$b;

    iget-object v2, v2, Li5/b$j$a$b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget v3, p0, Li5/b$j$a$b$a;->b:I

    invoke-static {v1, v0, v2, v3}, Li5/b;->H(Li5/b;ZZI)V

    return-void
.end method
