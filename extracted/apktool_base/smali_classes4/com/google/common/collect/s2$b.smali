.class public final Lcom/google/common/collect/s2$b;
.super Lcom/google/common/collect/A1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/A1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/s2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/s2$b;->g:Lcom/google/common/collect/s2;

    invoke-direct {p0}, Lcom/google/common/collect/A1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/s2;Lcom/google/common/collect/s2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/s2$b;-><init>(Lcom/google/common/collect/s2;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/s2$b;->g:Lcom/google/common/collect/s2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2$b;->g:Lcom/google/common/collect/s2;

    iget-object v0, v0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/s2$b;->g:Lcom/google/common/collect/s2;

    iget-object v0, v0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    return v0
.end method
