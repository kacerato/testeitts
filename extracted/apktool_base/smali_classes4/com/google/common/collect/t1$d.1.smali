.class public Lcom/google/common/collect/t1$d;
.super Lcom/google/common/collect/i1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i1$e<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final g:J


# instance fields
.field public final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/i1$e;-><init>(Lcom/google/common/collect/i1;)V

    invoke-virtual {p1}, Lcom/google/common/collect/t1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/t1$d;->f:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)Lcom/google/common/collect/i1$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1$d;->d(I)Lcom/google/common/collect/t1$c;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/google/common/collect/t1$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/t1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/t1$c;

    iget-object v0, p0, Lcom/google/common/collect/t1$d;->f:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lcom/google/common/collect/t1$c;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
