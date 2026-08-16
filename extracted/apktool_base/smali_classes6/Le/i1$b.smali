.class public final LLe/i1$b;
.super LLe/i1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/i1$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:J = -0x2a0bdab9530de829L


# direct methods
.method public constructor <init>(Lhn/c;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "Lhn/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LLe/i1$c;-><init>(Lhn/c;Lhn/b;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, LLe/i1$c;->d()V

    return-void
.end method
