.class final Lcom/ardor3d/math/functions/Functions$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->remap(Lcom/ardor3d/math/functions/Function3D;DDDD)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$newHigh:D

.field final synthetic val$newLow:D

.field final synthetic val$oldHigh:D

.field final synthetic val$oldLow:D

.field final synthetic val$source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DDDD)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/Functions$14;->val$source:Lcom/ardor3d/math/functions/Function3D;

    iput-wide p2, p0, Lcom/ardor3d/math/functions/Functions$14;->val$oldLow:D

    iput-wide p4, p0, Lcom/ardor3d/math/functions/Functions$14;->val$oldHigh:D

    iput-wide p6, p0, Lcom/ardor3d/math/functions/Functions$14;->val$newHigh:D

    iput-wide p8, p0, Lcom/ardor3d/math/functions/Functions$14;->val$newLow:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/functions/Functions$14;->val$source:Lcom/ardor3d/math/functions/Function3D;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    iget-wide p3, p0, Lcom/ardor3d/math/functions/Functions$14;->val$oldLow:D

    sub-double/2addr p1, p3

    iget-wide p5, p0, Lcom/ardor3d/math/functions/Functions$14;->val$oldHigh:D

    sub-double/2addr p5, p3

    div-double/2addr p1, p5

    iget-wide p3, p0, Lcom/ardor3d/math/functions/Functions$14;->val$newHigh:D

    iget-wide p5, p0, Lcom/ardor3d/math/functions/Functions$14;->val$newLow:D

    sub-double/2addr p3, p5

    mul-double/2addr p1, p3

    add-double/2addr p1, p5

    return-wide p1
.end method
