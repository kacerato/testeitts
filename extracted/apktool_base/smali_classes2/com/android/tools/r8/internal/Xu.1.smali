.class public final Lcom/android/tools/r8/internal/Xu;
.super Lcom/android/tools/r8/internal/Wu;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Wu;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Xu;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Wu;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/Xu;->b:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/Xu;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xu;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/internal/Xu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Xu;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method
