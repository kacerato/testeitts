.class public final Li1/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li1/z0;

.field public final b:Landroid/app/Activity;

.field public final c:Lu2/a;

.field public final d:Lu2/d;


# direct methods
.method public synthetic constructor <init>(Li1/z0;Landroid/app/Activity;Lu2/a;Lu2/d;Li1/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/D0;->a:Li1/z0;

    iput-object p2, p0, Li1/D0;->b:Landroid/app/Activity;

    iput-object p3, p0, Li1/D0;->c:Lu2/a;

    iput-object p4, p0, Li1/D0;->d:Lu2/d;

    return-void
.end method

.method public static synthetic a(Li1/D0;)Li1/X;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    new-instance v0, Li1/X;

    invoke-direct {v0}, Li1/X;-><init>()V

    iget-object v1, p0, Li1/D0;->d:Lu2/d;

    invoke-virtual {v1}, Lu2/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v2}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v4}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :goto_1
    iput-object v1, v0, Li1/X;->a:Ljava/lang/String;

    iget-object v1, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v1}, Li1/z0;->b(Li1/z0;)Li1/B;

    move-result-object v1

    invoke-virtual {v1}, Li1/B;->a()Li1/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Li1/a;->a:Ljava/lang/String;

    iput-object v2, v0, Li1/X;->c:Ljava/lang/String;

    iget-boolean v1, v1, Li1/a;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Li1/X;->b:Ljava/lang/Boolean;

    :cond_2
    iget-object v1, p0, Li1/D0;->c:Lu2/a;

    invoke-virtual {v1}, Lu2/a;->b()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Li1/D0;->c:Lu2/a;

    invoke-virtual {v4}, Lu2/a;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    if-eq v4, v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v4, Li1/S;->zzd:Li1/S;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v4, Li1/S;->zzc:Li1/S;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-object v4, Li1/S;->zze:Li1/S;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iput-object v1, v0, Li1/X;->k:Ljava/util/List;

    iget-object v1, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v1}, Li1/z0;->c(Li1/z0;)Li1/n;

    move-result-object v1

    invoke-virtual {v1}, Li1/n;->b()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Li1/X;->g:Ljava/util/Map;

    iget-object v1, p0, Li1/D0;->d:Lu2/d;

    invoke-virtual {v1}, Lu2/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Li1/X;->f:Ljava/lang/Boolean;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Li1/X;->e:Ljava/lang/String;

    new-instance v4, Li1/T;

    invoke-direct {v4}, Li1/T;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Li1/T;->b:Ljava/lang/Integer;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v4, Li1/T;->a:Ljava/lang/String;

    iput v2, v4, Li1/T;->c:I

    iput-object v4, v0, Li1/X;->d:Li1/T;

    iget-object v2, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v2}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v4}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    new-instance v4, Li1/V;

    invoke-direct {v4}, Li1/V;-><init>()V

    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Li1/V;->a:Ljava/lang/Integer;

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Li1/V;->b:Ljava/lang/Integer;

    iget-object v2, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v2}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v4, Li1/V;->c:Ljava/lang/Double;

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_9

    :cond_6
    iget-object v1, p0, Li1/D0;->b:Landroid/app/Activity;

    if-nez v1, :cond_7

    move-object v1, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_8

    move-object v1, v3

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_9

    move-object v1, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_a

    move-object v1, v3

    goto :goto_7

    :cond_a
    invoke-static {v1}, Landroidx/core/view/j0;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_b
    invoke-static {v1}, Li1/B0;->a(Landroid/view/DisplayCutout;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Li1/C0;->a(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_c

    new-instance v7, Li1/U;

    invoke-direct {v7}, Li1/U;-><init>()V

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Li1/U;->b:Ljava/lang/Integer;

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Li1/U;->c:Ljava/lang/Integer;

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Li1/U;->a:Ljava/lang/Integer;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Li1/U;->d:Ljava/lang/Integer;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    move-object v1, v5

    :goto_9
    iput-object v1, v4, Li1/V;->d:Ljava/util/List;

    iput-object v4, v0, Li1/X;->h:Li1/V;

    iget-object v1, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v1}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v1

    :try_start_1
    iget-object v4, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v4}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-object v4, v3

    :goto_a
    new-instance v5, Li1/Q;

    invoke-direct {v5}, Li1/Q;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Li1/Q;->a:Ljava/lang/String;

    iget-object v1, p0, Li1/D0;->a:Li1/z0;

    invoke-static {v1}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Li1/D0;->a:Li1/z0;

    invoke-static {p0}, Li1/z0;->a(Li1/z0;)Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    iput-object v3, v5, Li1/Q;->b:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_f

    invoke-static {v4}, Li1/A0;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    goto :goto_b

    :cond_f
    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p0

    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Li1/Q;->c:Ljava/lang/String;

    :cond_10
    iput-object v5, v0, Li1/X;->i:Li1/Q;

    new-instance p0, Li1/W;

    invoke-direct {p0}, Li1/W;-><init>()V

    const-string v1, "2.0.0"

    iput-object v1, p0, Li1/W;->a:Ljava/lang/String;

    iput-object p0, v0, Li1/X;->j:Li1/W;

    return-object v0

    :cond_11
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v0, 0x3

    const-string v1, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    throw p0
.end method
