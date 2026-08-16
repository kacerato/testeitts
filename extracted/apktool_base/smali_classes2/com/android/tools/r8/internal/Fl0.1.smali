.class public final Lcom/android/tools/r8/internal/Fl0;
.super Lcom/android/tools/r8/internal/e0;
.source "SourceFile"


# instance fields
.field public d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/Gl0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Gl0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fl0;->e:Lcom/android/tools/r8/internal/Gl0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/e0;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Fl0;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fl0;->e:Lcom/android/tools/r8/internal/Gl0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gl0;->b:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/tools/r8/internal/Fl0;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/Fl0;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/e0;->b:I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fl0;->e:Lcom/android/tools/r8/internal/Gl0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gl0;->c:Lcom/android/tools/r8/internal/Hl0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/Fl0;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
