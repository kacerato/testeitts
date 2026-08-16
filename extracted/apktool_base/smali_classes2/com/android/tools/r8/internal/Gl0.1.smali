.class public final Lcom/android/tools/r8/internal/Gl0;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/BitSet;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hl0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Hl0;Ljava/util/BitSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gl0;->c:Lcom/android/tools/r8/internal/Hl0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gl0;->b:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gl0;->c:Lcom/android/tools/r8/internal/Hl0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gl0;->b:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Fl0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Fl0;-><init>(Lcom/android/tools/r8/internal/Gl0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gl0;->c:Lcom/android/tools/r8/internal/Hl0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    iget v0, v0, Lcom/android/tools/r8/internal/Il0;->b:I

    return v0
.end method
