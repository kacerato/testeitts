.class public Lcom/android/tools/r8/internal/fr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fr0;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/Cs;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/er0;

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/fr0;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Cs;->P()[I

    move-result-object v0

    .line 11
    array-length v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 12
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 13
    iget v4, v1, Lcom/android/tools/r8/internal/er0;->a:I

    aget v5, v0, v3

    add-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iput-object v2, v1, Lcom/android/tools/r8/internal/er0;->b:[I

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Cs;->O()[I

    move-result-object p1

    iput-object p1, v1, Lcom/android/tools/r8/internal/er0;->c:[I

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Np;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result p1

    add-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/er0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/er0;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/fr0;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/fr0;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Cs;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fr0;->a(Lcom/android/tools/r8/internal/Cs;)V

    :cond_0
    return-void
.end method

.method public a(I)[I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/er0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/er0;->b:[I

    return-object p1
.end method

.method public b(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fr0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/er0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/er0;->c:[I

    return-object p1
.end method
