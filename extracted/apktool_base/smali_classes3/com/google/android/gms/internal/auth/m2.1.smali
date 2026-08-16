.class public final Lcom/google/android/gms/internal/auth/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/auth/m2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/q2;

.field public final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/m2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/m2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/m2;->c:Lcom/google/android/gms/internal/auth/m2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/m2;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/auth/V1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/V1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/m2;->a:Lcom/google/android/gms/internal/auth/q2;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/m2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/m2;->c:Lcom/google/android/gms/internal/auth/m2;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/p2;
    .locals 2

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/auth/H1;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/m2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/p2;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/m2;->a:Lcom/google/android/gms/internal/auth/q2;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/auth/q2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/p2;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/auth/H1;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/m2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/p2;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
