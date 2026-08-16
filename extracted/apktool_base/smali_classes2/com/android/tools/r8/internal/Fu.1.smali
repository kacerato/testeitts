.class public final Lcom/android/tools/r8/internal/Fu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Lcom/android/tools/r8/internal/qU;

.field public final c:Ljava/util/Set;

.field public final d:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Fu;->c:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    sget-boolean v0, Lcom/android/tools/r8/internal/Fu;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/Fu;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    invoke-static {p4}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fu;->b:Lcom/android/tools/r8/internal/qU;

    return-void
.end method
