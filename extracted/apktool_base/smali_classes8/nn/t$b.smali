.class public Lnn/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/L;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnn/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnn/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnn/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pa",
            "pb",
            "prevRef",
            "prevTile",
            "prevPoly",
            "curRef",
            "curTile",
            "curPoly",
            "nextRef",
            "nextTile",
            "nextPoly"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public b(JLjn/s;Ljn/G;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "tile",
            "poly"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
