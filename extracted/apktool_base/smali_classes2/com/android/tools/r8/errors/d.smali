.class public final Lcom/android/tools/r8/errors/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/errors/d;->a:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/errors/CheckEnumUnboxedDiagnostic;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/errors/CheckEnumUnboxedDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/errors/d;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/errors/CheckEnumUnboxedDiagnostic;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/android/tools/r8/errors/d;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/errors/d;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enum "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not unboxed."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    :cond_0
    return-object p0
.end method
