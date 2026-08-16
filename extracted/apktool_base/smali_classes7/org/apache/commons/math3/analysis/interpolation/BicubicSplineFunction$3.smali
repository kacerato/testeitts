.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;
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

.field final synthetic val$aXX:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;->val$aXX:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    aput-wide v2, v1, v6

    const/4 v7, 0x3

    aput-wide p1, v1, v7

    mul-double p1, p3, p3

    mul-double v8, p1, p3

    new-array v0, v0, [D

    aput-wide v2, v0, v4

    aput-wide p3, v0, v5

    aput-wide p1, v0, v6

    aput-wide v8, v0, v7

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;->val$aXX:[[D

    invoke-static {p1, v1, v0, p2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide p1

    return-wide p1
.end method
