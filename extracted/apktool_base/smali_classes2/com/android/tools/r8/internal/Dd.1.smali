.class public final Lcom/android/tools/r8/internal/Dd;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dd;->a:Lcom/android/tools/r8/internal/nJ;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/G1;->i:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dd;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/G1;->j:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dd;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/G1;->k:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dd;->e:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/G1;->l:Lcom/android/tools/r8/graph/A2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dd;->f:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p5, p0, Lcom/android/tools/r8/internal/Dd;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/android/tools/r8/internal/Dd;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/android/tools/r8/internal/Dd;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/android/tools/r8/internal/Dd;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget-object p5, p0, Lcom/android/tools/r8/internal/Dd;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-static {p4, p2, p1, p3, p5}, Lcom/android/tools/r8/internal/au;->a(Lcom/android/tools/r8/internal/VJ;ILcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/nJ;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/Dd;->g:Z

    if-nez p1, :cond_2

    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-ne p1, p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p3
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
