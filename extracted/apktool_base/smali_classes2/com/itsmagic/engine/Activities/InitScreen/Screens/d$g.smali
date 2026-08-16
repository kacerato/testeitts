.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->G(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$username",
            "val$password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->p(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, LZ6/d;

    invoke-direct {v0}, LZ6/d;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v0}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x0006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->m(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_TOO_BIG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "0x0007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->n(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD_TOO_BIG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "0x0008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->m(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;)Landroid/widget/EditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_ALREADY_TAKEN:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d$g;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;->q(Lcom/itsmagic/engine/Activities/InitScreen/Screens/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
