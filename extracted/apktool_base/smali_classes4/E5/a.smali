.class public LE5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LE5/a;LC5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/a;->c(LC5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    return-void
.end method


# virtual methods
.method public b(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "input",
            "tittle"
        }
    .end annotation

    iget-object v0, p1, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_1

    const v0, 0x7f090552

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, LE5/a;->c(LC5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object v0

    new-instance v1, Lv3/k;

    new-instance v2, LE5/a$a;

    invoke-direct {v2, p0, p1, p2}, LE5/a$a;-><init>(LE5/a;LC5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    iget v3, v3, LD8/a;->s:I

    sget-object v4, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v1, v2, v3, v4}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {v0, v1}, Lv3/o;->a(Lv3/k;)V

    new-instance v0, LE5/a$b;

    invoke-direct {v0, p0, p2, p1}, LE5/a$b;-><init>(LE5/a;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;LC5/b;)V

    iput-object v0, p1, LC5/b;->k:LD5/f;

    if-eqz p3, :cond_0

    new-instance v0, LE5/a$c;

    invoke-direct {v0, p0, p2}, LE5/a$c;-><init>(LE5/a;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p3, LE5/a$d;

    invoke-direct {p3, p0, p1}, LE5/a$d;-><init>(LE5/a;LC5/b;)V

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    :cond_1
    return-void
.end method

.method public final c(LC5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "checkBox"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, LC5/b;->b:LD5/h;

    invoke-interface {p1}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
