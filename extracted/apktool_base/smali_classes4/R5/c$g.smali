.class public LR5/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR5/c;->G(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LR5/c;


# direct methods
.method public constructor <init>(LR5/c;Ljava/lang/String;Ljava/lang/String;)V
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
            "val$passwordT"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LR5/c$g;->c:LR5/c;

    iput-object p2, p0, LR5/c$g;->a:Ljava/lang/String;

    iput-object p3, p0, LR5/c$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, LR5/c$g;->c:LR5/c;

    invoke-static {v0}, LR5/c;->C(LR5/c;)Lq7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LR5/c$g;->c:LR5/c;

    invoke-static {v0}, LR5/c;->C(LR5/c;)Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->p1()V

    :cond_0
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, LR5/c$g;->c:LR5/c;

    invoke-virtual {v0}, Ls7/c;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_message"

    invoke-static {p1, v2}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, LR5/c$g;->c:LR5/c;

    invoke-virtual {v2}, Ls7/c;->i()Ls7/a;

    move-result-object v2

    check-cast v2, LO5/b;

    const-string v3, "0x0006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "STAGE_USER_NAME"

    if-eqz v3, :cond_1

    :try_start_1
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_TOO_BIG:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, LO5/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, p1, v0}, LO5/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LR5/c$g;->c:LR5/c;

    invoke-virtual {p1}, Ls7/c;->k()Ls7/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Ls7/b;->x1(I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string v3, "0x0007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, LR5/c$g;->c:LR5/c;

    invoke-static {p1}, LR5/c;->z(LR5/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD_TOO_BIG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LR5/c$g;->c:LR5/c;

    invoke-static {p1}, LR5/c;->A(LR5/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v3, "0x0008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USERNAME_ALREADY_TAKEN:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, LO5/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, p1, v0}, LO5/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LR5/c$g;->c:LR5/c;

    invoke-virtual {p1}, Ls7/c;->k()Ls7/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Ls7/b;->x1(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
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

    iget-object p1, p0, LR5/c$g;->c:LR5/c;

    iget-object v0, p0, LR5/c$g;->a:Ljava/lang/String;

    iget-object v1, p0, LR5/c$g;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, LR5/c;->D(LR5/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
