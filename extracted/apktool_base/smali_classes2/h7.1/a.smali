.class public final synthetic Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh7/b;

.field public final synthetic c:Lj7/b;


# direct methods
.method public synthetic constructor <init>(Lh7/b;Lj7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/a;->b:Lh7/b;

    iput-object p2, p0, Lh7/a;->c:Lj7/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh7/a;->b:Lh7/b;

    iget-object v1, p0, Lh7/a;->c:Lj7/b;

    invoke-static {v0, v1}, Lh7/b;->a(Lh7/b;Lj7/b;)V

    return-void
.end method
