.class public final Lcom/google/android/gms/internal/auth/L2;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/L1;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/auth/L1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/L1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/L2;->b:Lcom/google/android/gms/internal/auth/L1;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/auth/L2;)Lcom/google/android/gms/internal/auth/L1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/L2;->b:Lcom/google/android/gms/internal/auth/L1;

    return-object p0
.end method


# virtual methods
.method public final R1()Lcom/google/android/gms/internal/auth/L1;
    .locals 0

    return-object p0
.end method

.method public final T1()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/L2;->b:Lcom/google/android/gms/internal/auth/L1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/L1;->T1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/L2;->b:Lcom/google/android/gms/internal/auth/L1;

    check-cast v0, Lcom/google/android/gms/internal/auth/K1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/K1;->j(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/K2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/K2;-><init>(Lcom/google/android/gms/internal/auth/L2;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/J2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/J2;-><init>(Lcom/google/android/gms/internal/auth/L2;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/L2;->b:Lcom/google/android/gms/internal/auth/L1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
