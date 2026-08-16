.class Lcom/ardor3d/math/functions/MapperFunction3D$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/math/functions/MapperFunction3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field easeIn:D

.field easeOut:D

.field offsetStart:D

.field source:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/math/functions/MapperFunction3D$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/math/functions/MapperFunction3D$Entry;-><init>()V

    return-void
.end method
