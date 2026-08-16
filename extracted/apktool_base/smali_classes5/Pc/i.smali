.class public final synthetic LPc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LPc/n;

.field public final synthetic b:LPc/p;

.field public final synthetic c:LPc/o;


# direct methods
.method public synthetic constructor <init>(LPc/n;LPc/p;LPc/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/i;->a:LPc/n;

    iput-object p2, p0, LPc/i;->b:LPc/p;

    iput-object p3, p0, LPc/i;->c:LPc/o;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, LPc/i;->a:LPc/n;

    iget-object v1, p0, LPc/i;->b:LPc/p;

    iget-object v2, p0, LPc/i;->c:LPc/o;

    invoke-static {v0, v1, v2, p1}, LPc/n;->e(LPc/n;LPc/p;LPc/o;I)V

    return-void
.end method
