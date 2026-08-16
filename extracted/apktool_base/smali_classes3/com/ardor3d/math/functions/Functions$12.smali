.class final Lcom/ardor3d/math/functions/Functions$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->scaleInput(Lcom/ardor3d/math/functions/Function3D;DDD)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$scaleX:D

.field final synthetic val$scaleY:D

.field final synthetic val$scaleZ:D

.field final synthetic val$source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DDD)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/Functions$12;->val$source:Lcom/ardor3d/math/functions/Function3D;

    iput-wide p2, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleX:D

    iput-wide p4, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleY:D

    iput-wide p6, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleZ:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/functions/Functions$12;->val$source:Lcom/ardor3d/math/functions/Function3D;

    iget-wide v1, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleX:D

    mul-double/2addr v1, p1

    iget-wide p1, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleY:D

    mul-double v3, p3, p1

    iget-wide p1, p0, Lcom/ardor3d/math/functions/Functions$12;->val$scaleZ:D

    mul-double v5, p5, p1

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    return-wide p1
.end method
