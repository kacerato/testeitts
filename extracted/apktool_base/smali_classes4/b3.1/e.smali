.class public final synthetic Lb3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field public final synthetic a:LK2/g;


# direct methods
.method public synthetic constructor <init>(LK2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/e;->a:LK2/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb3/e;->a:LK2/g;

    invoke-static {v0}, Lcom/google/firebase/installations/a;->g(LK2/g;)Lf3/b;

    move-result-object v0

    return-object v0
.end method
