.class public final synthetic LPc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LPc/n;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:LPc/p;


# direct methods
.method public synthetic constructor <init>(LPc/n;IILjava/util/List;LPc/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/a;->b:LPc/n;

    iput p2, p0, LPc/a;->c:I

    iput p3, p0, LPc/a;->d:I

    iput-object p4, p0, LPc/a;->e:Ljava/util/List;

    iput-object p5, p0, LPc/a;->f:LPc/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LPc/a;->b:LPc/n;

    iget v1, p0, LPc/a;->c:I

    iget v2, p0, LPc/a;->d:I

    iget-object v3, p0, LPc/a;->e:Ljava/util/List;

    iget-object v4, p0, LPc/a;->f:LPc/p;

    invoke-static {v0, v1, v2, v3, v4}, LPc/n;->c(LPc/n;IILjava/util/List;LPc/p;)V

    return-void
.end method
