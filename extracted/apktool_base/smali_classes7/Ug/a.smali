.class public final synthetic LUg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/a;

.field public final synthetic c:LBb/b;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lorg/ITsMagic/Atlas/a$b;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:I

.field public final synthetic j:Lorg/ITsMagic/Atlas/a$c;


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUg/a;->b:Lorg/ITsMagic/Atlas/a;

    iput-object p2, p0, LUg/a;->c:LBb/b;

    iput-object p3, p0, LUg/a;->d:Ljava/util/List;

    iput-object p4, p0, LUg/a;->e:Ljava/util/List;

    iput-object p5, p0, LUg/a;->f:Lorg/ITsMagic/Atlas/a$b;

    iput p6, p0, LUg/a;->g:I

    iput-object p7, p0, LUg/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p8, p0, LUg/a;->i:I

    iput-object p9, p0, LUg/a;->j:Lorg/ITsMagic/Atlas/a$c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, LUg/a;->b:Lorg/ITsMagic/Atlas/a;

    iget-object v1, p0, LUg/a;->c:LBb/b;

    iget-object v2, p0, LUg/a;->d:Ljava/util/List;

    iget-object v3, p0, LUg/a;->e:Ljava/util/List;

    iget-object v4, p0, LUg/a;->f:Lorg/ITsMagic/Atlas/a$b;

    iget v5, p0, LUg/a;->g:I

    iget-object v6, p0, LUg/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v7, p0, LUg/a;->i:I

    iget-object v8, p0, LUg/a;->j:Lorg/ITsMagic/Atlas/a$c;

    invoke-static/range {v0 .. v8}, Lorg/ITsMagic/Atlas/a;->c(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
