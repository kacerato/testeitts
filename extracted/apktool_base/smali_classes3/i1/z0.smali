.class public final Li1/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Li1/B;

.field public final c:Li1/n;


# direct methods
.method public constructor <init>(Landroid/app/Application;Li1/B;Li1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/z0;->a:Landroid/app/Application;

    iput-object p2, p0, Li1/z0;->b:Li1/B;

    iput-object p3, p0, Li1/z0;->c:Li1/n;

    return-void
.end method

.method public static synthetic a(Li1/z0;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Li1/z0;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic b(Li1/z0;)Li1/B;
    .locals 0

    iget-object p0, p0, Li1/z0;->b:Li1/B;

    return-object p0
.end method

.method public static synthetic c(Li1/z0;)Li1/n;
    .locals 0

    iget-object p0, p0, Li1/z0;->c:Li1/n;

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Lu2/d;)Li1/X;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    invoke-virtual {p2}, Lu2/d;->a()Lu2/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lu2/a$a;

    iget-object v1, p0, Li1/z0;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lu2/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lu2/a$a;->b()Lu2/a;

    move-result-object v0

    :cond_0
    move-object v4, v0

    new-instance v0, Li1/D0;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Li1/D0;-><init>(Li1/z0;Landroid/app/Activity;Lu2/a;Lu2/d;Li1/y0;)V

    invoke-static {v0}, Li1/D0;->a(Li1/D0;)Li1/X;

    move-result-object p1

    return-object p1
.end method
