.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;

.field public final b:F


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "emitters",
            "maxBounceDistance"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;->a:Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;

    iput p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;->b:F

    return-void
.end method
