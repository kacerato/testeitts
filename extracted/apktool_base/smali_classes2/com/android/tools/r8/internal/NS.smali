.class public final Lcom/android/tools/r8/internal/NS;
.super Lcom/android/tools/r8/internal/KS;
.source "SourceFile"


# instance fields
.field public final b:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/KS;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NS;->b:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final R()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NS;->b:[Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/internal/NS;

    iget-object p1, p1, Lcom/android/tools/r8/internal/NS;->b:[Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NS;->b:[Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Ljava/util/List;)V

    return-void
.end method
