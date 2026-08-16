.class public final synthetic LT2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LT2/D;

.field public final synthetic c:La3/b;


# direct methods
.method public synthetic constructor <init>(LT2/D;La3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/q;->b:LT2/D;

    iput-object p2, p0, LT2/q;->c:La3/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LT2/q;->b:LT2/D;

    iget-object v1, p0, LT2/q;->c:La3/b;

    invoke-static {v0, v1}, LT2/s;->m(LT2/D;La3/b;)V

    return-void
.end method
