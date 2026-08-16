.class public Lcom/google/common/collect/d0$b$a;
.super Lcom/google/common/collect/W1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d0$b;->b(I)Lcom/google/common/collect/V1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/d0$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d0$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d0$b$a;->c:Lcom/google/common/collect/d0$b;

    iput p2, p0, Lcom/google/common/collect/d0$b$a;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/W1$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d0$b$a;->c:Lcom/google/common/collect/d0$b;

    iget-object v0, v0, Lcom/google/common/collect/d0$b;->e:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->h(Lcom/google/common/collect/d0;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/d0$b$a;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/d0$b$a;->c:Lcom/google/common/collect/d0$b;

    iget-object v0, v0, Lcom/google/common/collect/d0$b;->e:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->i(Lcom/google/common/collect/d0;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/d0$b$a;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/d0$b$a;->a()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
