.class public final synthetic LU2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LU2/o;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:LU2/p$b;


# direct methods
.method public synthetic constructor <init>(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/g;->b:LU2/o;

    iput-object p2, p0, LU2/g;->c:Ljava/lang/Runnable;

    iput-object p3, p0, LU2/g;->d:LU2/p$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LU2/g;->b:LU2/o;

    iget-object v1, p0, LU2/g;->c:Ljava/lang/Runnable;

    iget-object v2, p0, LU2/g;->d:LU2/p$b;

    invoke-static {v0, v1, v2}, LU2/o;->j(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method
