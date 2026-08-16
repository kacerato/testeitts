.class public LTd/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/h0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LZd/b0;

.field public final synthetic c:LTd/h0;


# direct methods
.method public constructor <init>(LTd/h0;)V
    .locals 0

    iput-object p1, p0, LTd/h0$a;->c:LTd/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/h0;->b:Lke/f;

    invoke-interface {p1}, Lke/f;->iterator()LZd/b0;

    move-result-object p1

    iput-object p1, p0, LTd/h0$a;->b:LZd/b0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, LTd/h0$a;->b:LZd/b0;

    invoke-interface {v0}, LZd/b0;->next()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/h0$a;->b:LZd/b0;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/h0$a;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/h0$a;->b:LZd/b0;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
