.class public Lcom/google/common/collect/K1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/K1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K1$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/K1$f;->a:Lcom/google/common/collect/K1$g;

    iput-object p1, p0, Lcom/google/common/collect/K1$f;->b:Lcom/google/common/collect/K1$g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    iput-object v0, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/common/collect/K1$f;->c:I

    return-void
.end method
