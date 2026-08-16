.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->j(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;->b()V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$j$a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "info"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;->a(Ljava/lang/String;)V

    :cond_1
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

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "values"

    invoke-static {p1, v0}, Lhd/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "exporting"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;

    invoke-interface {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;->d()V

    :goto_0
    return-void
.end method
