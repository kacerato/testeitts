.class public final Lo2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final c:Lp2/i;


# instance fields
.field public a:Lp2/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/i;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lp2/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo2/l;->c:Lp2/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo2/l;->b:Ljava/lang/String;

    invoke-static {p1}, Lp2/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lp2/t;

    sget-object v4, Lo2/l;->c:Lp2/i;

    sget-object v7, Lo2/h;->a:Lo2/h;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lp2/t;-><init>(Landroid/content/Context;Lp2/i;Ljava/lang/String;Landroid/content/Intent;Lo2/h;Lp2/o;[B)V

    iput-object v0, p0, Lo2/l;->a:Lp2/t;

    :cond_0
    return-void
.end method

.method public static bridge synthetic b()Lp2/i;
    .locals 1

    sget-object v0, Lo2/l;->c:Lp2/i;

    return-object v0
.end method

.method public static bridge synthetic c(Lo2/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo2/l;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()Lv1/k;
    .locals 3

    sget-object v0, Lo2/l;->c:Lp2/i;

    iget-object v1, p0, Lo2/l;->b:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestInAppReview (%s)"

    invoke-virtual {v0, v2, v1}, Lp2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lo2/l;->a:Lp2/t;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Play Store app is either not installed or not the official version"

    invoke-virtual {v0, v2, v1}, Lp2/i;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/review/ReviewException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    invoke-static {v0}, Lv1/n;->f(Ljava/lang/Exception;)Lv1/k;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lv1/l;

    invoke-direct {v0}, Lv1/l;-><init>()V

    iget-object v1, p0, Lo2/l;->a:Lp2/t;

    new-instance v2, Lo2/i;

    invoke-direct {v2, p0, v0, v0}, Lo2/i;-><init>(Lo2/l;Lv1/l;Lv1/l;)V

    invoke-virtual {v1, v2, v0}, Lp2/t;->p(Lp2/j;Lv1/l;)V

    invoke-virtual {v0}, Lv1/l;->a()Lv1/k;

    move-result-object v0

    return-object v0
.end method
