.class public final Lcom/google/android/gms/internal/measurement/e6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/e6;

.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/i6;

.field public final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/e6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/e6;->c:Lcom/google/android/gms/internal/measurement/e6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e6;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/N5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/N5;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e6;->a:Lcom/google/android/gms/internal/measurement/i6;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/e6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/e6;->c:Lcom/google/android/gms/internal/measurement/e6;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;
    .locals 3

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/A5;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e6;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h6;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/e6;->a:Lcom/google/android/gms/internal/measurement/i6;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/i6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/A5;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/h6;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2
.end method
