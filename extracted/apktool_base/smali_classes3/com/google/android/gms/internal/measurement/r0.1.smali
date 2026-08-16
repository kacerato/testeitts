.class public final Lcom/google/android/gms/internal/measurement/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/p0;

.field public static volatile b:Lcom/google/android/gms/internal/measurement/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/q0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q0;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/r0;->a:Lcom/google/android/gms/internal/measurement/p0;

    sput-object v0, Lcom/google/android/gms/internal/measurement/r0;->b:Lcom/google/android/gms/internal/measurement/p0;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/p0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/r0;->b:Lcom/google/android/gms/internal/measurement/p0;

    return-object v0
.end method
