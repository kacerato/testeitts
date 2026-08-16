.class public LTd/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/M;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LZd/H;

.field public final synthetic c:LTd/M;


# direct methods
.method public constructor <init>(LTd/M;)V
    .locals 0

    iput-object p1, p0, LTd/M$a;->c:LTd/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/M;->b:Lke/d;

    invoke-interface {p1}, Lke/d;->iterator()LZd/H;

    move-result-object p1

    iput-object p1, p0, LTd/M$a;->b:LZd/H;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LTd/M$a;->b:LZd/H;

    invoke-interface {v0}, LZd/H;->next()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/M$a;->b:LZd/H;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/M$a;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/M$a;->b:LZd/H;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
