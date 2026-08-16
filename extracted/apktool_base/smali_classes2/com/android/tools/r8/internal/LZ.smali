.class public final Lcom/android/tools/r8/internal/LZ;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/LZ;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/LZ;->b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/KZ;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/KZ;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/LZ;->b:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/bM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bM0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/KZ;->b:Lcom/android/tools/r8/internal/KZ;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/KZ;->c:Lcom/android/tools/r8/internal/KZ;

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoApiOutlineWithNonApiOutline"

    return-object v0
.end method
