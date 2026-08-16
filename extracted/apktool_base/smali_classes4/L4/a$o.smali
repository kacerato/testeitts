.class public LL4/a$o;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL4/a;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LL4/a;


# direct methods
.method public constructor <init>(LL4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL4/a$o;->a:LL4/a;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LL4/a$o;->a:LL4/a;

    invoke-static {v0}, LL4/a;->u1(LL4/a;)V

    return-void
.end method

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    invoke-virtual {p0, p1}, LL4/a$o;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LL4/a$o;->a:LL4/a;

    invoke-static {v0}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->v(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)V

    iget-object p1, p0, LL4/a$o;->a:LL4/a;

    invoke-static {p1}, LL4/a;->u1(LL4/a;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    sget-object v0, LL4/a$l;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "6 faces"

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Panorama"

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    invoke-virtual {p0, p1}, LL4/a$o;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)V

    return-void
.end method
