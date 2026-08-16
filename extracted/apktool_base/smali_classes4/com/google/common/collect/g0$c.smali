.class public final Lcom/google/common/collect/g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/common/collect/g0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g0;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/g0;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/g0$c;->c:Lcom/google/common/collect/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/g0$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g0$c;->c:Lcom/google/common/collect/g0;

    iget-object v1, p0, Lcom/google/common/collect/g0$c;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/g0;->l(Lcom/google/common/collect/g0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
