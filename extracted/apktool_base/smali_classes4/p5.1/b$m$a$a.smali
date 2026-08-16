.class public Lp5/b$m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/b$m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/b$m$a;


# direct methods
.method public constructor <init>(Lp5/b$m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$m$a$a;->a:Lp5/b$m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lp5/b$m$a$a;->a:Lp5/b$m$a;

    iget-object p1, p1, Lp5/b$m$a;->b:Lp5/b$m;

    iget-object v0, p1, Lp5/b$m;->d:Lp5/b;

    iget-object v0, v0, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->buildType:I

    iget-object p1, p1, Lp5/b$m;->b:Landroid/widget/TextView;

    const-string v0, "APK"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lp5/b$m$a$a;->a:Lp5/b$m$a;

    iget-object p1, p1, Lp5/b$m$a;->b:Lp5/b$m;

    iget-object p1, p1, Lp5/b$m;->c:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lp5/b$m$a$a;->a:Lp5/b$m$a;

    iget-object p1, p1, Lp5/b$m$a;->b:Lp5/b$m;

    iget-object p1, p1, Lp5/b$m;->d:Lp5/b;

    invoke-static {p1}, Lp5/b;->p1(Lp5/b;)V

    return-void
.end method
