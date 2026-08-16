.class public LTd/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/i;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LZd/g;

.field public final synthetic c:LTd/i;


# direct methods
.method public constructor <init>(LTd/i;)V
    .locals 0

    iput-object p1, p0, LTd/i$a;->c:LTd/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/i;->b:Lke/a;

    invoke-interface {p1}, Lke/a;->iterator()LZd/g;

    move-result-object p1

    iput-object p1, p0, LTd/i$a;->b:LZd/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, LTd/i$a;->b:LZd/g;

    invoke-interface {v0}, LZd/g;->next()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/i$a;->b:LZd/g;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/i$a;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/i$a;->b:LZd/g;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
