.class public final synthetic Lb3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/installations/a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/i;->b:Lcom/google/firebase/installations/a;

    iput-boolean p2, p0, Lb3/i;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb3/i;->b:Lcom/google/firebase/installations/a;

    iget-boolean v1, p0, Lb3/i;->c:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/a;->d(Lcom/google/firebase/installations/a;Z)V

    return-void
.end method
