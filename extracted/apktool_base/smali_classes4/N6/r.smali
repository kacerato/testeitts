.class public final synthetic LN6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldc/d;


# direct methods
.method public synthetic constructor <init>(Ldc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/r;->b:Ldc/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LN6/r;->b:Ldc/d;

    invoke-static {v0}, LN6/v;->d(Ldc/d;)V

    return-void
.end method
