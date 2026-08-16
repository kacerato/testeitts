.class public LC5/h$S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->F(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LC5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$textView",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$S;->a:Landroid/content/Context;

    iput-object p2, p0, LC5/h$S;->b:Landroid/widget/TextView;

    iput-object p3, p0, LC5/h$S;->c:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljd/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfile"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC5/h$S;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    const-string v0, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v2, p0, LC5/h$S;->b:Landroid/widget/TextView;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v1, p0, LC5/h$S;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const-string v1, "temp"

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, LC5/h$S;->c:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    goto :goto_3

    :cond_1
    iget-object p1, p0, LC5/h$S;->c:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method
