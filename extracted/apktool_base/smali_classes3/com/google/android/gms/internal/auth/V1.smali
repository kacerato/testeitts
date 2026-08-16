.class public final Lcom/google/android/gms/internal/auth/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/q2;


# static fields
.field public static final b:Lcom/google/android/gms/internal/auth/b2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/T1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/T1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/V1;->b:Lcom/google/android/gms/internal/auth/b2;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/auth/U1;

    invoke-static {}, Lcom/google/android/gms/internal/auth/y1;->c()Lcom/google/android/gms/internal/auth/y1;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.G"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/auth/b2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/auth/V1;->b:Lcom/google/android/gms/internal/auth/b2;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/auth/b2;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/U1;-><init>([Lcom/google/android/gms/internal/auth/b2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/auth/H1;->d:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/V1;->a:Lcom/google/android/gms/internal/auth/b2;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/auth/a2;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/a2;->P1()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/p2;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/r2;->e(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/V1;->a:Lcom/google/android/gms/internal/auth/b2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/auth/b2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/a2;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/a2;->O1()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/auth/B1;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->b()Lcom/google/android/gms/internal/auth/F2;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/auth/u1;->b()Lcom/google/android/gms/internal/auth/s1;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/a2;->N1()Lcom/google/android/gms/internal/auth/d2;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/i2;->g(Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/d2;)Lcom/google/android/gms/internal/auth/i2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->a()Lcom/google/android/gms/internal/auth/F2;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/auth/u1;->a()Lcom/google/android/gms/internal/auth/s1;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/a2;->N1()Lcom/google/android/gms/internal/auth/d2;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/i2;->g(Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/d2;)Lcom/google/android/gms/internal/auth/i2;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/V1;->b(Lcom/google/android/gms/internal/auth/a2;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/auth/k2;->b()Lcom/google/android/gms/internal/auth/j2;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/auth/R1;->d()Lcom/google/android/gms/internal/auth/R1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->b()Lcom/google/android/gms/internal/auth/F2;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/auth/u1;->b()Lcom/google/android/gms/internal/auth/s1;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/auth/Z1;->b()Lcom/google/android/gms/internal/auth/Y1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/h2;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/a2;Lcom/google/android/gms/internal/auth/j2;Lcom/google/android/gms/internal/auth/R1;Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/Y1;)Lcom/google/android/gms/internal/auth/h2;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/auth/k2;->b()Lcom/google/android/gms/internal/auth/j2;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/auth/R1;->d()Lcom/google/android/gms/internal/auth/R1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->b()Lcom/google/android/gms/internal/auth/F2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/auth/Z1;->b()Lcom/google/android/gms/internal/auth/Y1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/h2;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/a2;Lcom/google/android/gms/internal/auth/j2;Lcom/google/android/gms/internal/auth/R1;Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/Y1;)Lcom/google/android/gms/internal/auth/h2;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/V1;->b(Lcom/google/android/gms/internal/auth/a2;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/auth/k2;->a()Lcom/google/android/gms/internal/auth/j2;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/auth/R1;->c()Lcom/google/android/gms/internal/auth/R1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->a()Lcom/google/android/gms/internal/auth/F2;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/auth/u1;->a()Lcom/google/android/gms/internal/auth/s1;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/auth/Z1;->a()Lcom/google/android/gms/internal/auth/Y1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/h2;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/a2;Lcom/google/android/gms/internal/auth/j2;Lcom/google/android/gms/internal/auth/R1;Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/Y1;)Lcom/google/android/gms/internal/auth/h2;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/auth/k2;->a()Lcom/google/android/gms/internal/auth/j2;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/auth/R1;->c()Lcom/google/android/gms/internal/auth/R1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/auth/r2;->a()Lcom/google/android/gms/internal/auth/F2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/auth/Z1;->a()Lcom/google/android/gms/internal/auth/Y1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/h2;->r(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/a2;Lcom/google/android/gms/internal/auth/j2;Lcom/google/android/gms/internal/auth/R1;Lcom/google/android/gms/internal/auth/F2;Lcom/google/android/gms/internal/auth/s1;Lcom/google/android/gms/internal/auth/Y1;)Lcom/google/android/gms/internal/auth/h2;

    move-result-object p1

    :goto_0
    return-object p1
.end method
