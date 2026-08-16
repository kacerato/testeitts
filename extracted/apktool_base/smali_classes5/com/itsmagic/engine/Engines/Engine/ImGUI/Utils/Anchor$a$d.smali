.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Landroid/widget/CheckBox;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:Landroid/widget/CheckBox;

.field public final synthetic f:Landroid/widget/CheckBox;

.field public final synthetic g:Landroid/widget/CheckBox;

.field public final synthetic h:Landroid/widget/CheckBox;

.field public final synthetic i:Landroid/widget/CheckBox;

.field public final synthetic j:Landroid/widget/CheckBox;

.field public final synthetic k:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$tl",
            "val$tr",
            "val$tc",
            "val$cl",
            "val$cc",
            "val$cr",
            "val$bl",
            "val$bc",
            "val$br"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->k:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->c:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->e:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->f:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->g:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->h:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->i:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->j:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->b:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->h:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->i:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->j:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a$d;->k:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;->a:LT9/a;

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v9}, LT9/a;->a(ZZZZZZZZZ)V

    :cond_0
    return-void
.end method
