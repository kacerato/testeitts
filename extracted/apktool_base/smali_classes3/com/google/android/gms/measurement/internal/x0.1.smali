.class public final synthetic Lcom/google/android/gms/measurement/internal/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/P;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/x0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/x0;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/x0;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/x0;->a:Lcom/google/android/gms/measurement/internal/x0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic N1()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->b:Lcom/google/android/gms/measurement/internal/d2;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/I6;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
