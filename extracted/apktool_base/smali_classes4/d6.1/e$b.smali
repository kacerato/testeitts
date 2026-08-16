.class public Ld6/e$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/e;->s1(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Ld6/e;


# direct methods
.method public constructor <init>(Ld6/e;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$textDescription",
            "val$readMore"
        }
    .end annotation

    iput-object p1, p0, Ld6/e$b;->e:Ld6/e;

    iput-object p2, p0, Ld6/e$b;->c:Landroid/widget/TextView;

    iput-object p3, p0, Ld6/e$b;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld6/e$b;->b:Z

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-boolean p1, p0, Ld6/e$b;->b:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Ld6/e$b;->b:Z

    iget-object v0, p0, Ld6/e$b;->c:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Ld6/e$b;->d:Landroid/widget/TextView;

    iget-boolean v0, p0, Ld6/e$b;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->READ_LESS:LAc/b;

    :goto_1
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->READ_MORE:LAc/b;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
