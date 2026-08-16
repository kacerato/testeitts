.class public final Lcom/google/android/gms/internal/measurement/C7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/B7;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/q4;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/l4;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q4;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q4;->a()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q4;->b()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    const-string v1, "measurement.remove_conflicting_first_party_apis.dev"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q4;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/C7;->a:Lcom/google/android/gms/internal/measurement/w4;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/C7;->a:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w4;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
