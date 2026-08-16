.class public LP6/c$Z;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;",
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

    iput-object p1, p0, LP6/c$Z;->a:LP6/c;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {p0, p1}, LP6/c$Z;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LP6/c$Z;->a:LP6/c;

    invoke-static {v0}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iget-object p1, p0, LP6/c$Z;->a:LP6/c;

    invoke-static {p1}, LP6/c;->p1(LP6/c;)V

    iget-object p1, p0, LP6/c$Z;->a:LP6/c;

    invoke-static {p1}, LP6/c;->x1(LP6/c;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    sget-object v0, LP6/c$V;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, LF5/c$n0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Sprite"

    return-object p1

    :cond_1
    const-string p1, "Texture"

    return-object p1
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {p0, p1}, LP6/c$Z;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)V

    return-void
.end method
