.class public LAd/g;
.super LAd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAd/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAd/c<",
        "LAd/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, LAd/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)LAd/g$a;
    .locals 1

    new-instance v0, LAd/g$a;

    invoke-direct {v0, p0}, LAd/g$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
