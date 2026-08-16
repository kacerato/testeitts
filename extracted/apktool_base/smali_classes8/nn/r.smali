.class public final synthetic Lnn/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/I;


# instance fields
.field public final synthetic a:Ljn/A;

.field public final synthetic b:[F

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:F

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn/r;->a:Ljn/A;

    iput-object p2, p0, Lnn/r;->b:[F

    iput-object p3, p0, Lnn/r;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, Lnn/r;->d:F

    iput-object p5, p0, Lnn/r;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljn/s;Ljn/G;J)V
    .locals 9

    iget-object v0, p0, Lnn/r;->a:Ljn/A;

    iget-object v1, p0, Lnn/r;->b:[F

    iget-object v2, p0, Lnn/r;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lnn/r;->d:F

    iget-object v4, p0, Lnn/r;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lnn/t;->d(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;Ljn/s;Ljn/G;J)V

    return-void
.end method
