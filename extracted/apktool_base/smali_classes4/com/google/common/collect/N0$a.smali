.class public abstract Lcom/google/common/collect/N0$a;
.super Lcom/google/common/collect/V;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/V<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/N0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/N0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/N0$a;->e:Lcom/google/common/collect/N0;

    invoke-direct {p0}, Lcom/google/common/collect/V;-><init>()V

    return-void
.end method


# virtual methods
.method public Q0()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/N0$a;->e:Lcom/google/common/collect/N0;

    return-object v0
.end method
