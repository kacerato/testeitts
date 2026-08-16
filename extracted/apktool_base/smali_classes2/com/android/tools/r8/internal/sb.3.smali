.class public abstract Lcom/android/tools/r8/internal/sb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/sb;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/sb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    iput p1, p0, Lcom/android/tools/r8/internal/sb;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/lb;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/lb;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/lb;-><init>(II)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    return-object v0
.end method

.method public a(I)Lcom/android/tools/r8/internal/ob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/lb;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/android/tools/r8/internal/ob;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/android/tools/r8/internal/ob;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb;->c()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result v0

    return v0
.end method
