.class public abstract Lcom/android/tools/r8/internal/Ue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/w5;

.field public static final b:Lcom/android/tools/r8/internal/w5;

.field public static final c:Lcom/android/tools/r8/internal/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qY0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ue;->a:Lcom/android/tools/r8/internal/w5;

    new-instance v0, Lcom/android/tools/r8/internal/rY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rY0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ue;->b:Lcom/android/tools/r8/internal/w5;

    new-instance v0, Lcom/android/tools/r8/internal/sY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sY0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ue;->c:Lcom/android/tools/r8/internal/w5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/vb;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l5:Lcom/android/tools/r8/graph/X1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X1;->a:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/vb;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l5:Lcom/android/tools/r8/graph/X1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/vb;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l5:Lcom/android/tools/r8/graph/X1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X1;->c:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0
.end method
