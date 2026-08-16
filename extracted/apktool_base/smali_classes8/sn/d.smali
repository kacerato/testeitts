.class public Lsn/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lqn/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cCompatibility"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Lsn/b;

    invoke-direct {p0}, Lsn/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lsn/c;

    invoke-direct {p0}, Lsn/c;-><init>()V

    :goto_0
    return-object p0
.end method
