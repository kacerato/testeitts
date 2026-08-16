.class public Lcom/android/tools/r8/internal/G9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/G9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/jG;

.field public b:Ljava/util/Deque;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    sget-object v1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    iput-object v1, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    iput-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/G9$a;->c:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/G9$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(ILcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;
    .locals 2

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/G9$a;->d:Z

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/G9$a;->e:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    sget-object v1, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    sget-object v1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    if-ne v0, v1, :cond_2

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/zF;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zF;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    check-cast v0, Lcom/android/tools/r8/internal/zF;

    .line 18
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/I9;->a(ILcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/zF;)V

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/G9$a;->b()V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/G9$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/G9$a;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v1

    if-nez v0, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    sget-object v2, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    sget-object v2, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    if-ne v0, v2, :cond_4

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/zF;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zF;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    check-cast v0, Lcom/android/tools/r8/internal/zF;

    .line 9
    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/I9;->a(ILcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/zF;)V

    return-object p0
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/G9$a;
    .locals 0

    .line 10
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/G9;
    .locals 3

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/G9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/G9$a;->a:Lcom/android/tools/r8/internal/jG;

    iget-object v2, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/G9$a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    sget-object v1, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    sget-object v1, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G9$a;->b:Ljava/util/Deque;

    :cond_0
    return-void
.end method
