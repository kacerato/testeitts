.class public final Lnf/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnf/n;->j(LMf/q;Lyf/f;)Lyf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n180#2,6:162\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n180#2,6:162\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lyf/j;

.field public final synthetic c:Lnf/n;

.field public final synthetic d:LMf/q;

.field public final synthetic e:Lyf/f;


# direct methods
.method public constructor <init>(Lyf/j;Lnf/n;LMf/q;Lyf/f;)V
    .locals 0

    iput-object p1, p0, Lnf/n$a;->b:Lyf/j;

    iput-object p2, p0, Lnf/n$a;->c:Lnf/n;

    iput-object p3, p0, Lnf/n$a;->d:LMf/q;

    iput-object p4, p0, Lnf/n$a;->e:Lyf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lyf/j;
    .locals 1

    iget-object v0, p0, Lnf/n$a;->b:Lyf/j;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnf/n$a;->c:Lnf/n;

    iget-object v1, p0, Lnf/n$a;->d:LMf/q;

    invoke-static {v0, v1}, Lnf/n;->g(Lnf/n;LMf/q;)V

    iget-object v0, p0, Lnf/n$a;->c:Lnf/n;

    iget-object v1, p0, Lnf/n$a;->e:Lyf/f;

    invoke-static {v0, v1}, Lnf/n;->f(Lnf/n;Lyf/f;)V

    iget-object v0, p0, Lnf/n$a;->c:Lnf/n;

    invoke-static {v0, p1}, Lnf/n;->h(Lnf/n;Ljava/lang/Object;)V

    return-void
.end method
