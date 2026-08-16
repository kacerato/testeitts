.class public abstract Lcom/android/tools/r8/internal/EC;
.super Lcom/android/tools/r8/internal/XB;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/LY;


# static fields
.field public static final synthetic e:I


# instance fields
.field public transient c:Lcom/android/tools/r8/internal/hC;

.field public transient d:Lcom/android/tools/r8/internal/JC;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/XB;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/MY;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, p1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/EC;->c:Lcom/android/tools/r8/internal/hC;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/EC;->c:Lcom/android/tools/r8/internal/hC;

    :cond_0
    return-object v0
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/QY;->a(Lcom/android/tools/r8/internal/LY;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract h()Lcom/android/tools/r8/internal/QC;
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EC;->d:Lcom/android/tools/r8/internal/JC;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/DC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/DC;-><init>(Lcom/android/tools/r8/internal/EC;)V

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/EC;->d:Lcom/android/tools/r8/internal/JC;

    :cond_1
    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/AC;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/AC;-><init>(Lcom/android/tools/r8/internal/Av0;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/AC;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/AC;-><init>(Lcom/android/tools/r8/internal/Av0;)V

    return-object v1
.end method

.method public abstract j(I)Lcom/android/tools/r8/internal/MY;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EC;->h()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method
