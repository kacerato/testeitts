.class public final Lcom/android/tools/r8/internal/Df;
.super Lcom/android/tools/r8/internal/Ff;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ff;-><init>(Lcom/android/tools/r8/internal/Ef;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Gf;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Gf;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    .line 4
    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/Gf;-><init>(Lcom/android/tools/r8/internal/Ff;Lcom/android/tools/r8/graph/H2;I)V

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/Df;->d:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/nA;->b()Lcom/android/tools/r8/internal/nA;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/nA;)V

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/nA;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/tools/r8/internal/Ef;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/tools/r8/internal/nA;->b()Lcom/android/tools/r8/internal/nA;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/nA;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/nA;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method
