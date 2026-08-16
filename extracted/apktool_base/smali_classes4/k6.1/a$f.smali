.class public Lk6/a$f;
.super LH7/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public final synthetic e:Lk6/a;


# direct methods
.method public constructor <init>(Lk6/a;Landroid/view/View;)V
    .locals 0
    .param p1    # Lk6/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$f;->e:Lk6/a;

    invoke-direct {p0, p1, p2}, LH7/d$a;-><init>(LH7/d;Landroid/view/View;)V

    iput-object p2, p0, Lk6/a$f;->b:Landroid/view/View;

    const p1, 0x7f09025a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lk6/a$f;->c:Landroid/widget/ImageView;

    const p1, 0x7f09053c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lk6/a$f;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(LH7/a;LH7/d$c;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "ll"
        }
    .end annotation

    check-cast p1, Lj6/b;

    invoke-virtual {p1}, Lj6/b;->e()Ljava/io/File;

    move-result-object p1

    iget-object p2, p0, Lk6/a$f;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta/thumb.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk6/a$f;->c:Landroid/widget/ImageView;

    invoke-static {v0, p2}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lk6/a$f;->c:Landroid/widget/ImageView;

    invoke-static {p1, p2}, LD7/b;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lk6/a$f;->c:Landroid/widget/ImageView;

    const v0, 0x7f0700de

    invoke-static {p2, v0}, LVc/e;->U(Landroid/widget/ImageView;I)V

    :goto_1
    iget-object p2, p0, Lk6/a$f;->b:Landroid/view/View;

    new-instance v0, Lk6/a$f$a;

    invoke-direct {v0, p0, p1}, Lk6/a$f$a;-><init>(Lk6/a$f;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
