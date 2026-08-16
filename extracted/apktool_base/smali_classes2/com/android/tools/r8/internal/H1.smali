.class public final Lcom/android/tools/r8/internal/H1;
.super Lcom/android/tools/r8/internal/K1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/K1;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/H1;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
