.class public final Lcom/google/android/gms/measurement/internal/S6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/D2;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/f7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/S6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/S6;->b:Lcom/google/android/gms/measurement/internal/f7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/S6;->c:Lcom/google/android/gms/measurement/internal/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/S6;->b:Lcom/google/android/gms/measurement/internal/f7;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S6;->c:Lcom/google/android/gms/measurement/internal/c7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S6;->a:Ljava/lang/String;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/c7;->v(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/f7;)V

    return-void
.end method
