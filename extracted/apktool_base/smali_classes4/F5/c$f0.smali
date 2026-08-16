.class public LF5/c$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->w(Ljava/lang/String;LJAVARuntime/Texture;LF5/c$t0;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LF5/c$t0;

.field public final synthetic b:LJAVARuntime/Texture;


# direct methods
.method public constructor <init>(LF5/c$t0;LJAVARuntime/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$finalVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF5/c$f0;->a:LF5/c$t0;

    iput-object p2, p0, LF5/c$f0;->b:LJAVARuntime/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LF5/c$f0;->b:LJAVARuntime/Texture;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v2, v0, Lub/g;

    if-eqz v2, :cond_0

    check-cast v0, Lub/g;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Texture;

    new-instance v1, Lub/g;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v1, p1}, Lub/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LJAVARuntime/Texture;-><init>(Lub/p;)V

    iget-object p1, p0, LF5/c$f0;->a:LF5/c$t0;

    invoke-interface {p1, v0}, LF5/c$t0;->b(LJAVARuntime/Texture;)V

    iget-object p1, p0, LF5/c$f0;->a:LF5/c$t0;

    invoke-interface {p1}, LF5/c$t0;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LF5/c$f0;->a:LF5/c$t0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LF5/c$t0;->b(LJAVARuntime/Texture;)V

    iget-object p1, p0, LF5/c$f0;->a:LF5/c$t0;

    invoke-interface {p1}, LF5/c$t0;->a()V

    :cond_1
    :goto_0
    return-void
.end method
