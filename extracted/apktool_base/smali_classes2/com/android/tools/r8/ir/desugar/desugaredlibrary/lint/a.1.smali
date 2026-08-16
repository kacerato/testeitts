.class public abstract Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final g:Lcom/android/tools/r8/internal/C2;

.field static final synthetic h:Z = true


# instance fields
.field final a:Lcom/android/tools/r8/internal/nJ;

.field final b:Lcom/android/tools/r8/internal/vm;

.field final c:Lcom/android/tools/r8/v0;

.field final d:Ljava/util/Collection;

.field final e:Ljava/nio/file/Path;

.field final f:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/C2;->J:Lcom/android/tools/r8/internal/C2;

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->g:Lcom/android/tools/r8/internal/C2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->h:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    new-instance v1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/nJ;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/s4;->a(Z)Lcom/android/tools/r8/internal/s4;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->c:Lcom/android/tools/r8/v0;

    iput-object p5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->f:Ljava/util/Collection;

    if-nez p2, :cond_2

    new-instance p1, Lcom/android/tools/r8/internal/wU;

    new-instance p2, Lcom/android/tools/r8/internal/EU;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    sget p5, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v6, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const-string v2, "unused"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    sget-boolean p5, Lcom/android/tools/r8/internal/CU;->s:Z

    new-instance p5, Lcom/android/tools/r8/internal/BU;

    invoke-direct {p5}, Lcom/android/tools/r8/internal/BU;-><init>()V

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object p5

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p5

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    sget-object v0, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, p5, p1, v1, v0}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)Lcom/android/tools/r8/internal/vm;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->b:Lcom/android/tools/r8/internal/vm;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->d:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->e:Ljava/nio/file/Path;

    return-void
.end method
