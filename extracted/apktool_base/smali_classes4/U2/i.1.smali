.class public final synthetic LU2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:LU2/p$b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/i;->b:Ljava/lang/Runnable;

    iput-object p2, p0, LU2/i;->c:LU2/p$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU2/i;->b:Ljava/lang/Runnable;

    iget-object v1, p0, LU2/i;->c:LU2/p$b;

    invoke-static {v0, v1}, LU2/o;->k(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method
