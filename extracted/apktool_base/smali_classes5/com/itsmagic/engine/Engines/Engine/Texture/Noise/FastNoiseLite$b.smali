.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$b;->a:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$b;->b:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$b;->c:F

    return-void
.end method
