.class public Loh/E$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loh/E;->L()Loh/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Loh/E$c;->d:Loh/E;

    iput p2, p0, Loh/E$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Loh/E$c;->b:I

    return-void
.end method


# virtual methods
.method public c()Loh/B;
    .locals 1

    iget-object v0, p0, Loh/E$c;->d:Loh/E;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Loh/E$c;->d:Loh/E;

    return-object v0
.end method

.method public readObject()Loh/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loh/E$c;->c:I

    iget v1, p0, Loh/E$c;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Loh/E$c;->d:Loh/E;

    iget-object v0, v0, Loh/E;->b:[Loh/g;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loh/E$c;->b:I

    aget-object v0, v0, v1

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_1

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->L()Loh/F;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Loh/G;

    if-eqz v1, :cond_2

    check-cast v0, Loh/G;

    invoke-virtual {v0}, Loh/G;->L()Loh/H;

    move-result-object v0

    :cond_2
    return-object v0
.end method
