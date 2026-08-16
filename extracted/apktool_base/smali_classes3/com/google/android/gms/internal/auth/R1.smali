.class public abstract Lcom/google/android/gms/internal/auth/R1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/R1;

.field public static final b:Lcom/google/android/gms/internal/auth/R1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/auth/N1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/N1;-><init>(Lcom/google/android/gms/internal/auth/M1;)V

    sput-object v0, Lcom/google/android/gms/internal/auth/R1;->a:Lcom/google/android/gms/internal/auth/R1;

    new-instance v0, Lcom/google/android/gms/internal/auth/P1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/P1;-><init>(Lcom/google/android/gms/internal/auth/O1;)V

    sput-object v0, Lcom/google/android/gms/internal/auth/R1;->b:Lcom/google/android/gms/internal/auth/R1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/Q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/auth/R1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/R1;->a:Lcom/google/android/gms/internal/auth/R1;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/auth/R1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/R1;->b:Lcom/google/android/gms/internal/auth/R1;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
