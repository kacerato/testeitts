.class public final Lcom/google/android/gms/internal/auth/Z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/Y1;

.field public static final b:Lcom/google/android/gms/internal/auth/Y1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/protobuf/V0;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/Y1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/auth/Z1;->a:Lcom/google/android/gms/internal/auth/Y1;

    new-instance v0, Lcom/google/android/gms/internal/auth/Y1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/Y1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/Z1;->b:Lcom/google/android/gms/internal/auth/Y1;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/Y1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/Z1;->a:Lcom/google/android/gms/internal/auth/Y1;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/auth/Y1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/Z1;->b:Lcom/google/android/gms/internal/auth/Y1;

    return-object v0
.end method
