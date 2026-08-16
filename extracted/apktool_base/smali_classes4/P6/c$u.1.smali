.class public LP6/c$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->M1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP6/c;


# direct methods
.method public constructor <init>(LP6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP6/c$u;->a:LP6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, LP6/c$u;->a:LP6/c;

    invoke-static {v1}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

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

    if-eqz p1, :cond_0

    iget-object v0, p0, LP6/c$u;->a:LP6/c;

    invoke-static {v0}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    iget-object p1, p0, LP6/c$u;->a:LP6/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LP6/c;->w1(LP6/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method
