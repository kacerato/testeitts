.class public final synthetic LPc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:LPc/p;


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;LPc/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LPc/e;->b:I

    iput p2, p0, LPc/e;->c:I

    iput-object p3, p0, LPc/e;->d:Ljava/util/List;

    iput-object p4, p0, LPc/e;->e:LPc/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LPc/e;->b:I

    iget v1, p0, LPc/e;->c:I

    iget-object v2, p0, LPc/e;->d:Ljava/util/List;

    iget-object v3, p0, LPc/e;->e:LPc/p;

    invoke-static {v0, v1, v2, v3}, LPc/n;->m(IILjava/util/List;LPc/p;)V

    return-void
.end method
