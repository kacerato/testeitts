.class public final Lf1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/e;

.field public static final b:LB0/e;

.field public static final c:LB0/e;

.field public static final d:LB0/e;

.field public static final e:[LB0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LB0/e;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lf1/d;->a:LB0/e;

    new-instance v1, LB0/e;

    const-string v4, "sms_code_browser"

    invoke-direct {v1, v4, v2, v3}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lf1/d;->b:LB0/e;

    new-instance v2, LB0/e;

    const-string v3, "sms_retrieve"

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lf1/d;->c:LB0/e;

    new-instance v3, LB0/e;

    const-string v4, "user_consent"

    const-wide/16 v5, 0x3

    invoke-direct {v3, v4, v5, v6}, LB0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lf1/d;->d:LB0/e;

    filled-new-array {v0, v1, v2, v3}, [LB0/e;

    move-result-object v0

    sput-object v0, Lf1/d;->e:[LB0/e;

    return-void
.end method
