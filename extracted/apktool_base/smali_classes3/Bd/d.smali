.class public LBd/d;
.super LAd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBd/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAd/c<",
        "LBd/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, LAd/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)LBd/d$a;
    .locals 1

    new-instance v0, LBd/d$a;

    invoke-direct {v0, p0}, LBd/d$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
