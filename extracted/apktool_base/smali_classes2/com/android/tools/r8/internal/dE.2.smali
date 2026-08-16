.class public final Lcom/android/tools/r8/internal/dE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/graph/O2;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Lcom/android/tools/r8/graph/A2;

.field public f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dE;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/dE;->d:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/dE;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/u81;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/u81;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    iget-object v0, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_2

    array-length p2, p1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/dE;->b:Lcom/android/tools/r8/graph/O2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method
