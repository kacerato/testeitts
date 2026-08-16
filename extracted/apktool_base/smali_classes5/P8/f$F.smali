.class public LP8/f$F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->s(Ljava/lang/Object;Landroid/content/Context;LP8/p;Ljava/util/List;Ljava/lang/reflect/Field;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;


# direct methods
.method public constructor <init>(LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$insEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$F;->a:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, LP8/f$F;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object v0, p0, LP8/f$F;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    return-void
.end method
