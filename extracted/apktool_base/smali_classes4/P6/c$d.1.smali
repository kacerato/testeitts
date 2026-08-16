.class public LP6/c$d;
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
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;",
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

    iput-object p1, p0, LP6/c$d;->a:LP6/c;

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-virtual {p0, p1}, LP6/c$d;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LP6/c$d;->a:LP6/c;

    invoke-static {v0}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iget-object p1, p0, LP6/c$d;->a:LP6/c;

    invoke-static {p1}, LP6/c;->x1(LP6/c;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->getName()Ljava/lang/String;

    move-result-object p1

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-virtual {p0, p1}, LP6/c$d;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)V

    return-void
.end method
