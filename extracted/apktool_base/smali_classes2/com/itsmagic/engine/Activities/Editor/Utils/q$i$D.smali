.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->i(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;

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

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    const-string v1, "Error:"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;->b()V

    return-void

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$j$a;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "info"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "values"

    invoke-static {p1, v0}, Lhd/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isInLimit"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;->c()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;->d()V

    :goto_0
    return-void
.end method
