.class final Lcom/ardor3d/math/functions/Functions$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->lerp(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;D)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$amount:D

.field final synthetic val$sourceA:Lcom/ardor3d/math/functions/Function3D;

.field final synthetic val$sourceB:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(DLcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/Functions$10;->val$amount:D

    iput-object p3, p0, Lcom/ardor3d/math/functions/Functions$10;->val$sourceA:Lcom/ardor3d/math/functions/Function3D;

    iput-object p4, p0, Lcom/ardor3d/math/functions/Functions$10;->val$sourceB:Lcom/ardor3d/math/functions/Function3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 12

    move-object v0, p0

    iget-wide v1, v0, Lcom/ardor3d/math/functions/Functions$10;->val$amount:D

    iget-object v3, v0, Lcom/ardor3d/math/functions/Functions$10;->val$sourceA:Lcom/ardor3d/math/functions/Function3D;

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v3

    iget-object v5, v0, Lcom/ardor3d/math/functions/Functions$10;->val$sourceB:Lcom/ardor3d/math/functions/Function3D;

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-interface/range {v5 .. v11}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v5

    move-wide p1, v1

    move-wide p3, v3

    move-wide/from16 p5, v5

    invoke-static/range {p1 .. p6}, Lcom/ardor3d/math/MathUtils;->lerp(DDD)D

    move-result-wide v1

    return-wide v1
.end method
