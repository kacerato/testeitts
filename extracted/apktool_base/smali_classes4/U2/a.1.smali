.class public final synthetic LU2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LU2/b;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LU2/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/a;->b:LU2/b;

    iput-object p2, p0, LU2/a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU2/a;->b:LU2/b;

    iget-object v1, p0, LU2/a;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, LU2/b;->a(LU2/b;Ljava/lang/Runnable;)V

    return-void
.end method
