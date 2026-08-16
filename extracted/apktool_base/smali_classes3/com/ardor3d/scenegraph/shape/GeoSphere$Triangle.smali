.class Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/shape/GeoSphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triangle"
.end annotation


# instance fields
.field pt:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 6
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 7
    aput p3, v0, p1

    return-void
.end method
