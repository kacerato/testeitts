.class public Lcom/jme3/util/struct/fields/QuaternionField;
.super Lcom/jme3/util/struct/StructField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/util/struct/StructField<",
        "Lcom/jme3/math/Quaternion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/jme3/math/Quaternion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValueForUpdate()Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    check-cast v0, Lcom/jme3/math/Quaternion;

    return-object v0
.end method
