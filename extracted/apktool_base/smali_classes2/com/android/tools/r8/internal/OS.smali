.class public final Lcom/android/tools/r8/internal/OS;
.super Lcom/android/tools/r8/internal/KS;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:[I

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/KS;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/OS;->d:Z

    if-nez v0, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/OS;->b:[I

    iput-object p2, p0, Lcom/android/tools/r8/internal/OS;->c:[I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/JP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JP0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/KP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KP0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/OS;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/OS;->b:[I

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/OS;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/OS;->c:[I

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/OS;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/IP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IP0;-><init>()V

    return-object v0
.end method
