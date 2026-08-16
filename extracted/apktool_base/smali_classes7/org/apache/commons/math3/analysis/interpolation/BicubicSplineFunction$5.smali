.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field final synthetic val$aXY:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 11

    mul-double v0, p1, p1

    const/4 v2, 0x4

    new-array v3, v2, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x1

    aput-wide v7, v3, v9

    const/4 v10, 0x2

    aput-wide p1, v3, v10

    const/4 p1, 0x3

    aput-wide v0, v3, p1

    mul-double v0, p3, p3

    new-array p2, v2, [D

    aput-wide v4, p2, v6

    aput-wide v7, p2, v9

    aput-wide p3, p2, v10

    aput-wide v0, p2, p1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    invoke-static {p1, v3, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide p1

    return-wide p1
.end method
