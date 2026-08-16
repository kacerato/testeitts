.class public Lcb/g$p;
.super Lcb/g$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounces"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcb/g$q;-><init>(I)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widths",
            "heights"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcb/g$q;-><init>([F[F)V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-super {p0, p1}, Lcb/g$q;->a(F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method
