.class public abstract Lcom/android/tools/r8/internal/o9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gu;
.implements Lcom/android/tools/r8/internal/Gm;
.implements Lcom/android/tools/r8/internal/sm;
.implements Lcom/android/tools/r8/internal/kc0;
.implements Lcom/android/tools/r8/internal/Rw0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o9;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/n9;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/n9;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v2, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/P70;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object p0

    invoke-direct {v2, v1, p0, v0}, Lcom/android/tools/r8/internal/P70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/n9;)V

    return-object v2
.end method


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public b(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    return-void
.end method
