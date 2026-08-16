.class public interface abstract Lcom/ardor3d/math/type/ReadOnlyPlane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
    }
.end annotation


# virtual methods
.method public abstract getConstant()D
.end method

.method public abstract getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;
.end method

.method public abstract pseudoDistance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
.end method

.method public abstract whichSide(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
.end method
