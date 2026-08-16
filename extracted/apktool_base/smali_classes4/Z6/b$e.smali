.class public LZ6/b$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:LZ6/b;


# direct methods
.method public constructor <init>(LZ6/b;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$checkBox"
        }
    .end annotation

    iput-object p1, p0, LZ6/b$e;->c:LZ6/b;

    iput-object p2, p0, LZ6/b$e;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LZ6/b$e;->c:LZ6/b;

    invoke-static {p1}, LZ6/b;->s1(LZ6/b;)LZ6/b$i;

    move-result-object p1

    iget-object v0, p0, LZ6/b$e;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, LZ6/b$e;->c:LZ6/b;

    invoke-static {v1}, LZ6/b;->r1(LZ6/b;)LZ6/b$g;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LZ6/b$i;->a(ZLZ6/b$g;)V

    return-void
.end method
