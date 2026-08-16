.class public Lcom/ardor3d/math/functions/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$3;

    invoke-direct {v0, p0}, Lcom/ardor3d/math/functions/Functions$3;-><init>(Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static add(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$6;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/math/functions/Functions$6;-><init>(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static clamp(Lcom/ardor3d/math/functions/Function3D;DD)Lcom/ardor3d/math/functions/Function3D;
    .locals 7

    new-instance v6, Lcom/ardor3d/math/functions/Functions$4;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/math/functions/Functions$4;-><init>(Lcom/ardor3d/math/functions/Function3D;DD)V

    return-object v6
.end method

.method public static constant(D)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$1;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/math/functions/Functions$1;-><init>(D)V

    return-object v0
.end method

.method public static invert(Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$5;

    invoke-direct {v0, p0}, Lcom/ardor3d/math/functions/Functions$5;-><init>(Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static lerp(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;D)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$10;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/ardor3d/math/functions/Functions$10;-><init>(DLcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static max(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$9;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/math/functions/Functions$9;-><init>(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static min(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$8;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/math/functions/Functions$8;-><init>(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static multiply(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$7;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/math/functions/Functions$7;-><init>(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static remap(Lcom/ardor3d/math/functions/Function3D;DDDD)Lcom/ardor3d/math/functions/Function3D;
    .locals 11

    new-instance v10, Lcom/ardor3d/math/functions/Functions$14;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p7

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/ardor3d/math/functions/Functions$14;-><init>(Lcom/ardor3d/math/functions/Function3D;DDDD)V

    return-object v10
.end method

.method public static rotateInput(Lcom/ardor3d/math/functions/Function3D;Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$11;

    invoke-direct {v0, p1, p0}, Lcom/ardor3d/math/functions/Functions$11;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/functions/Function3D;)V

    return-object v0
.end method

.method public static scaleBias(Lcom/ardor3d/math/functions/Function3D;DD)Lcom/ardor3d/math/functions/Function3D;
    .locals 7

    new-instance v6, Lcom/ardor3d/math/functions/Functions$2;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/math/functions/Functions$2;-><init>(Lcom/ardor3d/math/functions/Function3D;DD)V

    return-object v6
.end method

.method public static scaleInput(Lcom/ardor3d/math/functions/Function3D;DDD)Lcom/ardor3d/math/functions/Function3D;
    .locals 9

    new-instance v8, Lcom/ardor3d/math/functions/Functions$12;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ardor3d/math/functions/Functions$12;-><init>(Lcom/ardor3d/math/functions/Function3D;DDD)V

    return-object v8
.end method

.method public static simplexNoise()Lcom/ardor3d/math/functions/Function3D;
    .locals 1

    new-instance v0, Lcom/ardor3d/math/functions/Functions$15;

    invoke-direct {v0}, Lcom/ardor3d/math/functions/Functions$15;-><init>()V

    return-object v0
.end method

.method public static translateInput(Lcom/ardor3d/math/functions/Function3D;DDD)Lcom/ardor3d/math/functions/Function3D;
    .locals 9

    new-instance v8, Lcom/ardor3d/math/functions/Functions$13;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ardor3d/math/functions/Functions$13;-><init>(Lcom/ardor3d/math/functions/Function3D;DDD)V

    return-object v8
.end method
