.class public Lcom/android/tools/r8/internal/Mk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mk0;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 6
    const-string v0, "(...)"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Mk0;->b:Z

    if-nez v0, :cond_1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    const-string v1, "(...)"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 4
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/android/tools/r8/internal/Mk0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 2
    const-string v0, "**"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public c()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public e()Lcom/android/tools/r8/internal/Mk0;
    .locals 1

    const-string v0, "***"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Mk0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/Mk0;

    move-result-object v0

    return-object v0
.end method
