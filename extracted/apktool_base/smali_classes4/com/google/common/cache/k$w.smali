.class public Lcom/google/common/cache/k$w;
.super Lcom/google/common/cache/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lcom/google/common/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public volatile e:Lcom/google/common/cache/k$A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/p;)V
    .locals 1
    .param p3    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/cache/k$d;-><init>()V

    invoke-static {}, Lcom/google/common/cache/k;->V()Lcom/google/common/cache/k$A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$w;->e:Lcom/google/common/cache/k$A;

    iput-object p1, p0, Lcom/google/common/cache/k$w;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/cache/k$w;->c:I

    iput-object p3, p0, Lcom/google/common/cache/k$w;->d:Lcom/google/common/cache/p;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/k$A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->e:Lcom/google/common/cache/k$A;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/k$w;->c:I

    return v0
.end method

.method public e(Lcom/google/common/cache/k$A;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$w;->e:Lcom/google/common/cache/k$A;

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$w;->d:Lcom/google/common/cache/p;

    return-object v0
.end method
