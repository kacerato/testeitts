.class public final Lcom/google/android/gms/internal/auth/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/O0;


# static fields
.field public static final c:Lcom/google/android/gms/internal/auth/d3;


# instance fields
.field public final b:Lcom/google/android/gms/internal/auth/O0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/d3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/d3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/d3;->c:Lcom/google/android/gms/internal/auth/d3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/g3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/g3;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/T0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/O0;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/T0;->a(Lcom/google/android/gms/internal/auth/O0;)Lcom/google/android/gms/internal/auth/O0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/d3;->b:Lcom/google/android/gms/internal/auth/O0;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/Z2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/d3;->c:Lcom/google/android/gms/internal/auth/d3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/d3;->b()Lcom/google/android/gms/internal/auth/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/e3;->N1()Lcom/google/android/gms/internal/auth/Z2;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/d3;->c:Lcom/google/android/gms/internal/auth/d3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/d3;->b()Lcom/google/android/gms/internal/auth/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/e3;->O1()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/d3;->c:Lcom/google/android/gms/internal/auth/d3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/d3;->b()Lcom/google/android/gms/internal/auth/e3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/e3;->P1()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/d3;->b()Lcom/google/android/gms/internal/auth/e3;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/auth/e3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/d3;->b:Lcom/google/android/gms/internal/auth/O0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/O0;->N1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/e3;

    return-object v0
.end method
