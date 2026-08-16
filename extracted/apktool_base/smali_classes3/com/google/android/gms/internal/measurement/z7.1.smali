.class public final Lcom/google/android/gms/internal/measurement/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/y7;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w4;

.field public static final b:Lcom/google/android/gms/internal/measurement/w4;

.field public static final c:Lcom/google/android/gms/internal/measurement/w4;

.field public static final d:Lcom/google/android/gms/internal/measurement/w4;

.field public static final e:Lcom/google/android/gms/internal/measurement/w4;

.field public static final f:Lcom/google/android/gms/internal/measurement/w4;

.field public static final g:Lcom/google/android/gms/internal/measurement/w4;

.field public static final h:Lcom/google/android/gms/internal/measurement/w4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/q4;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/l4;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q4;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q4;->a()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q4;->b()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    const-string v1, "measurement.rb.attribution.ad_campaign_info"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.service.bundle_on_backgrounded"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.client2"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->a:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.followup1.service"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->b:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.client.get_trigger_uris_async"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.service.trigger_uris_high_priority"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->c:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.index_out_of_bounds_fix"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->d:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.retry_disposition"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->e:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.service"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->f:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.enable_trigger_redaction"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->g:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.uuid_generation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/z7;->h:Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.id.rb.attribution.retry_disposition"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/q4;->c(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/w4;

    const-string v1, "measurement.rb.attribution.improved_retry"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final O1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->a:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final P1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->b:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Q1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->c:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final R1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->d:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final T1()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->f:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->e:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->h:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z7;->g:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
