.class public Ljn/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/J;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([F[FF)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polyVerts",
            "circleCenter",
            "radius"
        }
    .end annotation

    return-object p1
.end method
