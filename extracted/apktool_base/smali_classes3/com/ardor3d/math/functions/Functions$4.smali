.class final Lcom/ardor3d/math/functions/Functions$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->clamp(Lcom/ardor3d/math/functions/Function3D;DD)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$max:D

.field final synthetic val$min:D

.field final synthetic val$source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/functions/Function3D;DD)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/functions/Functions$4;->val$source:Lcom/ardor3d/math/functions/Function3D;

    iput-wide p2, p0, Lcom/ardor3d/math/functions/Functions$4;->val$min:D

    iput-wide p4, p0, Lcom/ardor3d/math/functions/Functions$4;->val$max:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/functions/Functions$4;->val$source:Lcom/ardor3d/math/functions/Function3D;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide p1

    iget-wide p3, p0, Lcom/ardor3d/math/functions/Functions$4;->val$min:D

    iget-wide p5, p0, Lcom/ardor3d/math/functions/Functions$4;->val$max:D

    invoke-static/range {p1 .. p6}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide p1

    return-wide p1
.end method
