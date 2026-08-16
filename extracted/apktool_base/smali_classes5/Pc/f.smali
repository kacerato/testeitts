.class public final synthetic LPc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LPc/p;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LPc/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/f;->a:LPc/p;

    iput-object p2, p0, LPc/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, LPc/f;->a:LPc/p;

    iget-object v1, p0, LPc/f;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, LPc/n;->a(LPc/p;Ljava/util/List;I)V

    return-void
.end method
