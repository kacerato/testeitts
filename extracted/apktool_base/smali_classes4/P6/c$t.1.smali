.class public LP6/c$t;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->K1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;",
        ">;"
    }
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

    iput-object p1, p0, LP6/c$t;->a:LP6/c;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, LF5/c$n0;->a()V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LP6/c$t;->a:LP6/c;

    invoke-static {v0}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iget-object p1, p0, LP6/c$t;->a:LP6/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LP6/c;->w1(LP6/c;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    invoke-virtual {p0, p1}, LP6/c$t;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;)V

    return-void
.end method
