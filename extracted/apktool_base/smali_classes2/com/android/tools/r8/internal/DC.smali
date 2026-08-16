.class public final Lcom/android/tools/r8/internal/DC;
.super Lcom/android/tools/r8/internal/nD;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/internal/EC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/EC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nD;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/MY;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/EC;->j(I)Lcom/android/tools/r8/internal/MY;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EC;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DC;->e:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EC;->h()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
