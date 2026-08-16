.class public abstract LWm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LWm/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs d([LWm/d;)LWm/f;
    .locals 1

    new-instance v0, LPm/d;

    invoke-direct {v0, p0}, LPm/d;-><init>([LWm/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)LWm/f;
.end method

.method public abstract b(I)LWm/f;
.end method

.method public abstract e()LWm/f;
.end method
