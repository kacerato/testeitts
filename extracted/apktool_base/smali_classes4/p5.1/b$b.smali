.class public Lp5/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b;->F1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$b;->a:Lp5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lp5/b$b;->a:Lp5/b;

    iget-object p2, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {p1}, Lp5/b;->s1(Lp5/b;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystorePassowrd:Ljava/lang/String;

    iget-object p1, p0, Lp5/b$b;->a:Lp5/b;

    iget-object p2, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {p1}, Lp5/b;->t1(Lp5/b;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystoreAlias:Ljava/lang/String;

    iget-object p1, p0, Lp5/b$b;->a:Lp5/b;

    iget-object p2, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {p1}, Lp5/b;->u1(Lp5/b;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystoreAliasPassword:Ljava/lang/String;

    iget-object p1, p0, Lp5/b$b;->a:Lp5/b;

    invoke-static {p1}, Lp5/b;->p1(Lp5/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
