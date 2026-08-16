.class public Lcom/android/tools/r8/graph/G$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/graph/j0;

.field public final c:Lcom/android/tools/r8/internal/ka;

.field public d:Lcom/android/tools/r8/internal/ka;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/ka;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/graph/G$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/tools/r8/graph/G$a;->a:I

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    .line 8
    iput-object p3, p0, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    .line 9
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/graph/G$a;->a(Lcom/android/tools/r8/internal/ka;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O;Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/w7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/w7;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/x7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/x7;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/y7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/y7;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v0, p0, p0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    .line 12
    new-instance p1, Lcom/android/tools/r8/graph/z7;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/z7;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/G$a;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/A7;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/A7;-><init>(Lcom/android/tools/r8/graph/O;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/tools/r8/internal/ka;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/G$a;->d:Lcom/android/tools/r8/internal/ka;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ka;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/G$a;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/G$a;->d:Lcom/android/tools/r8/internal/ka;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/G$a;->d:Lcom/android/tools/r8/internal/ka;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/G$a;->a:I

    return v0
.end method

.method public c()Lcom/android/tools/r8/graph/j0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/ka;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/G$a;->c:Lcom/android/tools/r8/internal/ka;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/G$a;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/G$a;->b:Lcom/android/tools/r8/graph/j0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " => "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
