.class Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/spline/ArcLengthTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcLengthEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _delta:D

.field private final _length:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_delta:D

    iput-wide p3, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_length:D

    return-void
.end method


# virtual methods
.method public getDelta()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_delta:D

    return-wide v0
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_length:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArcLengthEntry[length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_length:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/spline/ArcLengthTable$ArcLengthEntry;->_delta:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
