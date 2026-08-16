.class public LB2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x1L


# instance fields
.field public final b:[J

.field public final c:I

.field public final d:LB2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB2/n<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final e:LB2/g$c;


# direct methods
.method public constructor <init>(LB2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB2/g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LB2/g;->a(LB2/g;)LB2/h$c;

    move-result-object v0

    iget-object v0, v0, LB2/h$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, LB2/h$c;->i(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    iput-object v0, p0, LB2/g$b;->b:[J

    invoke-static {p1}, LB2/g;->b(LB2/g;)I

    move-result v0

    iput v0, p0, LB2/g$b;->c:I

    invoke-static {p1}, LB2/g;->c(LB2/g;)LB2/n;

    move-result-object v0

    iput-object v0, p0, LB2/g$b;->d:LB2/n;

    invoke-static {p1}, LB2/g;->d(LB2/g;)LB2/g$c;

    move-result-object p1

    iput-object p1, p0, LB2/g$b;->e:LB2/g$c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    new-instance v6, LB2/g;

    new-instance v1, LB2/h$c;

    iget-object v0, p0, LB2/g$b;->b:[J

    invoke-direct {v1, v0}, LB2/h$c;-><init>([J)V

    iget v2, p0, LB2/g$b;->c:I

    iget-object v3, p0, LB2/g$b;->d:LB2/n;

    iget-object v4, p0, LB2/g$b;->e:LB2/g$c;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LB2/g;-><init>(LB2/h$c;ILB2/n;LB2/g$c;LB2/g$a;)V

    return-object v6
.end method
