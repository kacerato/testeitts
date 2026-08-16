.class public final synthetic LT0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LT0/g;)J
    .locals 2
    .param p0    # LT0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
