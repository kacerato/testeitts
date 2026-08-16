.class public Lcom/google/common/collect/Q1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q1;->n(Lcom/google/common/collect/Q1$t;Ljava/lang/Object;)Lw2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q1$t;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$t;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$a;->b:Lcom/google/common/collect/Q1$t;

    iput-object p2, p0, Lcom/google/common/collect/Q1$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$a;->b:Lcom/google/common/collect/Q1$t;

    iget-object v1, p0, Lcom/google/common/collect/Q1$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Q1$t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
