.class public abstract Lcom/android/tools/r8/internal/x40;
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

.method public static a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/x40;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/w40;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/w40;-><init>(Lcom/android/tools/r8/internal/mP;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Unexpected attempt to get absent value"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 4
    const-string p1, ""

    return-object p1
.end method

.method public abstract b()Z
.end method
