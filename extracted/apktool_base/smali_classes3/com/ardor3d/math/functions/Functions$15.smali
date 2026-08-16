.class final Lcom/ardor3d/math/functions/Functions$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->simplexNoise()Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field noiseGenerator:Lcom/ardor3d/math/functions/SimplexNoise;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/functions/SimplexNoise;

    invoke-direct {v0}, Lcom/ardor3d/math/functions/SimplexNoise;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/functions/Functions$15;->noiseGenerator:Lcom/ardor3d/math/functions/SimplexNoise;

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/functions/Functions$15;->noiseGenerator:Lcom/ardor3d/math/functions/SimplexNoise;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/functions/SimplexNoise;->noise(DDD)D

    move-result-wide p1

    return-wide p1
.end method
