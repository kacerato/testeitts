.class public final synthetic Lb3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/installations/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/h;->b:Lcom/google/firebase/installations/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb3/h;->b:Lcom/google/firebase/installations/a;

    invoke-static {v0}, Lcom/google/firebase/installations/a;->c(Lcom/google/firebase/installations/a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
