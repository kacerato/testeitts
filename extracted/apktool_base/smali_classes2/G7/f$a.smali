.class public LG7/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG7/f;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG7/f;


# direct methods
.method public constructor <init>(LG7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG7/f$a;->a:LG7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    iget-object p1, p0, LG7/f$a;->a:LG7/f;

    invoke-static {p1}, LG7/f;->b(LG7/f;)LG7/g;

    move-result-object p1

    invoke-interface {p1, p2}, LG7/g;->a(Z)V

    return-void
.end method
