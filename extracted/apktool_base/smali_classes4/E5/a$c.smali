.class public LE5/a$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/a;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

.field public final synthetic c:LE5/a;


# direct methods
.method public constructor <init>(LE5/a;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V
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

    iput-object p1, p0, LE5/a$c;->c:LE5/a;

    iput-object p2, p0, LE5/a$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

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
            "v"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LE5/a$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
