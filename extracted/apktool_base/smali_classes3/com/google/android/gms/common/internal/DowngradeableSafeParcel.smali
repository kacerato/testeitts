.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super LI0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LC0/a;
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->b:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    sget-object p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static n()Ljava/lang/Integer;
    .locals 2
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b0()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->b:Z

    return v0
.end method

.method public abstract p(I)Z
    .annotation build LC0/a;
    .end annotation
.end method

.method public t(Z)V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->b:Z

    return-void
.end method
