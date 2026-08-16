.class public abstract Lcom/google/common/collect/C0$a;
.super Lcom/google/common/collect/Q1$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/C0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$s<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/C0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/C0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/C0$a;->b:Lcom/google/common/collect/C0;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/C0$a;->b:Lcom/google/common/collect/C0;

    return-object v0
.end method
