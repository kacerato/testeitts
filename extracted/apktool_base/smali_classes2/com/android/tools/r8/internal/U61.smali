.class public final synthetic Lcom/android/tools/r8/internal/U61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/U61;->b:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U61;->b:Ljava/util/Deque;

    check-cast p1, Lcom/android/tools/r8/internal/Jx;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
