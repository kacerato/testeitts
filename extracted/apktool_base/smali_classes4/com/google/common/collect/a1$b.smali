.class public Lcom/google/common/collect/a1$b;
.super Lcom/google/common/collect/i1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field public static final f:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a1<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/i1$e;-><init>(Lcom/google/common/collect/i1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)Lcom/google/common/collect/i1$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$b;->d(I)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/google/common/collect/a1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a1$a;

    invoke-direct {v0, p1}, Lcom/google/common/collect/a1$a;-><init>(I)V

    return-object v0
.end method
