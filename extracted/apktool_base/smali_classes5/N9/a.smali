.class public LN9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN9/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "gradient",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "gradient",
            "context",
            "listener"
        }
    .end annotation

    new-instance p2, LC5/b;

    new-instance v0, LN9/a$a;

    invoke-direct {v0, p0, p3}, LN9/a$a;-><init>(Ljava/lang/String;LN9/a$b;)V

    const p0, 0x7f0c00ed

    invoke-direct {p2, v0, p0, p1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p2
.end method
