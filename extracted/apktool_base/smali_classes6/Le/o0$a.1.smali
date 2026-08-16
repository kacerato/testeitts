.class public final LLe/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/g<",
        "LLe/o0$c<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "LLe/o0$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "LLe/o0$c<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/o0$a;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(LLe/o0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/o0$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/o0$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LLe/o0$c;

    invoke-virtual {p0, p1}, LLe/o0$a;->a(LLe/o0$c;)V

    return-void
.end method
