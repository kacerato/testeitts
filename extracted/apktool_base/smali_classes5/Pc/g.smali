.class public final synthetic LPc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LPc/n;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:[Ljava/lang/Object;

.field public final synthetic e:LPc/p;


# direct methods
.method public synthetic constructor <init>(LPc/n;ILjava/util/List;[Ljava/lang/Object;LPc/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/g;->a:LPc/n;

    iput p2, p0, LPc/g;->b:I

    iput-object p3, p0, LPc/g;->c:Ljava/util/List;

    iput-object p4, p0, LPc/g;->d:[Ljava/lang/Object;

    iput-object p5, p0, LPc/g;->e:LPc/p;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, LPc/g;->a:LPc/n;

    iget v1, p0, LPc/g;->b:I

    iget-object v2, p0, LPc/g;->c:Ljava/util/List;

    iget-object v3, p0, LPc/g;->d:[Ljava/lang/Object;

    iget-object v4, p0, LPc/g;->e:LPc/p;

    move v5, p1

    invoke-static/range {v0 .. v5}, LPc/n;->h(LPc/n;ILjava/util/List;[Ljava/lang/Object;LPc/p;I)V

    return-void
.end method
