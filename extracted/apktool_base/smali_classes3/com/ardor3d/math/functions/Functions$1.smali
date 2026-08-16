.class final Lcom/ardor3d/math/functions/Functions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/math/functions/Functions;->constant(D)Lcom/ardor3d/math/functions/Function3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$constant:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/Functions$1;->val$constant:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 0

    iget-wide p1, p0, Lcom/ardor3d/math/functions/Functions$1;->val$constant:D

    return-wide p1
.end method
