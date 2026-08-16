.class public LTd/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/X;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LZd/Q;

.field public final synthetic c:LTd/X;


# direct methods
.method public constructor <init>(LTd/X;)V
    .locals 0

    iput-object p1, p0, LTd/X$a;->c:LTd/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/X;->b:Lke/e;

    invoke-interface {p1}, Lke/e;->iterator()LZd/Q;

    move-result-object p1

    iput-object p1, p0, LTd/X$a;->b:LZd/Q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LTd/X$a;->b:LZd/Q;

    invoke-interface {v0}, LZd/Q;->next()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/X$a;->b:LZd/Q;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/X$a;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/X$a;->b:LZd/Q;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
