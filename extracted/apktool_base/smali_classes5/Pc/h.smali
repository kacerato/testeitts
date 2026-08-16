.class public final synthetic LPc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:[Ljava/lang/Object;

.field public final synthetic f:LPc/p;


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;[Ljava/lang/Object;LPc/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LPc/h;->b:I

    iput p2, p0, LPc/h;->c:I

    iput-object p3, p0, LPc/h;->d:Ljava/util/List;

    iput-object p4, p0, LPc/h;->e:[Ljava/lang/Object;

    iput-object p5, p0, LPc/h;->f:LPc/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LPc/h;->b:I

    iget v1, p0, LPc/h;->c:I

    iget-object v2, p0, LPc/h;->d:Ljava/util/List;

    iget-object v3, p0, LPc/h;->e:[Ljava/lang/Object;

    iget-object v4, p0, LPc/h;->f:LPc/p;

    invoke-static {v0, v1, v2, v3, v4}, LPc/n;->l(IILjava/util/List;[Ljava/lang/Object;LPc/p;)V

    return-void
.end method
