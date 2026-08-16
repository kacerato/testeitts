.class public Lcom/google/firebase/installations/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/installations/a;->b(Lc3/a;)Lc3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc3/a;

.field public final synthetic b:Lcom/google/firebase/installations/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/a;Lc3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/installations/a$b;->b:Lcom/google/firebase/installations/a;

    iput-object p2, p0, Lcom/google/firebase/installations/a$b;->a:Lc3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/installations/a$b;->b:Lcom/google/firebase/installations/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a$b;->b:Lcom/google/firebase/installations/a;

    invoke-static {v1}, Lcom/google/firebase/installations/a;->h(Lcom/google/firebase/installations/a;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/installations/a$b;->a:Lc3/a;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
