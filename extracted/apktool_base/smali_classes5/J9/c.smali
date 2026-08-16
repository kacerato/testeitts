.class public LJ9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Landroid/content/Context;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "curve",
            "context"
        }
    .end annotation

    new-instance p2, LC5/b;

    new-instance v0, LJ9/c$a;

    invoke-direct {v0, p0}, LJ9/c$a;-><init>(Ljava/lang/String;)V

    const p0, 0x7f0c00e9

    invoke-direct {p2, v0, p0, p1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p2
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Landroid/content/Context;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "curve",
            "context"
        }
    .end annotation

    new-instance p2, LC5/b;

    new-instance v0, LJ9/c$b;

    invoke-direct {v0, p0}, LJ9/c$b;-><init>(Ljava/lang/String;)V

    const p0, 0x7f0c00ea

    invoke-direct {p2, v0, p0, p1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p2
.end method
