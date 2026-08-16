.class public abstract Lcom/android/tools/r8/internal/I50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/FM;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/I50;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/H50;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/H50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Lcom/android/tools/r8/internal/I50;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/E50;

    return v0
.end method
