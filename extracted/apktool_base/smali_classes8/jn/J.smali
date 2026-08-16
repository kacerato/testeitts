.class public interface abstract Ljn/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljn/J$a;,
        Ljn/J$b;
    }
.end annotation


# direct methods
.method public static a()Ljn/J;
    .locals 1

    new-instance v0, Ljn/J$b;

    invoke-direct {v0}, Ljn/J$b;-><init>()V

    return-object v0
.end method

.method public static c()Ljn/J;
    .locals 1

    new-instance v0, Ljn/J$a;

    invoke-direct {v0}, Ljn/J$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b([F[FF)[F
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
.end method
