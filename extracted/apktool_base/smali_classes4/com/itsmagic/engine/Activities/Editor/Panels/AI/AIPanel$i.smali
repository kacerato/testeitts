.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;",
        "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le7/b;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    iget-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;->d:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;->c:Landroid/widget/ImageView;

    invoke-static {v0, p3}, LVc/e;->Z(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;->e:Landroid/widget/Button;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$b;

    invoke-direct {p2, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const v0, 0x7f0c002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
