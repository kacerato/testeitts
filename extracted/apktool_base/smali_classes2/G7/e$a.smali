.class public LG7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG7/e;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG7/e;


# direct methods
.method public constructor <init>(LG7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG7/e$a;->a:LG7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, LG7/e$a;->a:LG7/e;

    invoke-static {v0}, LG7/e;->c(LG7/e;)LG7/e$c;

    move-result-object v0

    invoke-static {p1}, LG7/e;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)LG7/e$d;

    move-result-object p1

    invoke-interface {v0, p1}, LG7/e$c;->a(LG7/e$d;)V

    return-void
.end method
