.class public Lt5/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-void
.end method

.method public get()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMax()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
