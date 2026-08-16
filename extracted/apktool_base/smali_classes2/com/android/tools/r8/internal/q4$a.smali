.class public Lcom/android/tools/r8/internal/q4$a;
.super Lcom/android/tools/r8/internal/y4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
.implements Lcom/android/tools/r8/internal/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/q4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/y4;",
        "Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;",
        "Lcom/android/tools/r8/internal/p1;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/internal/r4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/y4;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/r4;->a()Lcom/android/tools/r8/internal/r4$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/y4;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/r4;->a()Lcom/android/tools/r8/internal/r4$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/q4$a;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/p1;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4$a;->d()Lcom/android/tools/r8/internal/r4$a;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/p1;)Lcom/android/tools/r8/internal/p1;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/q4$a;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    .line 3
    iget v1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    .line 5
    iget p1, p1, Lcom/android/tools/r8/internal/r4$a;->a:I

    or-int/2addr p1, v1

    .line 6
    iput p1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/p1;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/p1;
    .locals 2

    .line 7
    check-cast p1, Lcom/android/tools/r8/internal/q4$a;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    .line 9
    iget v1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    .line 11
    iget p1, p1, Lcom/android/tools/r8/internal/r4$a;->a:I

    or-int/2addr p1, v1

    .line 12
    iput p1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    if-eq p1, v1, :cond_0

    .line 13
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/p1;
    .locals 2

    .line 14
    check-cast p1, Lcom/android/tools/r8/internal/q4;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p1

    .line 16
    iget v1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 17
    iget p1, p1, Lcom/android/tools/r8/internal/r4;->a:I

    or-int/2addr p1, v1

    .line 18
    iput p1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/internal/r4$a;",
            ">;)",
            "Lcom/android/tools/r8/internal/q4$a;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()Lcom/android/tools/r8/internal/q4;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/q4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/r4$a;->a()Lcom/android/tools/r8/internal/r4;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/q4;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/r4;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/q1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object v0

    return-object v0
.end method

.method public final setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/q4$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->a:Lcom/android/tools/r8/graph/u1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public final setMethodRuleInfo(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    return-object p1
.end method
