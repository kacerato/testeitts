.class public final synthetic LUg/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/d$c;

.field public final synthetic c:Lorg/ITsMagic/Atlas/d$a;

.field public final synthetic d:Lorg/ITsMagic/Atlas/d$d;

.field public final synthetic e:Lorg/ITsMagic/Atlas/d$e;

.field public final synthetic f:LBb/b;

.field public final synthetic g:Lorg/ITsMagic/Atlas/d$f;

.field public final synthetic h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic i:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic j:I

.field public final synthetic k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUg/l;->b:Lorg/ITsMagic/Atlas/d$c;

    iput-object p2, p0, LUg/l;->c:Lorg/ITsMagic/Atlas/d$a;

    iput-object p3, p0, LUg/l;->d:Lorg/ITsMagic/Atlas/d$d;

    iput-object p4, p0, LUg/l;->e:Lorg/ITsMagic/Atlas/d$e;

    iput-object p5, p0, LUg/l;->f:LBb/b;

    iput-object p6, p0, LUg/l;->g:Lorg/ITsMagic/Atlas/d$f;

    iput-object p7, p0, LUg/l;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, LUg/l;->i:Lorg/ITsMagic/Atlas/a$c;

    iput p9, p0, LUg/l;->j:I

    iput-object p10, p0, LUg/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p11, p0, LUg/l;->l:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LUg/l;->b:Lorg/ITsMagic/Atlas/d$c;

    iget-object v1, p0, LUg/l;->c:Lorg/ITsMagic/Atlas/d$a;

    iget-object v2, p0, LUg/l;->d:Lorg/ITsMagic/Atlas/d$d;

    iget-object v3, p0, LUg/l;->e:Lorg/ITsMagic/Atlas/d$e;

    iget-object v4, p0, LUg/l;->f:LBb/b;

    iget-object v5, p0, LUg/l;->g:Lorg/ITsMagic/Atlas/d$f;

    iget-object v6, p0, LUg/l;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v7, p0, LUg/l;->i:Lorg/ITsMagic/Atlas/a$c;

    iget v8, p0, LUg/l;->j:I

    iget-object v9, p0, LUg/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v10, p0, LUg/l;->l:I

    invoke-static/range {v0 .. v10}, Lorg/ITsMagic/Atlas/d;->b(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
