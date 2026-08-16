.class public final Lcom/android/tools/r8/internal/hA;
.super Lcom/android/tools/r8/internal/mr0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/hA;->c:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/T9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hA;->c:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    const/16 v4, 0xb6

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/ab;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
