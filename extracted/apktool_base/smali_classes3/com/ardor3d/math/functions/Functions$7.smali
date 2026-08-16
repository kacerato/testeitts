.class final Lcom/ardor3d/math/functions/Functions$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->multiply(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$sourceA:Lcom/ardor3d/math/functions/Function3D;

.field final synthetic val$sourceB:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/Functions$7;->val$sourceA:Lcom/ardor3d/math/functions/Function3D;

    iput-object p2, p0, Lcom/ardor3d/math/functions/Functions$7;->val$sourceB:Lcom/ardor3d/math/functions/Function3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/math/functions/Functions$7;->val$sourceA:Lcom/ardor3d/math/functions/Function3D;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/functions/Functions$7;->val$sourceB:Lcom/ardor3d/math/functions/Function3D;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    mul-double/2addr v0, p1

    return-wide v0
.end method
