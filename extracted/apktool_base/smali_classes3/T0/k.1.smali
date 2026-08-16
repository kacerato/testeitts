.class public LT0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT0/g;


# annotations
.annotation build LC0/a;
.end annotation


# static fields
.field public static final a:LT0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT0/k;

    invoke-direct {v0}, LT0/k;-><init>()V

    sput-object v0, LT0/k;->a:LT0/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()LT0/g;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT0/k;->a:LT0/k;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
