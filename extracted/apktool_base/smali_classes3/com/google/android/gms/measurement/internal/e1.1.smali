.class public final synthetic Lcom/google/android/gms/measurement/internal/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/P;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/e1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/e1;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/e1;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/e1;->a:Lcom/google/android/gms/measurement/internal/e1;

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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/I6;->n0()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
