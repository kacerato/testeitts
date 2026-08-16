.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->H(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "userID"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->p(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->p(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x0005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->t(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVALID_CREDENTIALS_NEW_USER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->s(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->t(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$f;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->s(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
