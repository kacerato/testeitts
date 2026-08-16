.class public final synthetic LPc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LPc/n;

.field public final synthetic b:LPc/p;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LPc/n;LPc/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/k;->a:LPc/n;

    iput-object p2, p0, LPc/k;->b:LPc/p;

    iput-object p3, p0, LPc/k;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, LPc/k;->a:LPc/n;

    iget-object v1, p0, LPc/k;->b:LPc/p;

    iget-object v2, p0, LPc/k;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, LPc/n;->d(LPc/n;LPc/p;Ljava/util/List;I)V

    return-void
.end method
