.class public final Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/e;

.field public static final b:[LB0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB0/e;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lg1/f;->a:LB0/e;

    filled-new-array {v0}, [LB0/e;

    move-result-object v0

    sput-object v0, Lg1/f;->b:[LB0/e;

    return-void
.end method
