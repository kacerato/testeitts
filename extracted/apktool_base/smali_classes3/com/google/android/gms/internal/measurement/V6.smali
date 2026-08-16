.class public final Lcom/google/android/gms/internal/measurement/V6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/V6;


# instance fields
.field public final b:Lw2/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/V6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/V6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/V6;->c:Lcom/google/android/gms/internal/measurement/V6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/X6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/X6;-><init>()V

    invoke-static {v0}, Lw2/S;->d(Ljava/lang/Object;)Lw2/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/V6;->b:Lw2/Q;

    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation runtime LKm/c;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/V6;->c:Lcom/google/android/gms/internal/measurement/V6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/V6;->c()Lcom/google/android/gms/internal/measurement/W6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/W6;->N1()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1
    .annotation runtime LKm/c;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/V6;->c:Lcom/google/android/gms/internal/measurement/V6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/V6;->c()Lcom/google/android/gms/internal/measurement/W6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/W6;->O1()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/measurement/W6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/V6;->b:Lw2/Q;

    invoke-interface {v0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/W6;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/V6;->c()Lcom/google/android/gms/internal/measurement/W6;

    move-result-object v0

    return-object v0
.end method
