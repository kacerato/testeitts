.class public final Lcom/google/android/gms/internal/auth/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Z = false

.field public static final c:Lcom/google/android/gms/internal/auth/r1;

.field public static final synthetic d:I


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/auth/r1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/r1;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/auth/r1;->c:Lcom/google/android/gms/internal/auth/r1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/r1;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/r1;->a:Ljava/util/Map;

    return-void
.end method
