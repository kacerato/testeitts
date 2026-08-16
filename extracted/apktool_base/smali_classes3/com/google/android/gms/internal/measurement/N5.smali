.class public final Lcom/google/android/gms/internal/measurement/N5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/i6;


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/U5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/U5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/L5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/L5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/N5;->b:Lcom/google/android/gms/internal/measurement/U5;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/M5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k5;->c()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/measurement/e6;->d:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/U5;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/N5;->b:Lcom/google/android/gms/internal/measurement/U5;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/M5;-><init>([Lcom/google/android/gms/internal/measurement/U5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/N5;->a:Lcom/google/android/gms/internal/measurement/U5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;
    .locals 8

    sget v0, Lcom/google/android/gms/internal/measurement/j6;->b:I

    const-class v0, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/measurement/e6;->d:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/N5;->a:Lcom/google/android/gms/internal/measurement/U5;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/U5;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/T5;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/T5;->N1()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/google/android/gms/internal/measurement/e6;->d:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/c6;->a()Lcom/google/android/gms/internal/measurement/b6;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/I5;->a()Lcom/google/android/gms/internal/measurement/H5;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/j6;->a()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/T5;->P1()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e5;->a()Lcom/google/android/gms/internal/measurement/c5;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/S5;->a()Lcom/google/android/gms/internal/measurement/R5;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/Z5;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/T5;Lcom/google/android/gms/internal/measurement/b6;Lcom/google/android/gms/internal/measurement/H5;Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/R5;)Lcom/google/android/gms/internal/measurement/Z5;

    move-result-object p1

    return-object p1

    :cond_2
    sget p1, Lcom/google/android/gms/internal/measurement/e6;->d:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/j6;->a()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e5;->a()Lcom/google/android/gms/internal/measurement/c5;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/T5;->O1()Lcom/google/android/gms/internal/measurement/W5;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/a6;->i(Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/W5;)Lcom/google/android/gms/internal/measurement/a6;

    move-result-object p1

    return-object p1
.end method
