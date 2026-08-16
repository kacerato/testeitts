.class public final LB0/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final a:[LB0/L;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [LB0/L;

    sget-object v1, LB0/P;->c:LB0/N;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, LB0/P;->d:LB0/N;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, LB0/O;->a:[LB0/L;

    return-void
.end method
