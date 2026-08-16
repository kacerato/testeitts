.class public abstract Lcom/android/tools/r8/androidapi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/androidapi/a$a;
    }
.end annotation


# instance fields
.field public final a:[Lcom/android/tools/r8/androidapi/f$a;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/C2;->P:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/android/tools/r8/androidapi/f$a;

    iput-object v0, p0, Lcom/android/tools/r8/androidapi/a;->a:[Lcom/android/tools/r8/androidapi/f$a;

    invoke-static {}, Lcom/android/tools/r8/internal/C2;->g()[Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/tools/r8/internal/C2;->M:Lcom/android/tools/r8/internal/C2;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/tools/r8/internal/C2;->N:Lcom/android/tools/r8/internal/C2;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/tools/r8/androidapi/a;->a:[Lcom/android/tools/r8/androidapi/f$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v5

    new-instance v6, Lcom/android/tools/r8/androidapi/f$a;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/androidapi/f$a;-><init>(Lcom/android/tools/r8/internal/C2;)V

    aput-object v6, v4, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/androidapi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/androidapi/a;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    .line 10
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/tools/r8/androidapi/a$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/androidapi/a$a;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0

    .line 12
    :cond_0
    new-instance p0, Lcom/android/tools/r8/androidapi/b;

    invoke-direct {p0}, Lcom/android/tools/r8/androidapi/b;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/androidapi/f$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/C2;->M:Lcom/android/tools/r8/internal/C2;

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 3
    sget-object p1, Lcom/android/tools/r8/androidapi/f$a;->c:Lcom/android/tools/r8/androidapi/f$a;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/C2;->N:Lcom/android/tools/r8/internal/C2;

    if-ne p1, v0, :cond_1

    .line 5
    sget p1, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 6
    sget-object p1, Lcom/android/tools/r8/androidapi/f$a;->d:Lcom/android/tools/r8/androidapi/f$a;

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/a;->a:[Lcom/android/tools/r8/androidapi/f$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/androidapi/f;
    .locals 1

    .line 8
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/androidapi/f;
.end method

.method public a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;
    .locals 2

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->M:Lcom/android/tools/r8/internal/C2;

    if-ne v0, v1, :cond_0

    .line 14
    sget p1, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 15
    sget-object p1, Lcom/android/tools/r8/androidapi/f$a;->c:Lcom/android/tools/r8/androidapi/f$a;

    return-object p1

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/androidapi/f$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/androidapi/f$a;-><init>(Lcom/android/tools/r8/internal/C2;)V

    return-object v0
.end method

.method public abstract a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;
.end method

.method public abstract a()Z
.end method

.method public b()V
    .locals 0

    return-void
.end method
