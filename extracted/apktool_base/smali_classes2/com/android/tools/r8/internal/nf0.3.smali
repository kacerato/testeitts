.class public final Lcom/android/tools/r8/internal/nf0;
.super Lcom/android/tools/r8/internal/bt0;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/internal/eA;

.field public final g:Lcom/android/tools/r8/internal/tf0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eA;Lcom/android/tools/r8/internal/tf0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/nf0;->f:Lcom/android/tools/r8/internal/eA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/nf0;->g:Lcom/android/tools/r8/internal/tf0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bt0;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nf0;->g:Lcom/android/tools/r8/internal/tf0;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/tf0;->c:Lcom/android/tools/r8/internal/r6;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/nf0;->g:Lcom/android/tools/r8/internal/tf0;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/tf0;->a:Lcom/android/tools/r8/internal/r6;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nf0;->g:Lcom/android/tools/r8/internal/tf0;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/tf0;->b:Lcom/android/tools/r8/internal/r6;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nf0;->f:Lcom/android/tools/r8/internal/eA;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method
