.class public LTd/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTd/s;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LZd/p;

.field public final synthetic c:LTd/s;


# direct methods
.method public constructor <init>(LTd/s;)V
    .locals 0

    iput-object p1, p0, LTd/s$a;->c:LTd/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LTd/s;->b:Lke/b;

    invoke-interface {p1}, Lke/b;->iterator()LZd/p;

    move-result-object p1

    iput-object p1, p0, LTd/s$a;->b:LZd/p;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, LTd/s$a;->b:LZd/p;

    invoke-interface {v0}, LZd/p;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LTd/s$a;->b:LZd/p;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LTd/s$a;->a()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, LTd/s$a;->b:LZd/p;

    invoke-interface {v0}, LZd/V;->remove()V

    return-void
.end method
