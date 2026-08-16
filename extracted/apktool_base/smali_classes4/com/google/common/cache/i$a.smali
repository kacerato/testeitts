.class public abstract Lcom/google/common/cache/i$a;
.super Lcom/google/common/cache/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/i<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/cache/i;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/j;

    iput-object p1, p0, Lcom/google/common/cache/i$a;->b:Lcom/google/common/cache/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/i$a;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Lcom/google/common/cache/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/i$a;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    return-object v0
.end method

.method public final o0()Lcom/google/common/cache/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/i$a;->b:Lcom/google/common/cache/j;

    return-object v0
.end method
