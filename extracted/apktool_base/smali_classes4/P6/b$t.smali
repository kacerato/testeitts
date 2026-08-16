.class public LP6/b$t;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/b;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LP6/b$z;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;


# direct methods
.method public constructor <init>(LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$data"
        }
    .end annotation

    iput-object p1, p0, LP6/b$t;->a:LP6/b$z;

    iput-object p2, p0, LP6/b$t;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LP6/b$t;->a:LP6/b$z;

    invoke-interface {v0}, LP6/b$z;->a()V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LP6/b$t;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->setNoiseType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V

    iget-object p1, p0, LP6/b$t;->a:LP6/b$z;

    invoke-interface {p1}, LP6/b$z;->b()V

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-virtual {p0, p1}, LP6/b$t;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V

    return-void
.end method
