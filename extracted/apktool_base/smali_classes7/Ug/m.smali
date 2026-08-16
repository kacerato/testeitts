.class public final synthetic LUg/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/d$c;

.field public final synthetic c:Lorg/ITsMagic/Atlas/d$a;

.field public final synthetic d:Lorg/ITsMagic/Atlas/d$d;

.field public final synthetic e:Lorg/ITsMagic/Atlas/d$e;

.field public final synthetic f:Lorg/ITsMagic/Atlas/d$f;


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUg/m;->b:Lorg/ITsMagic/Atlas/d$c;

    iput-object p2, p0, LUg/m;->c:Lorg/ITsMagic/Atlas/d$a;

    iput-object p3, p0, LUg/m;->d:Lorg/ITsMagic/Atlas/d$d;

    iput-object p4, p0, LUg/m;->e:Lorg/ITsMagic/Atlas/d$e;

    iput-object p5, p0, LUg/m;->f:Lorg/ITsMagic/Atlas/d$f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LUg/m;->b:Lorg/ITsMagic/Atlas/d$c;

    iget-object v1, p0, LUg/m;->c:Lorg/ITsMagic/Atlas/d$a;

    iget-object v2, p0, LUg/m;->d:Lorg/ITsMagic/Atlas/d$d;

    iget-object v3, p0, LUg/m;->e:Lorg/ITsMagic/Atlas/d$e;

    iget-object v4, p0, LUg/m;->f:Lorg/ITsMagic/Atlas/d$f;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/ITsMagic/Atlas/d;->a(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
