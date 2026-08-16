.class public final Lcom/google/android/gms/internal/auth/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/j2;

.field public static final b:Lcom/google/android/gms/internal/auth/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/protobuf/o1;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/j2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/auth/k2;->a:Lcom/google/android/gms/internal/auth/j2;

    new-instance v0, Lcom/google/android/gms/internal/auth/j2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/j2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/k2;->b:Lcom/google/android/gms/internal/auth/j2;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/j2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/k2;->a:Lcom/google/android/gms/internal/auth/j2;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/auth/j2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/k2;->b:Lcom/google/android/gms/internal/auth/j2;

    return-object v0
.end method
